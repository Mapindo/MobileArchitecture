import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  String adSoyad, kullaniciAdi, emailAdress, sifre, sifreTekrar, telefonNo;
  bool autoControl = false;

  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: 20, right: 20, top: 17),
          child: Form(
            key: formKey,
            autovalidate: autoControl,
            child: ListView(
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Text("Kayıt Ol",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 25)),
                ),
                Image.asset(
                  "assets/images/onBoarding1Photo.jpg",
                  height: 170,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                      "   Sadece 2 dakikanı ayırarak Mappindo\nhesabı oluştur ve güncel etkinlikleri takip et"),
                ),
                Padding(
                    padding: EdgeInsets.only(top: 0),
                    child: formField("Ad", "Ad Soyad", TextInputType.name,
                        false, _isimKontrol)),
                Padding(
                    padding: EdgeInsets.only(top: 0),
                    child: formField("Kullanıcı", "Kullanıcı Adı",
                        TextInputType.name, false, _isimKontrol)),
                Padding(
                    padding: EdgeInsets.only(top: 0),
                    child: formField("Email", "Email",
                        TextInputType.emailAddress, false, _emailKontrol)),
                Padding(
                    padding: EdgeInsets.only(top: 0),
                    child: formField("Şifre", "Şifre",
                        TextInputType.visiblePassword, true, _sifreControl)),
                Padding(
                    padding: EdgeInsets.only(top: 0),
                    child: formField("Şifre", "Şifre Tekrarı",
                        TextInputType.visiblePassword, true, _sifreControl)),
                Padding(
                    padding: EdgeInsets.only(top: 0),
                    child: formField("Telefon", "Telefon Numaranız",
                        TextInputType.phone, false, _phoneControl)),
                Padding(
                  padding: EdgeInsets.only(bottom: 15),
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 80, vertical: 0),
                    child: kayitOl(),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  RaisedButton kayitOl() {
    return RaisedButton(
      onPressed: () {
        if (formKey.currentState.validate()) {
          formKey.currentState.save();

          debugPrint(
              "Ad Soyad: $adSoyad \nKullanıcı Adı: $kullaniciAdi \nEmail: $emailAdress\nŞifre: $sifre\nŞifre tekrarı: $sifreTekrar\nTelefon Numarası: $telefonNo");
        } else {
          setState(() {
            autoControl = true;
          });
        }
      },
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 10),
        child: Text(
          "Kayıt Ol",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
      ),
      color: Colors.black,
      shape: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(20.0))),
    );
  }

  TextFormField formField(String dhintText, String dlabelText,
      TextInputType dnputType, bool dobsureText, dvalidatorFunc) {
    String hintText = dhintText;
    String labelText = dlabelText;
    TextInputType inputType = dnputType;
    bool obsureText = dobsureText;
    Function validatorFunc = dvalidatorFunc;
    int maxLength;
    if (hintText == "Telefon") {
      maxLength = 11;
    } else
      maxLength = null;

    return TextFormField(
        obscureText: obsureText, // şifre görünmezliği
        keyboardType: inputType,
        decoration: InputDecoration(hintText: hintText, labelText: labelText),
        validator: validatorFunc,
        maxLength: maxLength,
        onSaved: (value) {
          if (hintText == "Ad") adSoyad = value;
          if (hintText == "Email") emailAdress = value;
          if (hintText == "Kullanıcı") kullaniciAdi = value;
          if (hintText == "Şifre") sifre = value;
          if (labelText == "Şifre Tekrarı") sifreTekrar = value;
          if (hintText == "Telefon") telefonNo = value;
        });
  }

  // Kontroller
  String _emailKontrol(String mail) {
    Pattern pattern =
        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+";
    RegExp regex = new RegExp(pattern);
    if (!regex.hasMatch(mail))
      return "Geçersiz mail adresi";
    else
      return null;
  }

  String _isimKontrol(String name) {
    if (name.length < 3)
      return "En az 3 harf olmalıdır";
    else
      return null;
    /**
     * RegExp regex = RegExp("^[a-zA-Z]+");
    if (!regex.hasMatch(name))
      return "İsim sadece harflerden oluşmalıdır.";
    else
      return null;
     */
  }

  String _phoneControl(String phone) {
    if (phone.length < 11)
      return "Telefon numarası hatalı";
    else
      return null;
  }

  String _sifreControl(String sifre) {
    if (sifre.length < 8)
      return "Sifreniz en az 8 karakter olmalıdır";
    else
      return null;
  }

  String _sifreTekrarControl(String sifreTekrari) {
    if (sifre != sifreTekrar)
      return "hata";
    else
      return null;
  }
}
