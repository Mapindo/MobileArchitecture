import 'package:flutter/material.dart';
import 'package:fluttermvvmtemplate/product/notifier/draggable_scroll_notifer.dart';
import 'package:fluttermvvmtemplate/core/extension/context_extension.dart';
import 'package:provider/provider.dart';

class CustomDraggableScrollImageSlider extends StatelessWidget {
  const CustomDraggableScrollImageSlider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var animationController = Provider.of<DraggableControllerNotifier>(context);
    return AnimatedContainer(
      duration: context.lowDuration,
      height: animationController.handleAnimation
          ? context.height * (1 - animationController.currenValue!.maxExtent)
          : 0,
      width: double.infinity,
      color: Colors.green,
      child: FlutterLogo(
        size: 50,
      ),
    );
  }
}
