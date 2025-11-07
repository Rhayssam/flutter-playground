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
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Center(
            child: Column(
              spacing: 15,
              children: [
                FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    'FloatingActionButton estendido',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.displaySmall,
                  ),
                ),
                Divider(color: Theme.of(context).colorScheme.outline),
                Text('O FAB podendo adicionar um label'),
                FloatingActionButton.extended(
                  onPressed: () {},
                  icon: Icon(Icons.add),
                  label: Text('data'),
                  elevation: 10,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
