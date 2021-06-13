import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:fluttermvvmtemplate/core/base/view/base_widget.dart';
import 'package:fluttermvvmtemplate/core/components/text/auto_locale_text.dart';
import 'package:fluttermvvmtemplate/core/extension/context_extension.dart';
import 'package:fluttermvvmtemplate/core/init/lang/locale_keys.g.dart';
import 'package:fluttermvvmtemplate/view/send_feed_view/viewmodel/send_feed_viewmodel.dart';
import 'package:images_picker/images_picker.dart';
import '../../../core/extension/string_extension.dart';

class SendFeedView extends StatelessWidget {
  const SendFeedView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var res;
    return BaseView<SendFeedViewModel>(
      viewModel: SendFeedViewModel(),
      onModelReady: (model) {
        model.setContext(context);
      },
      onPageBuilder: (BuildContext context, SendFeedViewModel viewModel) =>
          Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          backgroundColor: context.colors.background,
          shadowColor: Colors.transparent,
          leading: Center(
            child: GestureDetector(
                onTap: () {
                  print('denemee');
                },
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: AutoLocaleText(
                    value: LocaleKeys.sendFeed_cancel.locale,
                    style: context.textTheme.button!
                        .copyWith(color: context.colors.primary),
                  ),
                )),
          ),
          actions: [
            Padding(
              padding: EdgeInsets.only(
                  bottom: context.mediaQuery.size.height * 0.014,
                  top: context.mediaQuery.size.height * 0.014,
                  right: context.lowValue),
              child: ElevatedButton(
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(13.0),
                  ))),
                  onPressed: () {},
                  child: Padding(
                    padding: context.paddingNormalHorizontal,
                    child: AutoLocaleText(
                      value: LocaleKeys.sendFeed_send.locale,
                      style: context.textTheme.button!
                          .copyWith(color: context.colors.background),
                    ),
                  )),
            )
          ],
        ),
        body: Container(
          color: context.colors.background,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                flex: 14,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 2,
                      child: CircleAvatar(
                        radius: 25,
                        child: ClipOval(
                          child: Image.network(
                            'https://avatars.githubusercontent.com/u/34376691?v=4',
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                        flex: 10,
                        child: TextFormField(
                          autofocus: true,
                          focusNode: viewModel.focus,
                          maxLines: 20,
                          decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide.none),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide.none),
                              labelStyle:
                                  TextStyle(fontWeight: FontWeight.w300),
                              hintStyle: TextStyle(
                                  color: Colors.black26,
                                  fontWeight: FontWeight.w500),
                              hintText:
                                  LocaleKeys.sendFeed_shareYourThought.locale),
                        ))
                  ],
                ),
              ),
              res ??
                  Container(
                    color: Colors.red,
                  ),
              Container(
                alignment: Alignment.centerRight,
                child: Container(
                  padding: context.paddingLowHorizontal,
                  child: ElevatedButton(
                      style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                          ),
                        ),
                        padding: MaterialStateProperty.all(
                          EdgeInsets.symmetric(
                              horizontal: 0,
                              vertical: context.mediaQuery.size.height * 0.020),
                        ),
                        backgroundColor:
                            MaterialStateProperty.all(context.colors.primary),
                      ),
                      child: Icon(Icons.camera_enhance,
                          color: context.colors.background),
                      onPressed: () {
                        showModalBottomSheet(
                            context: context,
                            builder: (BuildContext bc) {
                              return SafeArea(
                                child: Container(
                                  // ignore: unnecessary_new
                                  child: new Wrap(
                                    children: <Widget>[
                                      ListTile(
                                          leading: Icon(Icons.photo_library),
                                          title: Text('Photo Library'),
                                          onTap: () async {
                                            res = await ImagesPicker.pick(
                                                pickType: PickType.all,
                                                gif: true,
                                                quality: 0.8,
                                                maxSize: 500
                                                // record video max time
                                                );
                                          }),
                                      ListTile(
                                        leading: Icon(Icons.photo_camera),
                                        title: Text('Camera'),
                                        onTap: () {
                                          //  :
                                          Navigator.of(context).pop();
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            });
                      }),
                ),
              ),
              Spacer(
                flex: 13,
              )
            ],
          ),
        ),
      ),
    );
  }
}
