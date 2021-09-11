import 'package:flutter/material.dart';
import 'package:fluttermvvmtemplate/core/base/model/base_view_model.dart';
import 'package:mobx/mobx.dart';
part 'category_view_model.g.dart';

class CategorySelectViewModel = _CategorySelectViewModelBase
    with _$CategorySelectViewModel;

abstract class _CategorySelectViewModelBase with Store, BaseViewModel {
  void setContext(BuildContext context) => this.context = context;
  void init() {}
}
