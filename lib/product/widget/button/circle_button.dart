import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:fluttermvvmtemplate/core/extension/context_extension.dart';

class CustomCircleButtton extends StatelessWidget {
  final IconData? iconData;
  final double? size;
  final Color? buttonColor;
  final double? paddingValue;
  final Color? iconColor;
  final VoidCallback? onPressed;

  const CustomCircleButtton(
      {Key? key,
      this.iconData,
      this.size,
      this.buttonColor,
      this.iconColor,
      this.paddingValue,
      this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {},
      color: buttonColor,
      child: Icon(
        iconData,
        size: size,
        color: iconColor,
      ),
      padding: EdgeInsets.all(paddingValue!),
      shape: CircleBorder(),
    );
  }
}
