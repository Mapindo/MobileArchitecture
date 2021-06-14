import 'package:flutter/material.dart';
import 'package:fluttermvvmtemplate/product/notifier/sliding_up_notifer.dart';
import 'package:fluttermvvmtemplate/core/extension/context_extension.dart';
import 'package:provider/provider.dart';

class CustomDraggableScrollImageSlider extends StatelessWidget {
  const CustomDraggableScrollImageSlider({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // var animationController = Provider.of<DraggableControllerNotifier>(context);
    return AnimatedContainer(
      duration: context.lowDuration,
      width: double.infinity,
      // height: animationController.handleAnimation
      // ? context.height * (1 - animationController.currenValue.maxExtent)
      // : 0,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
              'https://raw.githubusercontent.com/AshishBhoi/DevFest/master/assets/images/banner_light.png'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
