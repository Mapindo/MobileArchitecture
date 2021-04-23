import 'package:flutter/material.dart';
import 'package:fluttermvvmtemplate/core/extension/context_extension.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 4,
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
                                  Text(
                                    "Nirvana",
                                    style: context.textTheme.subtitle1.copyWith(
                                        fontWeight: FontWeight.w600,
                                        color: context.colors.secondary),
                                  ),
                                  Text(
                                    '2 Şubat' + ' / ' + '22:00',
                                    style: context.textTheme.subtitle2.copyWith(
                                        color: context.colors.secondary),
                                  ),
                                  Spacer(
                                    flex: 1,
                                  ),
                                  Text('Concert')
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
          Expanded(
            flex: 8,
            child: Container(
              color: Colors.blueGrey,
            ),
          )
        ],
      ),
    );
  }
}
