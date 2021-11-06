import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:fluttermvvmtemplate/core/extension/context_extension.dart';

class CornerRectangleButton extends StatelessWidget {
  final String? text;
  final VoidCallback? onPress;

  const CornerRectangleButton({Key? key, this.text, this.onPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(context.normalValue),
        ),
      ),
      child: Text(
        text ?? '',
        style: context.textTheme.subtitle1!.copyWith(color: Colors.white),
      ),
      onPressed: () {
        onPress;
      },
    );
  }
}
