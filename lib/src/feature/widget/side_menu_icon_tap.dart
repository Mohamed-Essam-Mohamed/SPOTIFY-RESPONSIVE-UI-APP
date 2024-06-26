import 'package:flutter/material.dart';
import 'package:spotify_ui/src/utils/app_text_style.dart';

class SideMenuIconTab extends StatelessWidget {
  final IconData iconData;
  final String title;
  final VoidCallback onTap;

  const SideMenuIconTab({
    Key? key,
    required this.iconData,
    required this.title,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        iconData,
        color: Theme.of(context).iconTheme.color,
        size: 28.0,
      ),
      title: Text(
        title,
        style: AppTextStyle.textStyle16,
        overflow: TextOverflow.ellipsis,
      ),
      onTap: onTap,
    );
  }
}
