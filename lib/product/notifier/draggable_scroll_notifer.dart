import 'package:flutter/material.dart';

class DraggableControllerNotifier extends ChangeNotifier {
  DraggableScrollableNotification _currentScroll;

  DraggableScrollableNotification get currenValue => _currentScroll;

  void changeValue(DraggableScrollableNotification value) {
    _currentScroll = value;
    notifyListeners();
  }
}
