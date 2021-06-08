import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:fluttermvvmtemplate/core/base/view/base_widget.dart';
import 'package:fluttermvvmtemplate/core/components/text/auto_locale_text.dart';
import 'package:fluttermvvmtemplate/core/extension/context_extension.dart';
import 'package:fluttermvvmtemplate/core/init/lang/locale_keys.g.dart';
import 'package:fluttermvvmtemplate/view/send_feed_view/viewmodel/send_feed_viewmodel.dart';
import '../../../core/extension/string_extension.dart';

class SendFeedView extends StatelessWidget {
  const SendFeedView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseView<SendFeedViewModel>(
      viewModel: SendFeedViewModel(),
      onModelReady: (model) {
        model.setContext(context);
      },
      onPageBuilder: (BuildContext context, SendFeedViewModel value) =>
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
                child: AutoLocaleText(
                  value: LocaleKeys.sendFeed_cancel.locale,
                  style: context.textTheme.button
                      .copyWith(color: context.colors.primary),
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
                      style: context.textTheme.button
                          .copyWith(color: context.colors.background),
                    ),
                  )),
            )
          ],
        ),
        body: Container(
            color: context.colors.background,
            child: Column(
              children: [
                Row(
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
                )
              ],
            )),
      ),
    );
  }
}
