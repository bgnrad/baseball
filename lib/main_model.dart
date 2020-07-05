import 'package:flutter/cupertino.dart';

class MainModel extends ChangeNotifier{
  String mainWord = '野球情報';

  void changeMainWordSe(){
    mainWord = 'セ・リーグ';
    notifyListeners();
  }
  void changeMainWordPa(){
    mainWord = 'パ・リーグ';
    notifyListeners();

  }
}