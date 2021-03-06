import 'package:flutter/material.dart';

class CustomScaffold extends StatelessWidget {
  PreferredSizeWidget? appbar;
  bool bottom_safe_area_value;
  bool top_safe_area_value;
  Widget? widget;
  Widget? fab_button;
  Color? background_color;
  bool? resize_bottom_insets;
  Color? safe_area_background;
  CustomScaffold({
    Key? key,
    this.appbar,
    required this.bottom_safe_area_value,
    required this.top_safe_area_value,
    this.widget,
    this.fab_button,
    this.background_color,
    this.resize_bottom_insets,
    this.safe_area_background
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: safe_area_background,
      child: SafeArea(
        top: top_safe_area_value,
        bottom: bottom_safe_area_value,
        child: Scaffold(
          resizeToAvoidBottomInset: resize_bottom_insets,
          backgroundColor: background_color,
          floatingActionButton: fab_button,
          appBar: appbar,
          body: widget,
        ),
      ),
    );
  }
}
