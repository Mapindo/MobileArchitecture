import 'dart:ui';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttermvvmtemplate/core/base/view/base_widget.dart';
import 'package:fluttermvvmtemplate/core/extension/context_extension.dart';
import 'package:fluttermvvmtemplate/core/extension/string_extension.dart';
import 'package:fluttermvvmtemplate/view/onboarding/model/onboarding_model.dart';
import 'package:fluttermvvmtemplate/view/onboarding/viewModel/onboarding_view_model.dart';
import 'package:fluttermvvmtemplate/view/sign_in/view/sign_in_view.dart';
import 'package:fluttermvvmtemplate/view/sign_up/view/sign_up_view.dart';

class OnBoardingPage extends StatefulWidget {
  OnBoardingPage({Key? key}) : super(key: key);

  @override
  _OnBoardingPageState createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  @override
  Widget build(BuildContext context) {
    return BaseView<OnBoardingViewModel>(
      viewModel: OnBoardingViewModel(),
      onModelReady: (model) {
        model.setContext(context);
        model.init();
      },
      onPageBuilder: (BuildContext context, OnBoardingViewModel viewModel) =>
          Scaffold(
              body: Column(
        children: [
          Spacer(),
          Expanded(
              flex: 10,
              child: PageView.builder(
                  itemCount: viewModel.onboardingItem.length,
                  controller: viewModel.sliderController,
                  onPageChanged: (index) => viewModel.changeCurrentIndex(index),
                  itemBuilder: (context, index) => buildContentSlider(
                      context, viewModel.onboardingItem[index]))),
          Expanded(
            flex: 1,
            child: ListView.builder(
                itemCount: 3,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => Observer(builder: (_) {
                      return Padding(
                        padding: context.paddingLow * .5,
                        child: CircleAvatar(
                          radius: viewModel.currentIndex == index
                              ? context.width * 0.015
                              : context.width * 0.01,
                          backgroundColor: context.colors.primary.withOpacity(
                              viewModel.currentIndex == index ? 1 : .2),
                        ),
                      );
                    })),
          ),
          Expanded(
            flex: 1,
            child: Container(
              width: context.width * .5,
              height: 10,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(context.normalValue),
                  ),
                ),
                child: Observer(builder: (_) {
                  return Text(
                    viewModel.isChangeButton ? 'Giriş Yap' : 'İleri',
                    style: context.textTheme.subtitle1!
                        .copyWith(color: Colors.white),
                  );
                }),
                onPressed: () {
                  viewModel.nextCurrentIndex;
                },
              ),
            ),
          ),
          Spacer()
        ],
      )),
    );
  }

  Container buildContentSlider(BuildContext context, OnBoardingModel item) {
    return Container(
      child: Column(
        children: [
          Container(
            padding: context.paddingMediumVertical,
            child: AutoSizeText(
              item.title,
              style: context.textTheme.headline5!
                  .copyWith(color: context.colors.onSurface),
            ),
          ),
          SvgPicture.asset(
            item.image.toSVG,
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }

  // Padding dottedCircle(BuildContext context, bool isActive) {
  //   return Padding(
  //     padding: context.paddingLow * .5,
  //     child: Container(
  //       height: context.normalValue * .75,
  //       width: context.normalValue * .75,
  //       decoration: BoxDecoration(
  //         color: isActive ? context.colors.primary : context.colors.onSecondary,
  //         borderRadius: BorderRadius.all(
  //           Radius.circular(context.height),
  //         ),
  //       ),
  //     ),
  //   );
  // }
}
