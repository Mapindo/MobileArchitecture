import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../core/init/theme/light/color_scheme_light.dart';
import '../../../view/home/view/home_view.dart';
// import '../../../core/extension/string_extension.dart';

class BottomNavigation extends StatelessWidget {
  BottomNavigation({
    Key key,
  }) : super(key: key);
  final color = ColorSchemeLight.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: buildFloatingActionButton(),
      bottomNavigationBar: buildBottomAppBar(),
      body: HomeView(),
    );
  }

  FloatingActionButton buildFloatingActionButton() {
    return FloatingActionButton(
        child: SvgPicture.asset('asset/svg/Network.svg'),
        backgroundColor: color.slate_gray,
        elevation: 1,
        onPressed: () {
          print('Click');
        });
  }

  Widget buildBottomAppBar() {
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
              bottomNavigationBarItem('Home'),
              bottomNavigationBarItem('Send'),
              Spacer(),
              bottomNavigationBarItem('Notification'),
              bottomNavigationBarItem('Profil'),
            ],
          ),
        ),
      ),
    );
  }

  Expanded bottomNavigationBarItem(String icon, {Color color}) {
    return Expanded(
      child: SvgPicture.asset(
        'asset/svg/${icon}.svg',
        color: color,
      ),
    );
  }
}
