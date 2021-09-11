import 'package:flutter/material.dart';
import 'package:fluttermvvmtemplate/core/base/model/base_view_model.dart';
import 'package:mobx/mobx.dart';

part 'sign_up_view_model.g.dart';

class SignUpViewModel = _SignUpViewModelBase with _$SignUpViewModel;

abstract class _SignUpViewModelBase with Store, BaseViewModel {
  @override
  void setContext(BuildContext context) => this.context = context;

  @override
  void init() {
    // loginService = LoginService(VexanaManager.instance.networkManager);
    // emailController = TextEditingController();
    // passwordController = TextEditingController();
  }
}
