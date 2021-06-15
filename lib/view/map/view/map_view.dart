import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttermvvmtemplate/core/base/view/base_widget.dart';
import 'package:fluttermvvmtemplate/core/components/container/random_color_container.dart';
import 'package:fluttermvvmtemplate/core/components/text/auto_locale_text.dart';
import 'package:fluttermvvmtemplate/core/extension/context_extension.dart';
import 'package:fluttermvvmtemplate/product/notifier/sliding_up_notifer.dart';
import 'package:fluttermvvmtemplate/product/widget/bottom_sheet/draggable_scroll_view/custom_draggable_scroll_view.dart';
import 'package:fluttermvvmtemplate/product/widget/bottom_sheet/sliding_up/custom_sliding_up.dart';
import 'package:fluttermvvmtemplate/product/widget/image_slider/draggable_image_slider.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:provider/provider.dart';
import '../viewmodel/map_view_model.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import '../../../core/extension/string_extension.dart';

class MapView extends StatefulWidget {
  @override
  State<MapView> createState() => MapViewState();
}

class MapViewState extends State<MapView> with SingleTickerProviderStateMixin {
  late BitmapDescriptor eventIcon;
  late AnimationController _controller;
  late Animation<Offset> _offsetAnimation;

  List imagesList = [
    'https://i.pravatar.cc/150?img=1',
    'https://i.pravatar.cc/150?img=2',
    'https://i.pravatar.cc/150?img=3',
    'https://i.pravatar.cc/150?img=4',
  ];
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
    print(Provider.of<SlidingUpNotifier>(context).panelSlide > .8
        ? (1 - (0.8 / Provider.of<SlidingUpNotifier>(context).panelSlide))
        : 0);
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
              AnimatedContainer(
                duration: Duration.zero,
                height: animateHeightBanner,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(animateBorderRadius),
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
                  width: double.infinity,
                  clipBehavior: Clip.hardEdge,
                  padding: context.paddingNormalHorizontal,
                  decoration: BoxDecoration(
                    color: context.colors.secondary,
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: context.paddingLow,
                        child: Container(
                          width: context.width * .1,
                          height: context.width * .015,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.grey[350],
                          ),
                        ),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AutoSizeText(
                            'DevFest İstanbul 2021',
                            style: context.textTheme.headline4!.copyWith(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          AutoSizeText(
                            'Teknoloji',
                            style: context.textTheme.subtitle1!.copyWith(
                              fontWeight: FontWeight.w500,
                              color: context.colors.onSecondary,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: context.paddingNormalVertical,
                        child: Row(
                          children: [
                            Container(
                              height: context.width * .11,
                              width: context.width * .11,
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                      blurRadius: 5,
                                      color: Colors.black26,
                                      spreadRadius: .1)
                                ],
                                borderRadius:
                                    BorderRadius.circular(context.width * .03),
                                image: DecorationImage(
                                  image: NetworkImage(
                                      'https://raw.githubusercontent.com/AshishBhoi/DevFest/master/assets/images/banner_light.png'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Padding(
                              padding: context.paddingNormalHorizontal,
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    AutoSizeText('GDG Denizli',
                                        style: context.textTheme.bodyText1),
                                    AutoSizeText(
                                      '205 Katılımcı',
                                      minFontSize: 3,
                                      style: context.textTheme.bodyText1!
                                          .copyWith(
                                              fontSize: context.width * .03,
                                              color:
                                                  context.colors.onSecondary),
                                    ),
                                  ]),
                            ),
                          ],
                        ),
                      ),
                      eventTagDetail(
                          context,
                          'location',
                          'Kongre ve Kültür Merkezi',
                          'İncilipınar,20150 Pamukkale/Denizli'),
                      eventTagDetail(
                          context, 'time', '25 Ekim Pazar', '08:00 - 19:00'),
                      eventTagDetail(context, 'price', '25₺+',
                          'Tek Oturum - Öğrenci 25₺, Tam 50₺'),
                      Padding(
                        padding: context.paddingLowVertical,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SvgPicture.asset('users'.toSVG),
                            Padding(
                              padding: context.paddingLowHorizontal,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  AutoSizeText(
                                    '46 kişi gidiyor',
                                    style: context.textTheme.bodyText2,
                                  ),
                                  circleAvatarsGroup(context)
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
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

  Container circleAvatarsGroup(BuildContext context) {
    return Container(
      alignment: AlignmentDirectional.center,
      padding: EdgeInsets.only(top: context.lowValue),
      child: Stack(
        alignment: AlignmentDirectional.centerStart,
        children: [
          // ...List.generate(
          //         imagesList.length,
          //         (index) =>
          //             circleAvatarUsers(context, index, imagesList[index]))
          //     .toList(),
          circleAvatarUsers(context, 0, imagesList[0]),
          circleAvatarUsers(context, 1, imagesList[1]),
          circleAvatarUsers(context, 2, imagesList[2]),
          circleAvatarUsers(context, 3, imagesList[3]),
          Padding(
            padding: EdgeInsets.only(
                left: (context.width * .055) * imagesList.length),
            child: Container(
              child: AutoSizeText(
                '+41',
                style: context.textTheme.bodyText2!
                    .copyWith(color: context.colors.onSecondary),
              ),
            ),
          )
        ],
      ),
    );
  }

  Padding circleAvatarUsers(BuildContext context, int index, String img) {
    return Padding(
      padding: EdgeInsets.only(left: (context.width * .045) * index),
      child: CircleAvatar(
        radius: 14,
        backgroundColor: Colors.white,
        child: CircleAvatar(
          radius: 12,
          backgroundImage: NetworkImage(img),
        ),
      ),
    );
  }

  Padding eventTagDetail(
      BuildContext context, String svgName, String title, String subtitle) {
    return Padding(
      padding: context.paddingLowVertical,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SvgPicture.asset(svgName.toSVG),
          Padding(
            padding: context.paddingLowHorizontal,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AutoSizeText(
                  title,
                  style: context.textTheme.bodyText2,
                ),
                AutoSizeText(
                  subtitle,
                  style: context.textTheme.bodyText2!
                      .copyWith(color: context.colors.onSecondary),
                )
              ],
            ),
          )
        ],
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
              ((Provider.of<SlidingUpNotifier>(context).panelSlide - .8) / .2)
          : 0;
  double get animateBorderRadius =>
      Provider.of<SlidingUpNotifier>(context).panelSlide > .8
          ? 0
          : context.width * 0.08;
}
