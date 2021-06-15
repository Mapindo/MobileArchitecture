import 'package:flutter/material.dart';

class SlidingUpNotifier extends ChangeNotifier {
  late double _panelSlide;
  late bool _isShow;

  double get panelSlide => _panelSlide;
  bool get isShow => _isShow;

  void setPanelSlide(double value) {
    _panelSlide = value;
    notifyListeners();
  }

  void setPanelShow(bool value) {
    _isShow = value;
    notifyListeners();
  }

  // void setScrollControllerValue(ScrollController value) {
  //   _currentScrollController = value;
  //   notifyListeners();
  // }
}
