import 'package:flutter/material.dart';
import 'package:flutterplayground/ui/core/widgets/dialogs/custom_dialog.dart';

class DialogManager {
  DialogManager._(BuildContext context) : _context = context;

  final BuildContext _context;

  static DialogManager of(BuildContext context) {
    return DialogManager._(context);
  }

  Future<T?> showCustomDialog<T>({
    bool barrierDismissible = true,
    required Widget title,
    required Widget content,
    required List<Widget> actions,
    Icon? icon,
    double iconBottomMargin = 25,
    double titleBottomMargin = 15,
    double contentBottomMargin = 25,
    double actionsSpacing = 20,
    CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center,
    MainAxisAlignment mainAxisAlignment = MainAxisAlignment.center,
    MainAxisAlignment actionAlignment = MainAxisAlignment.spaceAround,
  }) {
    return showDialog<T>(
      context: _context,
      barrierDismissible: barrierDismissible,
      builder: (context) {
        return CustomDialog(
          title: title,
          actionAlignment: actionAlignment,
          crossAxisAlignment: crossAxisAlignment,
          icon: icon,
          mainAxisAlignment: mainAxisAlignment,
          iconBottomMargin: iconBottomMargin,
          titleBottomMargin: titleBottomMargin,
          contentBottomMargin: contentBottomMargin,
          actionsSpacing: actionsSpacing,
          content: content,
          actions: actions,
        );
      },
    );
  }
}
