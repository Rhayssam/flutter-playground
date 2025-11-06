import 'package:flutter/material.dart';
import 'package:flutterplayground/ui/core/widgets/app_bar/app_bar_back_button.dart';
import 'package:flutterplayground/ui/core/widgets/app_bar/custom_app_bar.dart';

class ExtendedFabPage extends StatelessWidget {
  const ExtendedFabPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar.primaryContainer(
        title: Text('Extended FAB'),
        leading: AppBarBackButton(),
      ),
      body: Container(),
    );
  }
}
