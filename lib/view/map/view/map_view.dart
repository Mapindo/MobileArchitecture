import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:fluttermvvmtemplate/core/base/view/base_widget.dart';
import 'package:fluttermvvmtemplate/core/components/container/random_color_container.dart';
import 'package:fluttermvvmtemplate/core/extension/context_extension.dart';
import 'package:fluttermvvmtemplate/product/notifier/sliding_up_notifer.dart';
import 'package:fluttermvvmtemplate/product/widget/bottom_sheet/draggable_scroll_view/custom_draggable_scroll_view.dart';
import 'package:fluttermvvmtemplate/product/widget/image_slider/draggable_image_slider.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:provider/provider.dart';
import '../viewmodel/map_view_model.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class MapView extends StatefulWidget {
  @override
  State<MapView> createState() => MapViewState();
}

class MapViewState extends State<MapView> {
  BitmapDescriptor eventIcon;

  @override
  Widget build(BuildContext context) {
    return BaseView(
      viewModel: MapViewModel(),
      onModelReady: (model) {
        model.setContext(context);
        model.init();
      },
      onPageBuilder: (BuildContext context, MapViewModel value) => Scaffold(
        body: SlidingUpPanel(
          controller: value.panelController,
          maxHeight: 500,
          minHeight: 0,
          snapPoint: 0.5,
          header: touchSwipePointer(context),
          parallaxEnabled: true,
          parallaxOffset: .2,
          defaultPanelState: PanelState.CLOSED,
          backdropTapClosesPanel: true,
          backdropEnabled: true,
          backdropOpacity: 0.15,
          panel: Center(
            child: Text("This is the sliding Widget"),
          ),
          borderRadius:
              BorderRadius.vertical(top: Radius.circular(context.width * 0.08)),
          body: Observer(builder: (_) {
            return GoogleMap(
              mapType: MapType.normal,
              initialCameraPosition: value.kLake,
              zoomControlsEnabled: false,
              onMapCreated: (map) => value.mapsInit(map),
              markers: createMarker(value),
            );
          }),
        ),
      ),
    );
  }

  Set<Marker> createMarker(MapViewModel value) {
    return value.mapEventList
        .map(
          (e) => Marker(
              markerId: MarkerId(e.hashCode.toString()),
              position: LatLng(e.location.latitude, e.location.longitude),
              icon: value.eventIcon ?? BitmapDescriptor.defaultMarker,
              zIndex: 5,
              infoWindow: InfoWindow(title: 'Test'),
              onTap: () => value.markerOnTap(e)),
        )
        .toSet();
  }

  Widget touchSwipePointer(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: context.width * .025),
      child: Container(
        height: context.width * .015,
        width: context.width * .1,
        decoration: BoxDecoration(
          color: context.colors.onSecondary,
          borderRadius: BorderRadius.all(
            Radius.circular(context.width * .01),
          ),
        ),
      ),
    );
  }
}
