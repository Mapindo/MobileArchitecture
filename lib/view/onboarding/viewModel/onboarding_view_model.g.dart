// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'onboarding_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$OnboardingViewModel on _OnboardingViewModelBase, Store {
  final _$currentIndexAtom =
      Atom(name: '_OnboardingViewModelBase.currentIndex');

  @override
  int get currentIndex {
    _$currentIndexAtom.reportRead();
    return super.currentIndex;
  }

  @override
  set currentIndex(int value) {
    _$currentIndexAtom.reportWrite(value, super.currentIndex, () {
      super.currentIndex = value;
    });
  }

  final _$_OnboardingViewModelBaseActionController =
      ActionController(name: '_OnboardingViewModelBase');

  @override
  void changeCurrentIndex(dynamic index) {
    final _$actionInfo = _$_OnboardingViewModelBaseActionController.startAction(
        name: '_OnboardingViewModelBase.changeCurrentIndex');
    try {
      return super.changeCurrentIndex(index);
    } finally {
      _$_OnboardingViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
currentIndex: ${currentIndex}
    ''';
  }
}
