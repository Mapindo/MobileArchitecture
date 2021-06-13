import 'package:flutter/material.dart';
import 'package:fluttermvvmtemplate/core/base/model/base_view_model.dart';
import 'package:fluttermvvmtemplate/view/map/model/map_event_model.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:mobx/mobx.dart';

part 'map_view_model.g.dart';

class MapViewModel = MapViewBase with _$MapViewModel;

abstract class MapViewBase with Store, BaseViewModel {
  @observable
  BitmapDescriptor dogIcon;
  GoogleMapController controller;

  void setContext(BuildContext context) => this.context = context;

  void init() {
    // _throttleStringHelper = ThrottleStringHelper();
    // _fetchAllUser();
  }

//example markers
  List<MapEventModel> mapEventList = [
    MapEventModel(location: Location(latitude: 35, longitude: 30))
  ];

  final CameraPosition kLake =
      CameraPosition(target: LatLng(37.7587804, 29.0946194), zoom: 7);

  // void mapsCardOnPressed() {
  //   controller.animateCamera(
  //       CameraUpdate.newLatLng(AppConstant.TURKEY_CENTER_LAT_LONG));
  // }

  Future<void> mapsInit(GoogleMapController controller) async {
    this.controller = controller;
    await createMarkerImageFromAsset();
  }

  Future<void> createMarkerImageFromAsset() async {
    final ImageConfiguration imageConfiguration =
        createLocalImageConfiguration(context);
    var bitmap = await BitmapDescriptor.fromAssetImage(
        imageConfiguration, 'assets/image/tedx_talk.png');
    dogIcon = bitmap;
  }
}
