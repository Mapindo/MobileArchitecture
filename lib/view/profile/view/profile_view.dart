import 'package:flutter/material.dart';
import 'package:fluttermvvmtemplate/core/base/view/base_widget.dart';
import 'package:fluttermvvmtemplate/core/extension/context_extension.dart';
import 'package:fluttermvvmtemplate/view/profile/viewmodel/profile_view_model.dart';

class ProfileView extends StatefulWidget {
  @override
  _ProfileViewState createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  // @override
  // void initState() {
  //   super.initState();
  //   _tabController = TabController(length: 4, vsync: this);
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    final feedData = [
      {
        'photo': 'https://avatars.githubusercontent.com/u/34376691?v=4',
        'name': 'Abdullah Oğuz',
        'time': '13.40',
        'text': 'Bugün NSIstanbul etkinliğine gelen var mı ?'
      },
      {
        'photo': 'https://avatars.githubusercontent.com/u/34376691?v=4',
        'name': 'Abdullah Oğuz',
        'time': '14.50',
        'text': 'Karaköyde bir konser varmış giden var mı ?'
      },
      {
        'photo': 'https://avatars.githubusercontent.com/u/34376691?v=4',
        'name': 'Abdullah Oğuz',
        'time': '8.50',
        'text': 'Korona bitse de hep birlikte duman konserine gitsek :('
      },
      {
        'photo': 'https://avatars.githubusercontent.com/u/34376691?v=4',
        'name': 'Abdullah Oğuz',
        'time': '10.50',
        'text':
            'UI/UX üzerine dolu dolu bir etkinlik serisi düşünüyorum. Şu an planlamasını yapıyorum. Böyle bir işte gönüllü olarak yardımcı olabilecek kişilerle konuşarak daha da güzel bir iş çıkartabiliriz. Eğer gönüllü olmak isteyen varsa benimle iletişime geçebilir'
      }
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

    final commentData = [
      {
        'type': 'Konser',
        'name': 'No Clear Mind',
        'time': '11 Mart',
        'text':
            'Organizasyon ve sanatçılar çok kaliteliydi, böyle konserlerin devam etmesi dileğiyle..'
      },
      {
        'type': 'Konferans',
        'name': 'TEDx',
        'time': '12 Kasım',
        'text':
            'Oldukça bilgilendirici ve destekleyici bir seminer oldu. Çok teşekkkürler.'
      },
      {
        'type': 'Spor',
        'name': 'Anadolu Efes & Asvel Lyon',
        'time': '23 Ekim',
        'text': 'Harika bir maçtı, Yaşasın Anadolu Efes!'
      },
    ];

    final tabs = <Widget>[
      Tab(
        text: 'Gönderiler',
      ),
      Tab(
        text: 'Etkinlikler',
      ),
      Tab(
        text: 'Yorumlar',
      ),
      Tab(
        text: 'Başarılar',
      ),
    ];

    return BaseView<ProfileViewModel>(
      viewModel: ProfileViewModel(),
      onModelReady: (model) {
        model.setContext(context);
      },
      onPageBuilder: (BuildContext context, ProfileViewModel viewModel) =>
          DefaultTabController(
        initialIndex: 0,
        length: tabs.length,
        child: Scaffold(
          floatingActionButton: Padding(
            padding: context.paddingNormalVertical
                .copyWith(top: 0, bottom: context.mediaQuery.size.height * 0.1),
            child: FloatingActionButton(
                elevation: 8,
                child: Icon(
                  Icons.add,
                  size: 27,
                  color: context.colors.background,
                ),
                backgroundColor: context.colors.primary,
                onPressed: () {}),
          ),
          appBar: AppBar(
            shadowColor: Colors.transparent,
            backgroundColor: Colors.white,
            leading:
                IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back_ios)),
            actions: [IconButton(onPressed: () {}, icon: Icon(Icons.message))],
            centerTitle: false,
            title: Text('Profil', style: TextStyle(color: Colors.black)),
          ),
          backgroundColor: Colors.white,
          body: Column(
            children: [
              Column(
                children: [
                  /*   Row(
                    children: [
                      IconButton(
                          icon: Icon(Icons.arrow_back_ios), onPressed: () {}),
                      Text(
                        'Profil',
                        style: context.textTheme.subtitle2.copyWith(
                            fontSize: 18, fontWeight: FontWeight.w600),
                      ),
                      Spacer(),
                      IconButton(icon: Icon(Icons.message), onPressed: () {})
                    ],
                  ), */
                  Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            flex: 2,
                            child: Container(
                              // color: Colors.blue,
                              child: Column(
                                children: [
                                  CircleAvatar(
                                    radius: 40,
                                    backgroundImage: NetworkImage(
                                        'https://avatars.githubusercontent.com/u/34376691?v=4'),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 6,
                            child: Container(
                              // color: Colors.red,
                              padding: context.paddingMediumHorizontal
                                  .copyWith(right: 0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text('Abdullah Oğuz',
                                              style:
                                                  context.textTheme.subtitle2),
                                          Text('@aoguz',
                                              style:
                                                  context.textTheme.bodyText1)
                                        ],
                                      ),
                                      Spacer(),
                                      TextButton(
                                          onPressed: () {},
                                          child: Text('Takip Et +'))
                                    ],
                                  ),
                                  // Row(
                                  //   mainAxisAlignment: MainAxisAlignment.start,
                                  //   children: [
                                  //     Text('15 Takip Edilen'),
                                  //     SizedBox(
                                  //       width: 20,
                                  //     ),
                                  //     Text('15 Takipçi')
                                  //   ],
                                  // )
                                ],
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  TabBar(
                    controller: _tabController,
                    labelPadding: context.paddingNormalHorizontal,
                    isScrollable: true,
                    indicatorWeight: 0.01,
                    onTap: (int selected) {},
                    indicatorColor: Colors.black,
                    labelColor: context.colors.primary,
                    labelStyle: context.textTheme.subtitle1,
                    unselectedLabelStyle: TextStyle(),
                    tabs: tabs,
                  ),
                ],
              ),
              Expanded(
                child: TabBarView(children: [
                  Container(
                    height: 100,
                    child: ListView.builder(
                      itemCount: feedData.length,
                      itemBuilder: (BuildContext context, int index) {
                        return ListTile(
                          leading: CircleAvatar(
                            backgroundImage:
                                NetworkImage(feedData[index]['photo']),
                          ),
                          title: Text(feedData[index]['name']),
                          subtitle: Text(feedData[index]['text']),
                        );
                      },
                    ),
                  ),
                  Container(
                      child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: eventCard.length,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        height: context.mediaQuery.size.height * 0.2,
                        width: context.mediaQuery.size.width * 0.8,
                        padding: context.paddingLow,
                        child: Stack(
                          children: [
                            Container(
                              // width: context.mediaQuery.size.height * 0.25,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(eventCard[index]['image']),
                                ),
                              ),
                            ),
                            Container(
                              // width: context.mediaQuery.size.height * 0.25,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
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
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
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
                                          margin: EdgeInsets.only(right: 10),
                                          decoration: BoxDecoration(
                                              color:
                                                  context.colors.onBackground,
                                              borderRadius:
                                                  BorderRadius.circular(60)),
                                          width: 4,
                                          height: 30,
                                        ),
                                        Text(
                                          eventCard[index]['type'],
                                          style: context.textTheme.overline
                                              .copyWith(
                                                  fontSize: 12,
                                                  color:
                                                      context.colors.secondary),
                                          textAlign: TextAlign.center,
                                        )
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: Text(
                                      eventCard[index]['name'],
                                      style:
                                          context.textTheme.bodyText1.copyWith(
                                        fontSize: 16,
                                        color: context.colors.secondary,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Text(
                                      eventCard[index]['time'],
                                      style:
                                          context.textTheme.bodyText1.copyWith(
                                        fontSize: 16,
                                        color: context.colors.secondary,
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
                  )),
                  Container(
                    child: Center(
                      child: ListView.builder(
                        itemCount: commentData.length,
                        itemBuilder: (BuildContext context, int index) {
                          return ListTile(
                            title: Row(
                              children: [
                                Text(commentData[index]['name']),
                                Spacer(),
                                Text(
                                  commentData[index]['time'],
                                  style: context.textTheme.caption,
                                )
                              ],
                            ),
                            subtitle: Text(commentData[index]['text']),
                          );
                        },
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.red,
                    height: 200,
                    child: Center(
                      child: Text(
                        'Tab 2',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
