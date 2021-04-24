import 'package:flutter/material.dart';
import 'package:fluttermvvmtemplate/product/widget/bottomNavigation/bottom_navigation.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key key}) : super(key: key);
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String _sifre, _email;
  final formKey = GlobalKey<FormState>();
  bool autoControl = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 0),
        child: Form(
          key: formKey,
          autovalidate: autoControl,
          child: Container(
            height: double.infinity,
            child: ListView(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 0),
                  child: Align(
                    child: text(Colors.black),
                    alignment: Alignment.center,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 0),
                  child: img(),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 5),
                  child: formField("Email", "Email", TextInputType.emailAddress,
                      false, _emailKontrol),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 5),
                  child: formField("Şifre", "Şifre",
                      TextInputType.visiblePassword, true, _sifreKontrol),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: tarz(),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10, right: 40, left: 40),
                  child: googleAndTwitter(),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 8, horizontal: 50),
                      child: girisYap()),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 0),
                  child: sifreUnuttum(),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 0),
                  child: textEnd(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Text text(dColor) {
    Color color = dColor;
    return Text(
      "Giriş Yap",
      style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: color),
    );
  }

  Image img() {
    return Image.asset(
      "asset/image/onBoarding2Photo.jpg",
      height: 200,
    );
  }

  TextFormField formField(String dhintText, String dlabelText,
      TextInputType dnputType, bool dobsureText, dvalidatorFunc) {
    String hintText = dhintText;
    String labelText = dlabelText;
    TextInputType inputType = dnputType;
    bool obsureText = dobsureText;
    Function validatorFunc = dvalidatorFunc;
    return TextFormField(
      obscureText: obsureText, // şifre görünmezliği
      keyboardType: inputType,
      decoration: InputDecoration(
          fillColor: Colors.grey, hintText: hintText, labelText: labelText),
      validator: validatorFunc,
      onSaved: (value) {
        if (hintText == "Email") _email = value;
        if (hintText == "Şifre") _sifre = value;
      },
    );
  }

  Row tarz() {
    return Row(
      children: [
        Expanded(
          child: Divider(
            height: 10,
            thickness: 1,
            color: Colors.black,
            indent: 20,
            endIndent: 15,
          ),
        ),
        Text("ya da"),
        Expanded(
          child: Divider(
            height: 10,
            thickness: 1,
            color: Colors.black,
            indent: 15,
            endIndent: 20,
          ),
        ),
      ],
    );
  }

  Row googleAndTwitter() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        RaisedButton(
          elevation: 20,
          color: Colors.white,
          onPressed: () {},
          child: ClipOval(
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Container(
                width: 40,
                height: 40,
                child: Image.asset("asset/image/googleBlackLogo.jpg"),
              ),
            ),
          ),
          shape: CircleBorder(),
        ),
        RaisedButton(
          elevation: 20,
          color: Colors.white,
          onPressed: () {},
          child: ClipOval(
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Container(
                width: 40,
                height: 40,
                child: Image.asset("asset/image/twitterBlackLogo.jpg"),
              ),
            ),
          ),
          shape: CircleBorder(),
        ),
      ],
    );
  }

  RaisedButton girisYap() {
    return RaisedButton(
      onPressed: () {
        if (formKey.currentState.validate()) {
          formKey.currentState.save();
          debugPrint("Email: $_email \nŞifre: $_sifre");
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => BottomNavigation(),
            ),
          );
        } else {
          setState(() {
            autoControl = true;
          });
        }
      },
      color: Colors.black,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 17),
        child: text(Colors.white),
      ),
      shape: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(80))),
    );
  }

  TextButton sifreUnuttum() {
    return TextButton(
      onPressed: () {},
      child: Text(
        "Şifremi Unuttum ?",
        style: TextStyle(fontSize: 18),
      ),
    );
  }

  Row textEnd() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Eğer mevcut bir hesabın yoksa ",
          style: TextStyle(fontSize: 17),
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            "Kayıt Ol",
            style: TextStyle(fontSize: 17),
          ),
        ),
      ],
    );
  }

//kontroller
  String _emailKontrol(String mail) {
    Pattern pattern =
        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+";
    RegExp regex = new RegExp(pattern);
    if (!regex.hasMatch(mail))
      return "Geçersiz mail adresi";
    else
      return null;
  }

  String _sifreKontrol(String sifre) {
    if (sifre == "")
      return "Zorunlu";
    else
      return null;
  }
}
