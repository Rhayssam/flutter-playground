import 'package:flutter/material.dart';
import 'package:flutterplayground/ui/core/widgets/app_bar/app_bar_back_button.dart';
import 'package:flutterplayground/ui/core/widgets/app_bar/custom_app_bar.dart';

class BadgePage extends StatelessWidget {
  const BadgePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar.primaryContainer(
        title: Text('Badge'),
        leading: AppBarBackButton(),
      ),
      body: Center(
        child: Column(
          children: [
            IconButton(
              icon: const Badge(
                label: Text('Your label'),
                backgroundColor: Colors.blueAccent,
                child: Icon(Icons.receipt),
              ),
              onPressed: () {},
            ),
            const SizedBox(height: 20),
            IconButton(
              icon: Badge.count(count: 1, child: const Icon(Icons.notifications)),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
