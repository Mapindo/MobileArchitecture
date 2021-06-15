import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class SlidingUpNotifier extends ChangeNotifier {
  late PanelController _currentScroll;

  PanelController get currenValue => _currentScroll;

  void changeValue(PanelController value) {
    _currentScroll = value;
    notifyListeners();
  }
}
