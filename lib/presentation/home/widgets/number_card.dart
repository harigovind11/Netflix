import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix/core/colors/colors.dart';

import '../../../core/constants.dart';

class NumberCard extends StatelessWidget {
  const NumberCard({
    super.key,
    required this.index,
  });
  final int index;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: [
            SizedBox(
              width: 50,
              height: 150,
            ),
            Container(
              width: 130,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: kRadius20,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/uKvVjHNqB5VmOrdxqAt2F7J78ED.jpg',
                  ),
                ),
              ),
            ),
          ],
        ),
        Positioned(
          left: 15,
          bottom: 10,
          child: BorderedText(
            strokeWidth: 5,
            strokeColor: kWhiteColor.withOpacity(.6),
            child: Text(
              "${index + 1}",
              style: GoogleFonts.inter(
                  color: kBlackColor,
                  decoration: TextDecoration.none,
                  fontSize: 120,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ],
    );
  }
}
