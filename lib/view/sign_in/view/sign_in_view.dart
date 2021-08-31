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
import 'package:fluttermvvmtemplate/product/widget/button/corner_rectangle_button.dart';
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
              Spacer(),
              Expanded(flex: 2, child: loginTextArea(context)),
              Expanded(
                flex: 5,
                child: svgPhotoArea(),
              ),
              Expanded(
                flex: 5,
                child: inputArea(context, viewModel),
              ),
              Expanded(
                child: forgotPasswordArea(context),
              ),
              Expanded(
                flex: 2,
                child: dividerArea(context),
              ),
              Expanded(
                flex: 2,
                child: circleButtonArea(context),
              ),
              Spacer(),
              Expanded(
                flex: 5,
                child: loginButtonArea(context),
              ),
              Spacer()
            ],
          ),
        ),
      ),
    );
  }

  Column loginButtonArea(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 3,
          child: CornerRectangleButton(
            onPress: () {},
            padding: EdgeInsets.symmetric(horizontal: context.height * 0.09),
            text: LocaleKeys.login_login.locale,
            textStyle: context.textTheme.headline6!
                .copyWith(color: context.colors.background),
          ),
        ),
        Expanded(
          flex: 4,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  AutoLocaleText(
                    value: LocaleKeys.login_ifYouDontHaveAccount.locale,
                  ),
                  GestureDetector(
                    onTap: () {
                      print('Register tapped');
                    },
                    child: AutoLocaleText(
                      style: context.textTheme.bodyText2!.copyWith(
                          fontWeight: FontWeight.w500,
                          color: context.colors.primary),
                      value: ' ${LocaleKeys.login_register.locale}',
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  Row circleButtonArea(BuildContext context) {
    return Row(
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
    );
  }

  Row dividerArea(BuildContext context) {
    return Row(
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
    );
  }

  Row forgotPasswordArea(BuildContext context) {
    return Row(
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
    );
  }

  Container inputArea(BuildContext context, LoginViewModel viewModel) {
    return Container(
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
              obsecureText: true,
              labelName: LocaleKeys.login_password.locale,
              controller: viewModel.password_text_controller,
            ),
          ),
        ],
      ),
    );
  }

  SvgPicture svgPhotoArea() => SvgPicture.asset('signIn'.toSVG);

  AutoLocaleText loginTextArea(BuildContext context) {
    return AutoLocaleText(
        value: LocaleKeys.login_tab1.locale,
        style: context.textTheme.headline6);
  }
}
