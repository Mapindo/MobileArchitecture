import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttermvvmtemplate/core/base/model/base_view_model.dart';
import 'package:fluttermvvmtemplate/view/map/model/map_event_model.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:mobx/mobx.dart';
import 'dart:ui' as ui;
part 'map_view_model.g.dart';

class MapViewModel = MapViewBase with _$MapViewModel;

abstract class MapViewBase with Store, BaseViewModel {
  @override
  BuildContext context;
  GoogleMapController controller;
  @observable
  BitmapDescriptor eventIcon;

  void setContext(BuildContext context) => this.context = context;

  void init() {
    // _throttleStringHelper = ThrottleStringHelper();
    // _fetchAllUser();
  }

//example markers
  List<MapEventModel> mapEventList = [
    MapEventModel(location: Location(latitude: 35, longitude: 30)),
    MapEventModel(location: Location(latitude: 40, longitude: 30)),
    MapEventModel(location: Location(latitude: 35, longitude: 35))
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

  Future<Uint8List> getBytesFromAsset(String path, int width) async {
    ByteData data = await rootBundle.load(path);
    ui.Codec codec = await ui.instantiateImageCodec(data.buffer.asUint8List(),
        targetWidth: width);
    ui.FrameInfo fi = await codec.getNextFrame();
    return (await fi.image.toByteData(format: ui.ImageByteFormat.png))
        .buffer
        .asUint8List();
  }

  Future<void> createMarkerImageFromAsset() async {
    final Uint8List markerIcon =
        await getBytesFromAsset('asset/image/twitterBlackLogo.jpg', 75);
    eventIcon = BitmapDescriptor.fromBytes(markerIcon);
  }
}
