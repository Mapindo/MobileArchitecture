import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:fluttermvvmtemplate/core/base/view/base_widget.dart';
import 'package:fluttermvvmtemplate/core/components/container/random_color_container.dart';
import 'package:fluttermvvmtemplate/core/extension/context_extension.dart';
import 'package:fluttermvvmtemplate/product/notifier/sliding_up_notifer.dart';
import 'package:fluttermvvmtemplate/product/widget/bottom_sheet/draggable_scroll_view/custom_draggable_scroll_view.dart';
import 'package:fluttermvvmtemplate/product/widget/bottom_sheet/sliding_up/custom_sliding_up.dart';
import 'package:fluttermvvmtemplate/product/widget/image_slider/draggable_image_slider.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:provider/provider.dart';
import '../viewmodel/map_view_model.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class MapView extends StatefulWidget {
  @override
  State<MapView> createState() => MapViewState();
}

class MapViewState extends State<MapView> with SingleTickerProviderStateMixin {
  late BitmapDescriptor eventIcon;
  late AnimationController _controller;
  late Animation<Offset> _offsetAnimation;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 200),
      vsync: this,
    );
    _offsetAnimation = Tween<Offset>(
      begin: Offset.zero,
      end: Offset(0, 2.0),
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOutQuad,
    ));
  }

  @override
  Widget build(BuildContext context) {
    print(Provider.of<SlidingUpNotifier>(context).panelSlide);
    return BaseView<MapViewModel>(
      viewModel: MapViewModel(),
      onModelReady: (model) {
        model.setContext(context);
        model.init();
      },
      onPageBuilder: (BuildContext context, MapViewModel value) => Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(animateHeightAppbar),
          child: AppBar(
            title: Text('DevFest'),
          ),
        ),
        body: CustomSlidingUp(
          maxHeight: context.height,
          snapPoint: 0.5,
          panelController: value.panelController,
          child: Stack(
            alignment: AlignmentDirectional.topCenter,
            children: [
              Container(
                height: animateHeightBanner,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(context.width * 0.08),
                  ),
                  image: DecorationImage(
                    image: NetworkImage(
                        'https://raw.githubusercontent.com/AshishBhoi/DevFest/master/assets/images/banner_light.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: animateHeightBanner),
                child: Container(
                  height: context.height,
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                  ),
                ),
              ),
            ],
          ),
          body: Observer(builder: (_) {
            return GoogleMap(
              mapType: MapType.normal,
              initialCameraPosition: value.kLake,
              zoomControlsEnabled: false,
              onMapCreated: (map) => value.mapsInit(map),
              markers: createMarker(value),
              compassEnabled: true,
              myLocationEnabled: true,
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
              position:
                  LatLng(e.location!.latitude ?? 0, e.location!.longitude ?? 0),
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

  double get animateHeightBanner =>
      (Provider.of<SlidingUpNotifier>(context).panelSlide + .5) *
      (context.height * .2);

  double get animateHeightAppbar =>
      Provider.of<SlidingUpNotifier>(context).panelSlide > .8
          ? kToolbarHeight *
              (.8 / Provider.of<SlidingUpNotifier>(context).panelSlide)
          : 0;
}
