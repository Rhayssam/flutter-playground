import 'package:flutter/material.dart';
import 'package:flutterplayground/ui/core/widgets/app_bar/custom_app_bar_styles.dart';

enum CustomAppBarThemeEnum { custom, primary, transparent, primaryContainer, surface }

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    this.actions,
    this.leading,
    this.title,
    this.theme,
  }) : customAppBarThemeEnum = CustomAppBarThemeEnum.custom;

  const CustomAppBar.transparent({
    super.key,
    this.actions,
    this.leading,
    this.title,
  }) : customAppBarThemeEnum = CustomAppBarThemeEnum.transparent,
       theme = null;

  const CustomAppBar.primary({
    super.key,
    this.actions,
    this.leading,
    this.title,
  }) : customAppBarThemeEnum = CustomAppBarThemeEnum.primary,
       theme = null;

  const CustomAppBar.primaryContainer({
    super.key,
    this.actions,
    this.leading,
    this.title,
  }) : customAppBarThemeEnum = CustomAppBarThemeEnum.primaryContainer,
       theme = null;

  const CustomAppBar.surface({
    super.key,
    this.actions,
    this.leading,
    this.title,
  }) : customAppBarThemeEnum = CustomAppBarThemeEnum.surface,
       theme = null;

  final CustomAppBarThemeEnum customAppBarThemeEnum;
  final List<Widget>? actions;
  final Widget? leading;
  final Widget? title;
  final AppBarTheme? theme;

  AppBarTheme? _getAppBarTheme(BuildContext context) {
    return switch (customAppBarThemeEnum) {
      CustomAppBarThemeEnum.custom => theme,
      CustomAppBarThemeEnum.primary => Theme.of(context).primaryAppBarTheme,
      CustomAppBarThemeEnum.transparent => Theme.of(context).transparentAppBarTheme,
      CustomAppBarThemeEnum.primaryContainer => Theme.of(context).primaryContainerAppBarTheme,
      CustomAppBarThemeEnum.surface => Theme.of(context).surfaceAppBarTheme,
    };
  }

  @override
  Widget build(BuildContext context) {
    final AppBarTheme? theme = _getAppBarTheme(context);
    return AppBar(
      elevation: theme?.elevation,
      iconTheme: theme?.iconTheme,
      backgroundColor: theme?.backgroundColor,
      actionsIconTheme: theme?.actionsIconTheme,
      titleTextStyle: theme?.titleTextStyle,
      centerTitle: theme?.centerTitle,
      shadowColor: theme?.shadowColor,
      foregroundColor: theme?.foregroundColor,
      surfaceTintColor: theme?.surfaceTintColor,
      shape: theme?.shape,
      leading: leading,
      title: title,
      actions: actions,
      automaticallyImplyLeading: false,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
