import 'package:flutter/material.dart';
import 'package:flutterplayground/ui/core/widgets/app_bar/app_bar_back_button.dart';
import 'package:flutterplayground/ui/core/widgets/app_bar/custom_app_bar.dart';

class SegmentedButtonPage extends StatelessWidget {
  const SegmentedButtonPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar.primaryContainer(
        title: Text('SegmentedButton'),
        leading: AppBarBackButton(),
      ),
      body: Container(),
    );
  }
}
