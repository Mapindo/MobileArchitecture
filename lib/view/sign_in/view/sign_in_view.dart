import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:fluttermvvmtemplate/core/base/view/base_widget.dart';
import 'package:fluttermvvmtemplate/core/components/text/auto_locale_text.dart';
import 'package:fluttermvvmtemplate/core/components/text_input/text_input.dart';
import 'package:fluttermvvmtemplate/core/extension/context_extension.dart';
import 'package:fluttermvvmtemplate/core/init/lang/locale_keys.g.dart';
import 'package:fluttermvvmtemplate/product/widget/base_scaffold/base_scaffold.dart';
import 'package:fluttermvvmtemplate/product/widget/button/circle_button.dart';
import 'package:fluttermvvmtemplate/view/sign_in/view_model/login_view_model.dart';
import '../../../core/extension/string_extension.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseView<LoginViewModel>(
      viewModel: LoginViewModel(),
      onModelReady: (model) {
        model.setContext(context);
      },
      onPageBuilder: (BuildContext context, LoginViewModel viewModel) =>
          CustomScaffold(
        safe_area_background: context.colors.background,
        bottom_safe_area_value: false,
        top_safe_area_value: true,
        background_color: context.colors.background,
        widget: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: SizedBox(),
              ),
              Expanded(
                  flex: 2,
                  child: AutoLocaleText(
                      value: LocaleKeys.login_tab1.locale,
                      style: context.textTheme.headline6)),
              Expanded(
                flex: 6,
                child: SvgPicture.asset('signIn'.toSVG),
              ),
              Expanded(
                flex: 5,
                child: Container(
                  child: Column(
                    children: [
                      Padding(
                        padding: context.paddingNormalHorizontal,
                        child: TextInputWidget(
                          labelName: LocaleKeys.login_email.locale,
                          controller: viewModel.email_text_controller,
                        ),
                      ),
                      Padding(
                        padding: context.paddingNormalHorizontal,
                        child: TextInputWidget(
                          labelName: LocaleKeys.login_password.locale,
                          controller: viewModel.password_text_controller,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: context.mediumValue),
                    child: GestureDetector(
                      onTap: () {
                        print('ŞİFREMİ UNUTTUM TAPPED');
                      },
                      child: Text(
                        LocaleKeys.login_forgotText.locale,
                        style: context.textTheme.button,
                        textAlign: TextAlign.right,
                      ),
                    ),
                  ),
                ],
              ),
              Expanded(
                flex: 4,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      color: context.colors.onSecondary,
                      height: 2,
                      width: context.width * 0.27,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        LocaleKeys.login_or.locale,
                        style: context.textTheme.bodyText2,
                      ),
                    ),
                    Container(
                      color: context.colors.onSecondary,
                      height: 2,
                      width: context.width * 0.27,
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 3,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CustomCircleButtton(
                      buttonColor: context.colors.background,
                      iconData: FontAwesome.google,
                      iconColor: context.colors.primary,
                      paddingValue: 14,
                      size: 32,
                      onPressed: () {},
                    ),
                    CustomCircleButtton(
                      buttonColor: context.colors.background,
                      iconData: FontAwesome.twitter,
                      iconColor: context.colors.primary,
                      paddingValue: 14,
                      size: 32,
                      onPressed: () {},
                    )
                  ],
                ),
              ),
              Expanded(flex: 5, child: SizedBox())
            ],
          ),
        ),
      ),
    );
  }
}
