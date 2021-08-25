import 'package:flutter/material.dart';
import 'package:fluttermvvmtemplate/core/base/model/base_view_model.dart';
import 'package:mobx/mobx.dart';
part 'login_view_model.g.dart';

class LoginViewModel = _LoginViewModelBase with _$LoginViewModel;

abstract class _LoginViewModelBase with Store, BaseViewModel {
  var email_text_controller = TextEditingController();
  var password_text_controller = TextEditingController();

  void setContext(BuildContext context) => this.context = context;
  void init() {}
}
