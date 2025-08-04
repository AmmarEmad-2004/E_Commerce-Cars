import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({
    super.key,
    required this.title,
    this.subTitle,
    this.leading,
    required this.icon,
  });
  final String title;
  final Widget? subTitle;
  final Widget? leading;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: leading,
      title: Text(title),
      subtitle: subTitle,
      trailing: Icon(icon),
    );
  }
}
