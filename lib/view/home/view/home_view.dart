import 'package:flutter/material.dart';
import 'package:fluttermvvmtemplate/core/extension/context_extension.dart';
// import '../../../product/widget/bottomNavigation/bottom_navigation.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
<<<<<<< HEAD
      // extendBody: true,
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      // floatingActionButton: FloatingActionButton(
      //     child: SvgPicture.asset('asset/svg/Network.svg'),
      //     backgroundColor: Color(0xff758296),
      //     elevation: 1,
      //     onPressed: () {
      //       print('Click');
      //     }),
      // bottomNavigationBar: BottomNavigation(),
      body: Column(
=======
      body: Stack(
>>>>>>> 2fb66938fca0478ad120d6e26a9a996d2bdf12d9
        children: [
          Container(
            height: context.mediaQuery.size.height * 0.3,
            child: Column(
              children: [
                Spacer(
                  flex: 2,
                ),
                Expanded(
                  flex: 4,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          IconButton(icon: Icon(Icons.menu), onPressed: () {}),
                          Container(
                            padding: context.paddingLowHorizontal,
                            alignment: Alignment.topLeft,
                            child: Text(
                              'Merhaba Abdullah 🤩',
                              style: context.textTheme.headline5,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        padding: context.paddingNormalHorizontal.copyWith(
                            left: context.mediaQuery.size.width * 0.15),
                        alignment: Alignment.topLeft,
                        child: Text('Yakında Gidebileceğin Etkinlikler',
                            style: context.textTheme.subtitle1),
                      )
                    ],
                  ),
                ),
                Expanded(
                  flex: 7,
                  child: Container(
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 20,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: context.paddingLow,
                            child: Container(
                              padding: context.paddingMediumHorizontal.copyWith(
                                  top: context.mediaQuery.size.height * 0.015),
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      colorFilter: ColorFilter.mode(
                                          Colors.black.withOpacity(0.2),
                                          BlendMode.dstATop),
                                      fit: BoxFit.cover,
                                      image: AssetImage(
                                          'asset/image/image_concert.png')),
                                  color: context.colors.primary,
                                  borderRadius: BorderRadius.circular(24)),
                              width: context.mediaQuery.size.width * 0.7,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Expanded(
                                    flex: 2,
                                    child: Text(
                                      "Nirvana",
                                      style: context.textTheme.subtitle1
                                          .copyWith(
                                              fontWeight: FontWeight.w600,
                                              color: context.colors.secondary),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 2,
                                    child: Text(
                                      '2 Şubat' + ' / ' + '22:00',
                                      style: context.textTheme.subtitle2
                                          .copyWith(
                                              color: context.colors.secondary),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 2,
                                    child: Text(
                                      'Concert',
                                      style: context.textTheme.bodyText1
                                          .copyWith(
                                              color: context.colors.secondary,
                                              fontWeight: FontWeight.w500),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          );
                        }),
                  ),
                )
              ],
            ),
          ),
          DraggableScrollableSheet(
              initialChildSize: 0.7,
              minChildSize: 0.7,
              maxChildSize: 1,
              builder: (context, scrollController) {
                return Container(
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
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: context.colors.onSecondary.withOpacity(0.3),
                            borderRadius: BorderRadius.circular(20)),
                        margin: context.paddingLowVertical,
                        width: 80,
                        height: 8,
                      ),
                      Row(
                        children: [
                          Expanded(flex: 1, child: Icon(Icons.search)),
                          Expanded(
                            flex: 10,
                            child: Padding(
                              padding: context.paddingLowHorizontal.copyWith(
                                  right: context.mediaQuery.size.width * 0.06),
                              child: TextFormField(
                                decoration:
                                    InputDecoration(border: InputBorder.none),
                              ),
                            ),
                          )
                        ],
                      ),
                      Flexible(
                        child: ListView.builder(
                            controller: scrollController,
                            itemCount: 5,
                            itemBuilder: (context, index) {
                              return ListTile(
                                title: Text('index $index'),
                              );
                            }),
                      ),
                    ],
                  ),
                );
              })
        ],
      ),
    );
  }
}
