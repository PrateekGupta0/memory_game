// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:memory_game/data/data.dart';
import 'package:memory_game/model/tile_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pairs = getPairs();
    pairs.shuffle();
    visiblePairs = pairs;
    selected = true;
    Future.delayed(
      const Duration(seconds: 5),
      () {
        setState(() {
          visiblePairs = getQuestions();
          selected = false;
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 50.0),
        child: Column(
          children: [
            SizedBox(
              height: 40.0,
            ),
            points !=800 ?Column(
              children: [
                Text(
                  "$points/800",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text("points"),
              ],
            ):Container(),
            SizedBox(
              height: 20.0,
            ),
            points != 800 ?GridView(
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                mainAxisSpacing: 0.0,
                maxCrossAxisExtent: 100,
              ),
              children: List.generate(visiblePairs.length, (index) {
                return Tile(
                  imageAssetPath: visiblePairs[index].getImageAssetPath(),

                  parent: this,
                  tileIndex: index,
                );
              }),
            ):Container(
              padding: EdgeInsets.symmetric(vertical: 12,horizontal: 24),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(24),
              ),
              child: Text("Replay"
              ,style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 17,
                  color: Colors.white,
                ),),
            ),
          ],
        ),
      ),
    );
  }
}

class Tile extends StatefulWidget {
  String imageAssetPath;

  int tileIndex;
  _HomePageState parent;
  Tile(
      {required this.imageAssetPath,
      required this.parent,
      required this.tileIndex});

  @override
  State<Tile> createState() => _TileState();
}

class _TileState extends State<Tile> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (!selected) {
          if(selectedImageAssetPath !=""){
              if(selectedImageAssetPath == pairs[widget.tileIndex].getImageAssetPath()){
                //correct
                // print("correct");
                selected=true;
                Future.delayed(const Duration(seconds: 2),(){
                  points=points+100;
                  setState(() {
                  });
                  selected=false;
                  widget.parent.setState(() {
                    pairs[widget.tileIndex].setImageAssetPath("");
                    pairs[selectedTileIndex!].setImageAssetPath("");
                  });
                  selectedImageAssetPath = "";
                });
              }
              else{
                //wrong choice
                // print("wrong");
                selected=true;
                Future.delayed(const Duration(seconds: 2),(){
                  selected=false;
                  widget.parent.setState(() {
                    pairs[widget.tileIndex].setIsSelected(false);
                    pairs[selectedTileIndex!].setIsSelected(false);
                  });
                  selectedImageAssetPath = "";
        });
              }
          }
          else{
            selectedTileIndex =widget.tileIndex;
            selectedImageAssetPath=pairs[widget.tileIndex].getImageAssetPath();
          }
          setState(() {
            pairs[widget.tileIndex].setIsSelected(true);
          });
        }
      },
      child: Container(
        margin: EdgeInsets.all(5.0),
        child: pairs[widget.tileIndex].getImageAssetPath()!=""?Image.asset(pairs[widget.tileIndex].getIsSelected()
            ? pairs[widget.tileIndex].getImageAssetPath()
            : widget.imageAssetPath):Image.asset("assets/correct.png"),
      ),
    );
  }
}
