import 'package:flutter/material.dart';
import 'package:flutterplayground/ui/core/widgets/app_bar/app_bar_back_button.dart';
import 'package:flutterplayground/ui/core/widgets/app_bar/custom_app_bar.dart';

class IconButtonPage extends StatelessWidget {
  const IconButtonPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar.primaryContainer(
        title: Text('IconButton'),
        leading: AppBarBackButton(),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Center(
            child: Column(
              children: [
                Text(
                  'IconButton (Botão de ícone)',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.displaySmall,
                ),
                Divider(color: Theme.of(context).colorScheme.outline),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.abc),
                ),
                Ink(
                  decoration: ShapeDecoration(
                    shape: CircleBorder(),
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  child: IconButton(
                    color: Theme.of(context).colorScheme.onPrimary,
                    onPressed: () {},
                    icon: Icon(Icons.abc),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
