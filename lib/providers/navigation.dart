import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Navigation extends ChangeNotifier{
  int currentView = 0;

  void updateView(int index){
    currentView = index;
    notifyListeners();
  }

  int get view{
    return currentView;
  }
}