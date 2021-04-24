import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:fluttermvvmtemplate/core/extension/context_extension.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const category = <String>[
      'Tümü',
      ' Bilim',
      'Spor',
      'Teknoloji',
      ' Kültür & Sanat',
      'Tarih'
    ];

    final eventCard = [
      {
        'type': 'Konser',
        'name': 'No Clear Mind',
        'time': '11 Mart',
        'image': 'asset/image/image_concert.png'
      },
      {
        'type': 'Konferans',
        'name': 'TEDx',
        'time': '12 Kasım',
        'image': 'asset/image/tedx_talk.png'
      },
      {
        'type': 'Spor',
        'name': 'Anadolu Efes & Asvel Lyon',
        'time': '23 Ekim',
        'image': 'asset/image/anadolu_efes.png'
      },
    ];

    return Scaffold(
      body: Stack(
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
                            style: context.textTheme.subtitle1
                                .copyWith(fontWeight: FontWeight.w400)),
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
                return SingleChildScrollView(
                  controller: scrollController,
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
                      padding: context.paddingLowHorizontal.copyWith(
                          left: context.mediaQuery.size.width * 0.027),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color:
                                    context.colors.onSecondary.withOpacity(0.3),
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
                                hintStyle: context.textTheme.subtitle2.copyWith(
                                    color: context.colors.onSecondary)),
                          ),
                          Expanded(
                            flex: 1,
                            child: ListView.builder(
                              itemCount: category.length,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (BuildContext context, int index) {
                                return Container(
                                    padding: context.paddingNormalHorizontal
                                        .copyWith(
                                            top:
                                                context.mediaQuery.size.height *
                                                    0.02),
                                    child: Text(category[index],
                                        style: context.textTheme.subtitle2
                                            .copyWith(
                                                fontWeight: FontWeight.w400)));
                              },
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(
                              alignment: Alignment.center,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Önerilen',
                                    style: context.textTheme.bodyText1,
                                  ),
                                  Spacer(),
                                  Text(
                                    'Hepsini Gör',
                                    style: context.textTheme.bodyText1.copyWith(
                                        color: context.colors.primary),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Container(
                            height: context.mediaQuery.size.height * 0.1977878,
                            child: ListView.builder(
                              shrinkWrap: true,
                              itemCount: eventCard.length,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (BuildContext context, int index) {
                                return Container(
                                  padding: context.paddingLowHorizontal,
                                  child: Stack(
                                    children: [
                                      Container(
                                        width: context.mediaQuery.size.height *
                                            0.25,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: AssetImage(
                                                eventCard[index]['image']),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width: context.mediaQuery.size.height *
                                            0.25,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            gradient: LinearGradient(
                                              begin: Alignment.bottomLeft,
                                              end: Alignment.topRight,
                                              colors: [
                                                Color(0xff111467),
                                                Colors.transparent
                                              ],
                                            )),
                                      ),
                                      Container(
                                        padding: context.paddingNormalHorizontal
                                            .copyWith(right: 0),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Spacer(
                                              flex: 2,
                                            ),
                                            Expanded(
                                              child: Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Container(
                                                    margin: EdgeInsets.only(
                                                        right: 10),
                                                    decoration: BoxDecoration(
                                                        color: context.colors
                                                            .onBackground,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(60)),
                                                    width: 4,
                                                    height: 30,
                                                  ),
                                                  Text(
                                                    eventCard[index]['type'],
                                                    style: context
                                                        .textTheme.overline
                                                        .copyWith(
                                                            fontSize: 12,
                                                            color: context
                                                                .colors
                                                                .secondary),
                                                    textAlign: TextAlign.center,
                                                  )
                                                ],
                                              ),
                                            ),
                                            Expanded(
                                              child: Text(
                                                eventCard[index]['name'],
                                                style: context
                                                    .textTheme.bodyText1
                                                    .copyWith(
                                                  fontSize: 16,
                                                  color:
                                                      context.colors.secondary,
                                                  fontWeight: FontWeight.w700,
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              child: Text(
                                                eventCard[index]['time'],
                                                style: context
                                                    .textTheme.bodyText1
                                                    .copyWith(
                                                  fontSize: 16,
                                                  color:
                                                      context.colors.secondary,
                                                  fontWeight: FontWeight.w700,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                );
                              },
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(
                              alignment: Alignment.center,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Arkadaşlarının Gidecekleri',
                                    style: context.textTheme.bodyText1,
                                  ),
                                  Spacer(),
                                  Text(
                                    'Hepsini Gör',
                                    style: context.textTheme.bodyText1.copyWith(
                                        color: context.colors.primary),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Container(
                            height: context.mediaQuery.size.height * 0.1977878,
                            child: ListView.builder(
                              shrinkWrap: true,
                              itemCount: eventCard.length,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (BuildContext context, int index) {
                                return Container(
                                  padding: context.paddingLowHorizontal,
                                  child: Stack(
                                    children: [
                                      Container(
                                        width: context.mediaQuery.size.height *
                                            0.25,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: AssetImage(
                                                eventCard[index]['image']),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width: context.mediaQuery.size.height *
                                            0.25,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            gradient: LinearGradient(
                                              begin: Alignment.bottomLeft,
                                              end: Alignment.topRight,
                                              colors: [
                                                Color(0xff111467),
                                                Colors.transparent
                                              ],
                                            )),
                                      ),
                                      Container(
                                        padding: context.paddingNormalHorizontal
                                            .copyWith(right: 0),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Spacer(
                                              flex: 2,
                                            ),
                                            Expanded(
                                              child: Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Container(
                                                    margin: EdgeInsets.only(
                                                        right: 10),
                                                    decoration: BoxDecoration(
                                                        color: context.colors
                                                            .onBackground,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(60)),
                                                    width: 4,
                                                    height: 30,
                                                  ),
                                                  Text(
                                                    eventCard[index]['type'],
                                                    style: context
                                                        .textTheme.overline
                                                        .copyWith(
                                                            fontSize: 12,
                                                            color: context
                                                                .colors
                                                                .secondary),
                                                    textAlign: TextAlign.center,
                                                  )
                                                ],
                                              ),
                                            ),
                                            Expanded(
                                              child: Text(
                                                eventCard[index]['name'],
                                                style: context
                                                    .textTheme.bodyText1
                                                    .copyWith(
                                                  fontSize: 16,
                                                  color:
                                                      context.colors.secondary,
                                                  fontWeight: FontWeight.w700,
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              child: Text(
                                                eventCard[index]['time'],
                                                style: context
                                                    .textTheme.bodyText1
                                                    .copyWith(
                                                  fontSize: 16,
                                                  color:
                                                      context.colors.secondary,
                                                  fontWeight: FontWeight.w700,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                );
                              },
                            ),
                          ),
                          Spacer(
                            flex: 9,
                          )
                        ],
                      ),
                    ),
                  ),
                );
              })
        ],
      ),
    );
  }
}
