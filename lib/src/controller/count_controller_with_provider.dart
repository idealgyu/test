import 'package:flutter/cupertino.dart';

class CountControllerWithProvider extends ChangeNotifier{

  int countt =0;

  void increase(){
    countt++;
    notifyListeners();
  }
}