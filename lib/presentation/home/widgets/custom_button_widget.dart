import 'package:flutter/material.dart';

import '../../../core/colors/colors.dart';

class CustomButtomWidget extends StatelessWidget {
  const CustomButtomWidget({
    super.key,
    required this.icon,
    required this.label,
    this.iconSize = 25,
    this.textSize = 15,
    this.color = kWhiteColor,
  });
  final IconData icon;
  final String label;
  final double iconSize;
  final double textSize;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: kWhiteColor,
          size: iconSize,
        ),
        Text(
          '$label',
          style: TextStyle(
              fontSize: textSize, fontWeight: FontWeight.bold, color: color),
        )
      ],
    );
  }
}
