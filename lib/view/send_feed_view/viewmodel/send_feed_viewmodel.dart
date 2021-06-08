import 'package:flutter/material.dart';
import 'package:fluttermvvmtemplate/core/base/model/base_view_model.dart';
import 'package:mobx/mobx.dart';
part 'send_feed_viewmodel.g.dart';

class SendFeedViewModel = _SendFeedViewModelBase with _$SendFeedViewModel;

abstract class _SendFeedViewModelBase with Store, BaseViewModel {
  void setContext(BuildContext context) => this.context = context;
  void init() {}
}
