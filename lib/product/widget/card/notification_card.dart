import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fluttermvvmtemplate/core/constants/app/app_constants.dart';
import '../../../core/extension/context_extension.dart';
import '../../../view/notification_view/model/notificaiton_model.dart';
import '../../helpers/dateDiff.dart';

List<UserList> userTag = [
  UserList(user: 'Fatih Emre Kalem', id: 1),
  UserList(user: 'Abdullah Oğuz', id: 2),
  UserList(user: 'Halil İbrahim Ulu', id: 3),
];

class NotificationCard extends StatelessWidget {
  final Notificaiton item;
  // BuildContext context;
  NotificationCard({
    Key key,
    @required this.item,
  }) : super(key: key);
  @override
  @override
  Widget build(BuildContext context) {
    // context = context;
    return Padding(
      padding: context.paddingLowVertical,
      child: Container(
        height: context.highValue,
        // color: Colors.grey[350],
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Flexible(
              fit: FlexFit.tight,
              flex: 1,
              child: CircleAvatar(
                backgroundColor:
                    item.isReady ? context.colors.primary : Colors.transparent,
                radius: context.width * 0.01,
              ),
            ),
            Flexible(
              fit: FlexFit.tight,
              flex: 2,
              child: CircleAvatar(
                  radius: context.highValue * 0.4,
                  backgroundImage: NetworkImage(item.image)
                  // child: Text('FK'),
                  ),
            ),
            Flexible(
              fit: FlexFit.tight,
              flex: 6,
              child: bodyText(
                  context, item.body, RegExp(ApplicationConstants.USER_TAG)),
              // child: ,
            ),
            Flexible(
              fit: FlexFit.tight,
              flex: 3,
              child: SizedBox(
                height: context.normalValue + 10,
                child: OutlinedButton.icon(
                  style: ButtonStyle(
                    padding: MaterialStateProperty.all(EdgeInsets.symmetric(
                        vertical: 0, horizontal: context.lowValue)),
                  ),
                  icon: Icon(
                    Icons.add,
                    size: context.normalValue,
                  ),
                  onPressed: () {
                    print('Takip et benii');
                  },
                  label: Text(
                    'Takip Et',
                    style: TextStyle(fontSize: context.normalValue),
                  ),
                ),
              ),
            ),
            Flexible(
              fit: FlexFit.tight,
              flex: 1,
              child: SizedBox(
                height: double.infinity,
                child: Text(
                  DateDiff(dateDiff: item.date).since,
                  style: context.textTheme.bodyText2.copyWith(
                    fontSize: context.normalValue * .9,
                    color: context.colors.onSecondary,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  // const user

  Widget bodyText(BuildContext context, String text, RegExp parse) {
    List<TextSpan> textList = text
        .split(' ')
        .map((item) => parse.hasMatch(item)
            ? tagTextSpan(
                // ignore: unrelated_type_equality_checks
                context,
                userTag
                    .firstWhere(
                        (element) => element.id == int.parse(item.substring(1)))
                    .user)
            : normaltextSpan(context, item))
        .toList();

    return Padding(
      padding: context.paddingLowHorizontal,
      child: Text.rich(
        TextSpan(
          text: '',
          children: textList,
        ),
      ),
    );
  }

  TextSpan normaltextSpan(BuildContext context, String text) {
    return TextSpan(
        text: ' $text',
        style: context.textTheme.bodyText1
            .copyWith(color: context.colors.onSecondary));
  }

  TextSpan tagTextSpan(BuildContext context, String text) {
    return TextSpan(
      text: text,
      recognizer: TapGestureRecognizer()..onTap = _onTopText,
      style: context.textTheme.bodyText1
          .copyWith(color: context.colors.secondaryVariant),
    );
  }

  _onTopText() => print('fatih');
}

class UserList {
  String user;
  int id;

  UserList({this.user, this.id});

  UserList.fromJson(Map<String, dynamic> json) {
    user = json['user'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['user'] = this.user;
    data['id'] = this.id;
    return data;
  }
}
