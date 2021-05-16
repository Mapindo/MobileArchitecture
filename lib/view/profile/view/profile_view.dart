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
  TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> myTabs = [
      Tab(text: 'Gönderiler'),
      Tab(text: 'Etkinlikler'),
      Tab(text: 'Yorumlar'),
    ];

    return BaseView<ProfileViewModel>(
      viewModel: ProfileViewModel(),
      onModelReady: (model) {
        model.setContext(context);
      },
      onPageBuilder: (BuildContext context, ProfileViewModel viewModel) =>
          DefaultTabController(
        length: 6,
        child: Scaffold(
          backgroundColor: Color(0xffFFF8F6),
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(250),
            child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: AppBar(
                backgroundColor: Color(0xffFFF8F6),
                elevation: 0,
                flexibleSpace: Column(
                  children: [
                    Padding(
                      padding: context.paddingMediumVertical
                          .copyWith(bottom: context.lowValue),
                      child: Row(
                        children: [
                          IconButton(
                              icon: Icon(Icons.arrow_back_ios),
                              onPressed: () {}),
                          Text(
                            'Profil',
                            style: context.textTheme.subtitle2.copyWith(
                                fontSize: 18, fontWeight: FontWeight.w600),
                          ),
                          Spacer(),
                          IconButton(
                              icon: Icon(Icons.message), onPressed: () {})
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              flex: 2,
                              child: Container(
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
                                            Text('Merhaba Abdullah',
                                                style: context
                                                    .textTheme.subtitle2),
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
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text('15 Takip Edilen'),
                                        SizedBox(
                                          width: 20,
                                        ),
                                        Text('15 Takipçi')
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              child: TabBar(
                                unselectedLabelColor: Colors.black,
                                labelColor: Colors.red,
                                tabs: [
                                  Tab(
                                    text: '1st tab',
                                  ),
                                  Tab(
                                    text: '2 nd tab',
                                  )
                                ],
                                controller: tabController,
                                indicatorSize: TabBarIndicatorSize.tab,
                              ),
                            ),
                            TabBarView(
                              children: [
                                Container(child: Center(child: Text('people'))),
                                Text('Person')
                              ],
                              controller: tabController,
                            ),
                          ],
                        )
                      ],
                    ),
                    TabBar(
                      isScrollable: true,
                      indicatorWeight: 0.01,
                      indicatorColor: Colors.amber,
                      labelColor: Color(0xff2D2727),
                      labelStyle:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                      unselectedLabelStyle: TextStyle(),
                      tabs: <Widget>[
                        Tab(
                          text: 'Tab 1',
                        ),
                        Tab(
                          text: 'Tab 2',
                        ),
                        Tab(
                          text: 'Tab 3',
                        ),
                        Tab(
                          text: 'Tab 4',
                        ),
                        Tab(
                          text: 'Tab 5',
                        ),
                        Tab(
                          text: 'Tab 6',
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          body: TabBarView(children: [
            Container(
              color: Colors.amber,
              height: 100,
              child: Center(
                child: Text(
                  'Tab 1',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Container(
              color: Colors.red,
              height: 200,
              child: Center(
                child: Text(
                  'Tab 2',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Container(
              color: Colors.brown,
              height: 200,
              child: Center(
                child: Text(
                  'Tab 3',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Container(
              color: Colors.deepOrange,
              height: 200,
              child: Center(
                child: Text(
                  'Tab 4',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Container(
              color: Colors.blueAccent,
              height: 200,
              child: Center(
                child: Text(
                  'Tab 5',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Container(
              color: Colors.deepPurple,
              height: 200,
              child: Center(
                child: Text(
                  'Tab 6',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
