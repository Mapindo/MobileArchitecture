import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:fluttermvvmtemplate/core/extension/context_extension.dart';

class CornerRectangleButton extends StatelessWidget {
  final String? text;
  final VoidCallback? onPress;
  final EdgeInsetsGeometry? padding;
  final TextStyle? textStyle;
  const CornerRectangleButton(
      {Key? key, this.text, this.onPress, this.padding, this.textStyle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: padding,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(context.normalValue),
        ),
      ),
      child: Text(
        text ?? '',
        style: textStyle,
      ),
      onPressed: onPress,
    );
  }
}
