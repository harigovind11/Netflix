import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:netflix/core/colors.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/presentation/home/widgets/custom_button_widget.dart';

import 'video_widget.dart';

class EveryonesWatchingWidget extends StatelessWidget {
  const EveryonesWatchingWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        kHeight10,
        Text(
          'Friends',
          style: TextStyle(
            fontSize: 18,
            letterSpacing: .54,
            fontWeight: FontWeight.bold,
          ),
        ),
        kHeight10,
        Text(
          'This hit sitcom follows the merry misadventures of six 20-somthing pals as they naviagte the pitfalls of work,life and love in 1990s Manhattan',
          style: TextStyle(
            color: kGreyColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        kHeight50,
        VideoWidget(),
        kHeight20,
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CustomButtomWidget(
              icon: LineIcons.share,
              label: 'Share',
              iconSize: 30,
              textSize: 10,
              color: kWhiteColor.withOpacity(.5),
            ),
            kWidth,
            CustomButtomWidget(
              icon: LineIcons.plus,
              label: 'My List',
              iconSize: 30,
              textSize: 10,
              color: kWhiteColor.withOpacity(.5),
            ),
            kWidth,
            CustomButtomWidget(
              icon: LineIcons.play,
              label: 'Share',
              iconSize: 30,
              textSize: 10,
              color: kWhiteColor.withOpacity(.5),
            ),
            kWidth,
          ],
        )
      ],
    );
  }
}
