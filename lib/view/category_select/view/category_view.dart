import 'package:flutter/material.dart';
import 'package:fluttermvvmtemplate/core/base/view/base_widget.dart';
import 'package:fluttermvvmtemplate/core/extension/context_extension.dart';
import 'package:fluttermvvmtemplate/product/widget/base_scaffold/base_scaffold.dart';
import 'package:fluttermvvmtemplate/view/category_select/view_model/category_view_model.dart';

class CategorySelect extends StatelessWidget {
  const CategorySelect({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseView<CategorySelectViewModel>(
      viewModel: CategorySelectViewModel(),
      onModelReady: (model) {
        model.setContext(context);
      },
      onPageBuilder: (BuildContext context, CategorySelectViewModel value) =>
          CustomScaffold(
        bottom_safe_area_value: false,
        top_safe_area_value: false,
        appbar: AppBar(
          foregroundColor: Colors.white,
          backgroundColor: Colors.white,
          shadowColor: Colors.transparent,
          actions: [
            Text('Atla', style: context.textTheme.headline1),
            Text('denme')
          ],
          leading: Icon(
            Icons.arrow_back_ios_new,
            size: 22,
          ),
        ),
        widget: Container(
          color: context.colors.background,
        ),
      ),
    );
  }
}
