import 'package:flutter/material.dart';
import 'package:flutterplayground/config/constants/assets.dart';
import 'package:flutterplayground/ui/core/theme/theme_switch.dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            CircleAvatar(
              radius: 70,
              backgroundColor: Theme.of(context).colorScheme.onSurface,
              backgroundImage: AssetImage(Assets.dash),
            ),
            ThemeSwitch(),
          ],
        ),
      ),
    );
  }
}
