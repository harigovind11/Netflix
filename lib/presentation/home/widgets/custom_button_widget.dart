import 'package:flutter/material.dart';

import '../../../core/colors/colors.dart';

class CustomButtomWidget extends StatelessWidget {
  const CustomButtomWidget({
    super.key,
    required this.icon,
    required this.label,
  });
  final IconData icon;
  final String label;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: kWhiteColor,
          size: 25,
        ),
        Text(
          '$label',
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
