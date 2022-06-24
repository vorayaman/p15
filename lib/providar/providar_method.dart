import 'package:flutter/material.dart';

class providar extends ChangeNotifier{
  int a=0;

  void deleat(){
    a;
    notifyListeners();
  }

}