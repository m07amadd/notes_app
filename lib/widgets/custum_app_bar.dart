import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:noteapp/widgets/custom_search_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.title, required this.icon});
  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 25),
        ),
        Spacer(),
        CustomIcon(
          icon: icon,
        )
      ],
    );
  }
}
