import 'package:flutter/material.dart';
import 'package:fluttermvvmtemplate/core/base/model/base_view_model.dart';
import 'package:fluttermvvmtemplate/core/constants/enums/locale_keys_enum.dart';
import 'package:fluttermvvmtemplate/core/constants/navigation/navigation_constants.dart';
import 'package:fluttermvvmtemplate/view/onboarding/model/onboarding_model.dart';
import 'package:mobx/mobx.dart';
part 'onboarding_view_model.g.dart';

class OnBoardingViewModel = _OnBoardingViewModelBase with _$OnBoardingViewModel;

abstract class _OnBoardingViewModelBase with Store, BaseViewModel {
  void setContext(BuildContext context) => this.context = context;

  @override
  void init() {
    onboardingItem
        .add(OnBoardingModel('Etkinlikleri keşfetmeye başla', 'onBoard4'));
    onboardingItem
        .add(OnBoardingModel('Yeni etkinliklerden haberdar ol', 'onBoard3'));
    onboardingItem
        .add(OnBoardingModel('Etkinlikte yeni arkadaşlıklar kur', 'onBoard2'));
  }

  List<OnBoardingModel> onboardingItem = [];
  PageController sliderController = PageController();

  @observable
  int currentIndex = 0;

  @action
  void changeCurrentIndex(int index) => currentIndex = index;

  void get nextCurrentIndex {
    if (isChangeButton) {
      completeToOnBoard();
    } else {
      currentIndex += 1;
      sliderController.nextPage(
          duration: Duration(milliseconds: 500), curve: Curves.easeInOutExpo);
    }
  }

  bool get isChangeButton => currentIndex == onboardingItem.length - 1;

  @action
  Future<void> completeToOnBoard() async {
    // changeLoading();
    await localeManager.setBoolValue(PreferencesKeys.IS_FIRST_APP, true);
    // changeLoading();
    if (navigation.navigatorKey.currentState!.canPop()) {
      navigation.navigatorKey.currentState!.pop();
    } else {
      await navigation.navigateToPageClear(
          path: NavigationConstants.LOGIN_VIEW);
    }
  }
}
