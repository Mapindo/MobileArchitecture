import 'package:flutter/material.dart';
import 'package:fluttermvvmtemplate/core/base/model/base_view_model.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:mobx/mobx.dart';

part 'map_view_model.g.dart';

class MapViewModel = MapViewBase with _$MapViewModel;

abstract class MapViewBase with Store, BaseViewModel {
  void setContext(BuildContext context) => this.context = context;

  void init() {
    // _throttleStringHelper = ThrottleStringHelper();
    // _fetchAllUser();
  }
  final CameraPosition kLake =
      CameraPosition(target: LatLng(37.7587804, 29.0946194), zoom: 7);
}
