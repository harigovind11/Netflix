import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constants.dart';

class VideoWidget extends StatelessWidget {
  const VideoWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: double.infinity,
          height: 200,
          child: Image.network(
            kNewAndHotTempImg,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          bottom: 10,
          right: 10,
          child: CircleAvatar(
            radius: 23,
            backgroundColor: kBlackColor.withOpacity(.7),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                LineIcons.volumeMute,
                size: 22,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
