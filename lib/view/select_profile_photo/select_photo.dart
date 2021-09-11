import 'package:image_picker/image_picker.dart';

class SelectPhoto {
  XFile? selectedPhoto;
  SelectPhoto({this.selectedPhoto});

  Map<String, dynamic> toMap() {
    return {"selectedPhoto": selectedPhoto};
  }

  SelectPhoto.fromMap(Map<String, dynamic> map)
      : selectedPhoto = map["selectedPhoto"];

  @override
  String toString() {
    return "selectedPhoto: $selectedPhoto";
  }
}
