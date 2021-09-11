import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

enum PhotoState { Idle, Busy }

// idle boşta
// busy meşgul
class SelectPhotoViewModel with ChangeNotifier {
  PhotoState _state = PhotoState.Idle;

  XFile? profilPhoto;
  set state(PhotoState value) {
    _state = value;
    notifyListeners();
  }

  Future<void> selectPhotoFromCamera() async {
    try {
      state = PhotoState.Busy;
      ImagePicker _picker = ImagePicker();
      XFile? _newPhoto = await _picker.pickImage(source: ImageSource.camera);

      profilPhoto = _newPhoto;
    } catch (e) {
      print(e);
    } finally {
      state = PhotoState.Idle;
    }
  }

  Future<void> selectPhotoFromGaleri() async {
    try {
      state = PhotoState.Busy;
      ImagePicker _picker = ImagePicker();
      XFile? _newPhoto = await _picker.pickImage(source: ImageSource.gallery);
      profilPhoto = _newPhoto;
    } catch (e) {
      print(e);
    } finally {
      state = PhotoState.Idle;
    }
  }
}
