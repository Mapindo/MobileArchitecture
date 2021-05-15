import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttermvvmtemplate/core/extension/context_extension.dart';
import 'package:fluttermvvmtemplate/core/extension/string_extension.dart';
import 'package:fluttermvvmtemplate/core/init/lang/locale_keys.g.dart';
import 'package:fluttermvvmtemplate/view/notification_view/model/notificaiton_model.dart';

List<Notificaiton> notify = [
  Notificaiton(
      title: '',
      body: 'Seni Takip Ediyor',
      date: DateTime.now().toString(),
      isReady: false,
      image: '123',
      token: '123'),
  Notificaiton(
      title: '',
      body: 'Seni Takip Ediyor',
      date: DateTime.utc(2021 - 05 - 17).toString(),
      isReady: false,
      image: '123',
      token: '123'),
  Notificaiton(
      title: '',
      body: 'Seni Takip Ediyor',
      date: DateTime.utc(2021 - 04 - 17).toString(),
      isReady: false,
      image: '123',
      token: '123'),
];

class NotificationView extends StatelessWidget {
  const NotificationView({Key key}) : super(key: key);
  final empty = 'empty';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
              color: Colors.black87,
              icon: Icon(Icons.chevron_left_rounded),
              onPressed: () {}),
          title: Text(
            LocaleKeys.notificaiton_notificaitons.locale,
            style: context.textTheme.headline6
                .copyWith(fontWeight: FontWeight.w500),
          ),
        ),
        body: Container(
          padding: context.paddingNormalHorizontal,
          child: ListView.separated(
            separatorBuilder: (context, index) => Divider(),
            itemCount: notify.length,
            itemBuilder: (context, index) => ListTile(
              title: Text(notify[index].body),
            ),
          ),
        ));
  }

  Center emptyPage() => Center(child: SvgPicture.asset('Empty'.toSVG));
}
