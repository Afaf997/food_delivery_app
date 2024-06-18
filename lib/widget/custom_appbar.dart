import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final double toolbarHeight;
  final Color backgroundColor;
  final IconData leadingIcon;
  final VoidCallback onLeadingPressed;

  const CustomAppBar({
    Key? key,
    required this.title,
    this.toolbarHeight = 80.0,
    this.backgroundColor = Colors.white,
    this.leadingIcon = Icons.arrow_back_ios_new_outlined,
    required this.onLeadingPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: toolbarHeight,
      backgroundColor: backgroundColor,
      elevation: 0,
      title: Text(
        title,
        style: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      centerTitle: true,
      leading: IconButton(
        icon: Icon(leadingIcon),
        onPressed: onLeadingPressed,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(toolbarHeight);
}
