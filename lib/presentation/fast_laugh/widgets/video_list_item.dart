import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:netflix/core/colors.dart';
import 'package:netflix/core/constants.dart';

class VideoListItem extends StatelessWidget {
  final int index;

  const VideoListItem({
    super.key,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.accents[index],
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 15,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                //left side
                CircleAvatar(
                  radius: 30,
                  backgroundColor: kBlackColor.withOpacity(.7),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      LineIcons.volumeMute,
                      size: 30,
                    ),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 10.0),
                      child: CircleAvatar(
                        radius: 25,
                      ),
                    ),
                    VideoActionsWidget(
                      icon: const Icon(LineIcons.grinningSquintingFaceAlt),
                      title: "LOL",
                      onPressed: () {},
                    ),
                    VideoActionsWidget(
                      icon: const Icon(LineIcons.plus),
                      title: "My List",
                      onPressed: () {},
                    ),
                    VideoActionsWidget(
                      icon: const Icon(LineIcons.share),
                      title: "Share",
                      onPressed: () {},
                    ),
                    VideoActionsWidget(
                      icon: const Icon(LineIcons.play),
                      title: "Play",
                      onPressed: () {},
                    ),
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}

class VideoActionsWidget extends StatelessWidget {
  const VideoActionsWidget({
    super.key,
    required this.icon,
    required this.title,
    required this.onPressed,
  });
  final Widget icon;
  final String title;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Column(
        children: [
          IconButton(
            onPressed: onPressed,
            icon: icon,
            color: kButtonColorWhite,
            iconSize: 30,
          ),
          Text(
            title,
            style: const TextStyle(
              color: kWhiteColor,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
