import 'package:flutter/material.dart';

import '../../../core/colors.dart';

class play_button extends StatelessWidget {
  const play_button({
    super.key,
    required this.label,
    required this.onPressed,
  });

  final String label;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: onPressed,
      style: const ButtonStyle(
        backgroundColor: MaterialStatePropertyAll(kWhiteColor),
      ),
      icon: const Icon(
        Icons.play_arrow,
        color: kBlackColor,
        size: 30,
      ),
      label: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Text(
          label,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: kBlackColor,
          ),
        ),
      ),
    );
  }
}
