import 'package:flutter/material.dart';
import 'package:fluttermvvmtemplate/product/notifier/sliding_up_notifer.dart';
import 'package:provider/provider.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class CustomSlidingUp extends StatefulWidget {
  final controller;
  final maxHeight;
  final minHeight;
  final snapPoint;
  final header;
  final parallaxEnabled;
  final parallaxOffset;
  final defaultPanelState;
  final backdropTapClosesPanel;
  final backdropEnabled;
  final backdropOpacity;
  final panel;
  final borderRadius;
  final body;
  CustomSlidingUp({
    Key? key,
    this.controller,
    this.maxHeight,
    this.minHeight,
    this.snapPoint,
    this.header,
    this.parallaxEnabled,
    this.parallaxOffset,
    this.defaultPanelState,
    this.backdropTapClosesPanel,
    this.backdropEnabled,
    this.backdropOpacity,
    this.panel,
    this.borderRadius,
    this.body,
  }) : super(key: key);

  @override
  _CustomSlidingUpState createState() => _CustomSlidingUpState();
}

class _CustomSlidingUpState extends State<CustomSlidingUp> {
  @override
  Widget build(BuildContext context) {
    return SlidingUpPanel(
      // controller: Provider.of<SlidingUpNotifier>(context, listen: false).changeValue(value),
      maxHeight: widget.maxHeight ?? 500,
      minHeight: widget.minHeight ?? 0,
      snapPoint: widget.snapPoint ?? 0.5,
      header: widget.header,
      parallaxEnabled: widget.parallaxEnabled ?? true,
      parallaxOffset: widget.parallaxOffset ?? .2,
      defaultPanelState: widget.defaultPanelState ?? PanelState.CLOSED,
      backdropTapClosesPanel: widget.backdropTapClosesPanel ?? true,
      backdropEnabled: widget.backdropEnabled ?? true,
      backdropOpacity: widget.backdropOpacity ?? 0.15,
      panel: widget.panel ??
          Center(
            child: Text('This is the sliding Widget'),
          ),
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(MediaQuery.of(context).size.width * 0.08),
      ),
      body: widget.body,
    );
  }
}
