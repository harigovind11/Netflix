import 'package:flutter/material.dart';
import 'package:netflix/core/constants.dart';

import 'custom_button_widget.dart';
import 'play_button.dart';

class BackgroundCard extends StatelessWidget {
  const BackgroundCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 600,
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(kMainImage),
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          right: 0,
          left: 0,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const CustomButtomWidget(
                  icon: Icons.add,
                  label: 'My List',
                ),
                play_button(
                  label: 'Play',
                  onPressed: () {},
                ),
                const CustomButtomWidget(icon: Icons.info, label: 'Info')
              ],
            ),
          ),
        )
      ],
    );
  }
}
