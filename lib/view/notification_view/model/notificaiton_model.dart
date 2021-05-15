import 'package:json_annotation/json_annotation.dart';
import 'package:vexana/vexana.dart';
part 'notificaiton_model.g.dart';

@JsonSerializable()
class Notificaiton extends INetworkModel<Notificaiton> {
  String title;
  String body;
  String token;
  String date;
  String image;
  bool isReady;

  Notificaiton({
    this.title,
    this.body,
    this.token,
    this.date,
    this.image,
    this.isReady,
  });

  @override
  Notificaiton fromJson(Map<String, Object> json) {
    return _$NotificaitonFromJson(json);
  }

  @override
  Map<String, Object> toJson() {
    // TODO: implement toJson
    throw _$NotificaitonToJson(this);
  }
}
