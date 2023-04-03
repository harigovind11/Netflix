import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/presentation/downloads/screen_downloads.dart';

class AppBarWidgetDownloads extends StatelessWidget {
  const AppBarWidgetDownloads({required this.title, super.key});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            kWidth,
            Text(
              title,
              style: GoogleFonts.montserrat(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Spacer(),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                // LineIcons.chromecast,
                Icons.cast,
                size: 25,
              ),
              color: Colors.grey,
            ),
            kWidth,
            Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                borderRadius: kRadius5,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(kUserAvathar),
                ),
              ),
            ),
            kWidth,
          ],
        ),
        Section1(),
      ],
    );
  }
}
