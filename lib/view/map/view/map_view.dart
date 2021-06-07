import 'package:flutter/material.dart';
import 'package:fluttermvvmtemplate/core/components/container/random_color_container.dart';
import 'package:fluttermvvmtemplate/core/extension/context_extension.dart';
import 'package:fluttermvvmtemplate/product/widget/bottom_sheet/draggable_scroll_view/custom_draggable_scroll_view.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapView extends StatefulWidget {
  @override
  State<MapView> createState() => MapViewState();
}

class MapViewState extends State<MapView> {
  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.7587804, 29.0946194),
    zoom: 14.4746,
  );

  static final CameraPosition _kLake = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(37.7587804, 29.0946194),
      tilt: 59.440717697143555,
      zoom: 14.477);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // GoogleMap(
          //   mapType: MapType.normal,
          //   initialCameraPosition: _kGooglePlex,
          // ),
          Expanded(child: RandomColorContainer()),
          CustomDraggableScrollView(
            initialChildSize: 0.5,
            minChildSize: 0.3,
            maxChildSize: 0.8,
            // builder: (context, scrollController) {
            // return SingleChildScrollView(
            // physics: ScrollPhysics(parent: BouncingScrollPhysics()),
            // controller: scrollController,
            child: Container(
              height: context.mediaQuery.size.height,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.4),
                    spreadRadius: 0.01,
                    blurRadius: 14,
                    offset: Offset(0, 0.1), // changes position of shadow
                  ),
                ],
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(25),
                ),
              ),
              child: Padding(
                padding: context.paddingLowHorizontal
                    .copyWith(left: context.mediaQuery.size.width * 0.027),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: context.colors.onSecondary.withOpacity(0.3),
                          borderRadius: BorderRadius.circular(20)),
                      margin: context.paddingLowVertical,
                      width: 80,
                      height: 8,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.search,
                            color: context.colors.onSecondary,
                          ),
                          border: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          hintText: 'Etkinliğini Bul',
                          hintStyle: context.textTheme.subtitle2
                              .copyWith(color: context.colors.onSecondary)),
                    ),
                    Container(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          ListTile(
                            title: Text(
                              'Teknoloji',
                              style: context.textTheme.bodyText1
                                  .copyWith(color: context.colors.primary),
                            ),
                          ),
                          ListTile(
                            title: Text(
                              'Devfest Denizli 2021',
                              style: context.textTheme.headline6
                                  .copyWith(color: Color(0xff355070)),
                            ),
                            trailing: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                IconButton(
                                  color: context.colors.primary,
                                  padding: EdgeInsets.zero,
                                  icon: Icon(Icons.share),
                                  onPressed: () {},
                                ),
                                IconButton(
                                  color: context.colors.primary,
                                  padding: EdgeInsets.zero,
                                  icon: Icon(Icons.bookmark),
                                  onPressed: () {},
                                ),
                              ],
                            ),
                          ),
                          ListTile(
                            leading: CircleAvatar(
                              radius: context.width * .050,
                              backgroundImage: NetworkImage(
                                'https://i.hizliresim.com/s0ei48.png',
                              ),
                            ),
                            title: Text(
                              'GDG Denizli',
                              style: context.textTheme.bodyText1.copyWith(
                                  fontWeight: FontWeight.bold,
                                  fontSize: context.width * .05,
                                  color: Color(0xff355070)),
                            ),
                            trailing: ElevatedButton.icon(
                              style: ButtonStyle(
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18.0),
                                )),
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        context.colors.primary),
                              ),
                              onPressed: null,
                              icon: Icon(
                                Icons.add,
                                color: Colors.white,
                                size: context.width * .05,
                              ),
                              label: Text(
                                'Takip Et',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: context.width * .04),
                              ),
                            ),
                          ),
                          ListTile(
                            leading: Container(
                              height: double.infinity,
                              child: Icon(
                                Icons.calendar_today,
                                color: context.colors.primary,
                                // size: context.width * .050,
                              ),
                            ),
                            title: Text(
                              'Pazar, 6 Mart 2021',
                              style: context.textTheme.bodyText1.copyWith(
                                color: Color(0xff355070),
                              ),
                            ),
                            subtitle: Text(
                              '10.00 - 17:00',
                              style: context.textTheme.bodyText1.copyWith(
                                color: Colors.grey[400],
                              ),
                            ),
                          ),
                          ListTile(
                            leading: Container(
                              height: double.infinity,
                              child: Icon(
                                Icons.location_on_sharp,
                                // size: context.width * .050,
                                color: context.colors.primary,
                              ),
                            ),
                            title: Text(
                              'Nihat Zeybekçi Kongre ve Kültür Merkezi',
                              style: context.textTheme.bodyText1.copyWith(
                                color: Color(0xff355070),
                              ),
                            ),
                            subtitle: Text(
                              'İncilipınar, 20150 Pamukkale/Denizli',
                              style: context.textTheme.bodyText1.copyWith(
                                color: Colors.grey[400],
                              ),
                            ),
                          ),
                          ListTile(
                            title: Text(
                              'Etkinlik hakkında :',
                              style: context.textTheme.bodyText1.copyWith(
                                color: Color(0xff355070),
                              ),
                            ),
                            subtitle: Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Text(
                                  'GDG DevFest Denizli brings together the world class expertsin Android, Web and Cloud technologies to Istanbul for 2 days of sessions, workshops and showcases.'),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20),
                            child: ElevatedButton(
                              style: ButtonStyle(
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18.0),
                                )),
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        context.colors.primary),
                              ),
                              onPressed: null,
                              child: Text(
                                'Etkinliğe Kayıt Ol ',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: context.width * .04),
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            // );
            // }
          )
        ],
      ),
    );
  }
}
