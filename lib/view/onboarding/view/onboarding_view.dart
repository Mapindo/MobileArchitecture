import 'dart:ui';

import 'package:flutter/material.dart';

class OnBoardingPage extends StatefulWidget {
  OnBoardingPage({Key key}) : super(key: key);

  @override
  _OnBoardingPageState createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  List<Map<String, String>> splashData = [
    {
      "header": "Your thoughts. ",
      "colorHeader": "Clanner",
      "color": "Colors.blue",
      "desc": "Bring clarity to your thougths",
      "photo": "assets/images/onBoarding1Photo.jpg"
    },
    {
      "header": "Your thoughts. ",
      "colorHeader": "Clanner",
      "color": "Colors.blue",
      "desc": "Bring clarity to your thougths",
      "photo": "assets/images/onBoarding2Photo.jpg"
    },
    {
      "header": "Your thoughts. ",
      "colorHeader": "Clanner",
      "color": "Colors.blue",
      "desc": "Bring clarity to your thougths",
      "photo": "assets/images/onBoarding3Photo.jpg"
    },
    {
      "header": "Your thoughts. ",
      "colorHeader": "Clanner",
      "color": "Colors.blue",
      "desc": "Bring clarity to your thougths",
      "photo": "assets/images/onBoarding4Photo.jpg"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: ClipRRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
              child: Container(
                color: Colors.white10.withOpacity(0.1),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(top: 35),
                        child: splashScreenLists(),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 7),
                      child: login(),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 50),
                      child: signUp(),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Container splashScreenLists() {
    return Container(
      child: PageView.builder(
        itemCount: splashData.length,
        itemBuilder: (context, index) => OnboardingSliderCard(
          header: splashData[index]["header"],
          desc: splashData[index]["desc"],
          photo: splashData[index]["photo"],
          colorHeader: splashData[index]["colorHeader"],
        ),
      ),
    );
  }

  RaisedButton login() {
    return RaisedButton(
      onPressed: () {
        debugPrint("Logın  çalıştı");
        Navigator.push(
          context,
          MaterialPageRoute(
              // builder: (context) => LoginScreen(),
              ),
        );
      },
      color: Colors.black,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
        child: Text(
          "Login",
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
          ),
        ),
      ),
      shape: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(20.0))),
    );
  }

  TextButton signUp() {
    return TextButton(
      onPressed: () {
        debugPrint("Sign up çalıştı");
        Navigator.push(
          context,
          MaterialPageRoute(
              // builder: (context) => SignUp(),
              ),
        );
      },
      child: Text(
        "SignUp",
        style: TextStyle(fontSize: 30, color: Colors.black),
      ),
    );
  }
}

class OnboardingSliderCard extends StatelessWidget {
  final String header;
  final String colorHeader;
  final String desc;
  final String photo;
  final String index;
  final String color;
  const OnboardingSliderCard({
    Key key,
    this.header,
    this.desc,
    this.photo,
    this.index,
    this.colorHeader,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 20, bottom: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  header,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Text(
                  colorHeader,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20, bottom: 15),
            child: Text(
              desc,
              style: TextStyle(fontSize: 20),
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 20),
            child: Image.asset("${photo.toString()}"),
          ),
        ],
      ),
    );
  }
}
