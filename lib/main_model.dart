import 'package:flutter/cupertino.dart';

class MainModel extends ChangeNotifier{
  String mainWord = '野球情報dayo';

  void changeMainWord(){
    mainWord = '巨人';
    notifyListeners();
  }
}