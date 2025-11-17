import 'package:flutter/material.dart';
import 'package:flutterplayground/ui/core/widgets/app_bar/app_bar_back_button.dart';
import 'package:flutterplayground/ui/core/widgets/app_bar/custom_app_bar.dart';

class LinearProgressIndicatorPage extends StatelessWidget {
  const LinearProgressIndicatorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar.primaryContainer(
        title: Text('LinearProgressIndicator'),
        leading: AppBarBackButton(),
      ),
      body: Column(
        spacing: 30,
        children: [
          Text('LinearProgressIndicator'),
          LinearProgressIndicator(
            color: Theme.of(context).colorScheme.primary,
          ),
          Text('CircularProgressIndicator'),
          CircularProgressIndicator(),
        ],
      ),
    );
  }
}
