import 'package:flutter/material.dart';
import 'package:fluttermvvmtemplate/core/base/view/base_widget.dart';
import 'package:fluttermvvmtemplate/view/sign_up/viewModel/sign_up_view_model.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseView<SignUpViewModel>(
      viewModel: SignUpViewModel(),
      onModelReady: (model) {
        // model.setContext(context);
        // model.init();
      },
      onPageBuilder: (BuildContext context, SignUpViewModel value) => Scaffold(
        body: Center(child: Text('Register')),
      ),
    );
  }
}
