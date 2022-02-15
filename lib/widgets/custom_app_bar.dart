import 'package:flutter/material.dart';

import '../shared/styles.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget? child;
  final List<Widget>? actions;
  final String title;
  final double height;

  const CustomAppBar({
    Key? key,
    this.child,
    this.actions,
    this.title = '',
    this.height = kToolbarHeight,
  }) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(height);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: kToolbarHeight,
      leading: const Icon(Icons.card_membership),
      actions: actions,
      centerTitle: false,
      title: Text(
        title,
        style: headlineStyle,
      ),
    );
  }
}
