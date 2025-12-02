import 'package:flutter/material.dart';
import 'package:flutterplayground/ui/core/widgets/app_bar/app_bar_back_button.dart';
import 'package:flutterplayground/ui/core/widgets/app_bar/custom_app_bar.dart';

class BottomAppBarPage extends StatelessWidget {
  const BottomAppBarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar.primaryContainer(
        title: Text('CommonButtons'),
        leading: AppBarBackButton(),
      ),
      body: Column(
        children: [
          BottomAppBar(
            color: Theme.of(context).colorScheme.primary,
            child: Row(
              children: <Widget>[
                IconButton(
                  tooltip: 'Open navigation menu',
                  icon: const Icon(Icons.menu),
                  onPressed: () {},
                ),
                IconButton(tooltip: 'Search', icon: const Icon(Icons.search), onPressed: () {}),
                IconButton(tooltip: 'Favorite', icon: const Icon(Icons.favorite), onPressed: () {}),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
