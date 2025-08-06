import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({
    super.key,
    required this.title,
    this.subTitle,
    this.leading,
    required this.icon,
    this.tileColor,
    this.textColor,
    required this.borderRadius,
  });
  final String title;
  final Widget? subTitle;
  final Widget? leading;
  final IconData icon;
  final Color? tileColor;
  final Color? textColor;
  final double borderRadius;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius),
        color: tileColor,
      ),
      child: ListTile(
        leading: leading,
        title: Text(title, style: TextStyle(color: textColor)),
        subtitle: subTitle,
        trailing: Icon(icon),
      ),
    );
  }
}
