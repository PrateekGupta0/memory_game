import 'package:memory_game/main.dart';

import '../model/tile_model.dart';

int points=0;
bool selected=false;
String selectedImageAssetPath="";
int? selectedTileIndex;
List<TileModel> pairs = <TileModel>[];
List<TileModel> visiblePairs = <TileModel>[];
List<TileModel> getPairs(){
  List<TileModel> pairs =<TileModel>[];
  TileModel tileModel=TileModel(isSelected: false,imageAssetPath: "");
  //1
  tileModel.setImageAssetPath("assets/fox.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);

  tileModel=TileModel(isSelected: false,imageAssetPath: "");

  //2
  tileModel.setImageAssetPath("assets/hippo.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);

  tileModel=TileModel(isSelected: false,imageAssetPath: "");

  //3
  tileModel.setImageAssetPath("assets/horse.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);

  tileModel=TileModel(isSelected: false,imageAssetPath: "");

  //4
  tileModel.setImageAssetPath("assets/monkey.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);

  tileModel=TileModel(isSelected: false,imageAssetPath: "");

  //5
  tileModel.setImageAssetPath("assets/panda.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);


  tileModel=TileModel(isSelected: false,imageAssetPath: "");

  //6
  tileModel.setImageAssetPath("assets/parrot.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);


  tileModel=TileModel(isSelected: false,imageAssetPath: "");

  //7
  tileModel.setImageAssetPath("assets/rabbit.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);

  tileModel=TileModel(isSelected: false,imageAssetPath: "");

  //8
  tileModel.setImageAssetPath("assets/zoo.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);


  return pairs;
}

List<TileModel> getQuestions() {
  List<TileModel> pairs =<TileModel>[];
  TileModel tileModel=TileModel(isSelected: false,imageAssetPath: "");
  //1
  tileModel.setImageAssetPath("assets/question.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);

  tileModel=TileModel(isSelected: false,imageAssetPath: "");

  //2
  tileModel.setImageAssetPath("assets/question.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);

  tileModel=TileModel(isSelected: false,imageAssetPath: "");

  //3
  tileModel.setImageAssetPath("assets/question.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);

  tileModel=TileModel(isSelected: false,imageAssetPath: "");

  //4
  tileModel.setImageAssetPath("assets/question.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);

  tileModel=TileModel(isSelected: false,imageAssetPath: "");

  //5
  tileModel.setImageAssetPath("assets/question.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);


  tileModel=TileModel(isSelected: false,imageAssetPath: "");

  //6
  tileModel.setImageAssetPath("assets/question.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);


  tileModel=TileModel(isSelected: false,imageAssetPath: "");

  //7
  tileModel.setImageAssetPath("assets/question.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);

  tileModel=TileModel(isSelected: false,imageAssetPath: "");

  //8
  tileModel.setImageAssetPath("assets/question.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);


  return pairs;
}