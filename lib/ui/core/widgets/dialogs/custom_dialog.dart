import 'package:flutter/material.dart';

class CustomDialog extends StatelessWidget {
  const CustomDialog({
    super.key,
    required this.title,
    required this.content,
    required this.actions,
    this.iconBottomMargin = 25,
    this.titleBottomMargin = 15,
    this.contentBottomMargin = 25,
    this.icon,
    this.actionsSpacing = 20,
    this.crossAxisAlignment = CrossAxisAlignment.center,
    this.mainAxisAlignment = MainAxisAlignment.center,
    this.actionAlignment = MainAxisAlignment.spaceAround,
  });

  final Icon? icon;
  final Widget? title;
  final Widget content;
  final List<Widget> actions;
  final double actionsSpacing;
  final double iconBottomMargin;
  final double titleBottomMargin;
  final double contentBottomMargin;
  final MainAxisAlignment mainAxisAlignment;
  final CrossAxisAlignment crossAxisAlignment;
  final MainAxisAlignment actionAlignment;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    return Align(
      alignment: Alignment.center,
      child: Material(
        color: Colors.transparent,
        child: Container(
          padding: EdgeInsets.all(24),
          constraints: BoxConstraints(
            maxWidth: 340,
          ),
          decoration: BoxDecoration(
            color: theme.colorScheme.primaryContainer,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            mainAxisAlignment: mainAxisAlignment,
            crossAxisAlignment: crossAxisAlignment,
            mainAxisSize: MainAxisSize.min,
            children: [
              icon ?? SizedBox.shrink(),
              SizedBox(height: iconBottomMargin),
              title ?? SizedBox.shrink(),
              SizedBox(height: titleBottomMargin),
              content,
              SizedBox(height: contentBottomMargin),
              Row(
                spacing: actionsSpacing,
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: actionAlignment,
                children: actions,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
