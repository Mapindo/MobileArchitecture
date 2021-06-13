import 'package:flutter/material.dart';

class DraggableControllerNotifier extends ChangeNotifier {
  DraggableScrollableNotification? _currentScroll;

  DraggableScrollableNotification? get currenValue => _currentScroll;

  bool get handleAnimation => _currentScroll != null
      ? _currentScroll!.extent > _currentScroll!.maxExtent - .05
      : false;

  void changeValue(DraggableScrollableNotification value) {
    _currentScroll = value;
    notifyListeners();
  }
}
