import 'dart:io';

import 'package:flutter/material.dart';

import 'package:fluttermvvmtemplate/core/extension/context_extension.dart';
import 'package:fluttermvvmtemplate/view/category_select/category.dart';
import 'package:fluttermvvmtemplate/view/select_profile_photo/select_photo.dart';
import 'package:fluttermvvmtemplate/view/select_profile_photo/select_photo_view_model.dart';
import 'package:provider/provider.dart';

class SelectPhotoView extends StatefulWidget {
  SelectPhotoView({Key? key}) : super(key: key);

  @override
  _SelectPhotoState createState() => _SelectPhotoState();
}

class _SelectPhotoState extends State<SelectPhotoView> {
  final photo = SelectPhoto();
  @override
  Widget build(BuildContext context) {
    final _selectPhotoViewModel = Provider.of<SelectPhotoViewModel>(context);
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Spacer(flex: 1),
            Expanded(
              flex: 1,
              child: h1text(),
            ),
            Expanded(
              flex: 2,
              child: textColumn(),
            ),
            Expanded(
              flex: 5,
              child: photoColumn(_selectPhotoViewModel),
            ),
            Spacer(flex: 1),
            Expanded(
              flex: 1,
              child: butonFinish(),
            ),
            Spacer(flex: 1),
          ],
        ),
      ),
    );
  }

  Text h1text() {
    return Text("Profil fotoğrafını seç",
        style: context.textTheme.headline4!.copyWith(color: Colors.black));
  }

  Column textColumn() {
    return Column(
      children: [
        Expanded(
          flex: 1,
          child: Text("Profilini tamamlamak için son adım!",
              style: TextStyle(fontSize: 16)),
        ),
        Expanded(
          flex: 1,
          child: Text("Hemen profil fotoğrafını yükleyerek etkinlikleri",
              style: TextStyle(fontSize: 16)),
        ),
        Expanded(
          flex: 3,
          child: Text(" keşfetmeye başlayabilirsin",
              style: TextStyle(fontSize: 16)),
        ),
      ],
    );
  }

  Column photoColumn(SelectPhotoViewModel selectPhotoViewModel) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
            flex: 2,
            child: IconButton(
                icon: Icon(
                  Icons.arrow_drop_down,
                  color: Colors.indigo.shade300,
                  size: 50,
                ),
                iconSize: 50,
                onPressed: () {})),
        Expanded(
          flex: 4,
          child: GestureDetector(
              onTap: () {
                bottomSheat(selectPhotoViewModel);
              },
              child: CircleAvatar(
                radius: 80,
                backgroundImage: imageProvider(selectPhotoViewModel),
              )),
        ),
        Expanded(
          flex: 2,
          child: IconButton(
            icon: Icon(
              Icons.arrow_drop_up,
              color: Colors.indigo.shade300,
            ),
            iconSize: 50,
            onPressed: () {},
          ),
        ),
      ],
    );
  }

  ImageProvider imageProvider(SelectPhotoViewModel selectPhotoViewModel) {
    if (selectPhotoViewModel.profilPhoto == null) {
      return AssetImage("asset/image/avatar.jpg");
    } else {
      return FileImage(File(selectPhotoViewModel.profilPhoto!.path));
    }
  }

  RaisedButton butonFinish() {
    return RaisedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Category(),
          ),
        );
      },
      child: Text(
        "İlerle",
        style: TextStyle(color: Colors.white, fontSize: 20),
      ),
      color: Colors.black,
      shape: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(30.0))),
    );
  }

  bottomSheat(SelectPhotoViewModel selectPhotoViewModel) {
    showModalBottomSheet(
      enableDrag: false,
      context: context,
      builder: (context) {
        return Container(
          height: MediaQuery.of(context).size.height * 0.25,
          child: Column(mainAxisSize: MainAxisSize.min, children: [
            ListTile(
              leading: Icon(
                Icons.camera,
                color: Colors.grey,
              ),
              title: Text(
                "Kameradan seç",
                style: context.theme.textTheme.headline5,
              ),
              onTap: () {
                Navigator.pop(context);
                selectPhotoViewModel.selectPhotoFromCamera();
              },
            ),
            ListTile(
              leading: Icon(
                Icons.image,
                color: Colors.grey,
              ),
              title: Text(
                "Galeriden seç",
                style: context.theme.textTheme.headline5,
              ),
              onTap: () {
                Navigator.pop(context);
                selectPhotoViewModel.selectPhotoFromGaleri();
              },
            ),
          ]),
        );
      },
    );
  }
}
