import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttermvvmtemplate/view/event_detail/view/event_detail_view.dart';
import 'package:fluttermvvmtemplate/view/map/view/map_view.dart';
import 'package:fluttermvvmtemplate/view/notification_view/view/notification_view.dart';
import '../../../core/init/theme/light/color_scheme_light.dart';
import '../../../view/home/view/home_view.dart';
import '../../../core/extension/string_extension.dart';
import 'package:fluttermvvmtemplate/core/extension/context_extension.dart';

class BottomNavigation extends StatefulWidget {
  BottomNavigation({
    Key key,
  }) : super(key: key);

  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  final color = ColorSchemeLight.instance;
  int _selectedIndex = 3;
  static List<Widget> _widgetOptions = <Widget>[
    HomeView(),
    // MapView(),
    Center(child: Text('Map')),
    Center(child: Text('Sosyal medya yakında...')),
    NotificationView(),
    Center(child: Text('Profil yakında...'))
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      extendBody: true,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: buildFloatingActionButton(),
      bottomNavigationBar: buildBottomAppBar(context),
      body: _widgetOptions.elementAt(_selectedIndex),
    );
  }

  void _onItemTapped(int index) {
    print(index);
    setState(() {
      _selectedIndex = index;
    });
  }

  FloatingActionButton buildFloatingActionButton() {
    return FloatingActionButton(
        child: SvgPicture.asset('asset/svg/Network.svg'),
        backgroundColor:
            _selectedIndex == 2 ? Colors.indigo[400] : color.slate_gray,
        elevation: 1,
        onPressed: () {
          _onItemTapped(2);
        });
  }

  Widget buildBottomAppBar(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
      child: BottomAppBar(
        notchMargin: 10,
        color: Colors.grey[50],
        shape: const CircularNotchedRectangle(),
        child: Container(
          height: 60,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              bottomNavigationBarItem(context, 'Home', 0),
              bottomNavigationBarItem(context, 'Send', 1),
              Spacer(),
              bottomNavigationBarItem(context, 'Notification', 3),
              bottomNavigationBarItem(context, 'Profil', 4),
            ],
          ),
        ),
      ),
    );
  }

  Expanded bottomNavigationBarItem(BuildContext context, String icon, int index,
      {Color color}) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          _onItemTapped(index);
        },
        child: SvgPicture.asset(
          'asset/svg/${icon}.svg',
          color: _selectedIndex == index ? context.colors.primary : null,
        ),
      ),
    );
  }
}
