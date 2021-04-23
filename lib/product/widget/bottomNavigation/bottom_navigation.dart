import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
      child: BottomAppBar(
        elevation: 1,
        notchMargin: 10,
        color: Colors.amber,
        shape: const CircularNotchedRectangle(),
        child: Container(
          height: 60,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              bottomNavigationBarItem(),
              bottomNavigationBarItem(),
              Spacer(),
              bottomNavigationBarItem(),
              bottomNavigationBarItem(),
            ],
          ),
        ),
      ),
    );
  }

  Expanded bottomNavigationBarItem() {
    return Expanded(
      child: SvgPicture.asset("asset/svg/Home.svg"),
    );
  }
}
