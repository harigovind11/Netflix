import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_icons/line_icons.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/presentation/home/widgets/custom_button_widget.dart';

class ComingSoonWidget extends StatelessWidget {
  const ComingSoonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      children: [
        SizedBox(
          width: 60,
          height: 400,
          child: Column(children: const [
            Text(
              'FEB',
              style: TextStyle(
                  fontSize: 20, fontWeight: FontWeight.bold, color: kGreyColor),
            ),
            Text(
              '11',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                letterSpacing: 5,
              ),
            ),
          ]),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: SizedBox(
            height: 400,
            width: size.width - 68,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
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
                ),
                kHeight10,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'Top Gun 2 ',
                      style: GoogleFonts.monoton(
                        fontSize: 25,
                        letterSpacing: .54,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Spacer(),
                    Row(
                      children: [
                        CustomButtomWidget(
                          icon: LineIcons.bell,
                          label: 'Remind Me',
                          iconSize: 20,
                          textSize: 10,
                          color: kWhiteColor.withOpacity(.5),
                        ),
                        kWidth,
                        CustomButtomWidget(
                          icon: LineIcons.infoCircle,
                          label: 'Info',
                          iconSize: 20,
                          textSize: 10,
                          color: kWhiteColor.withOpacity(.5),
                        ),
                        kWidth
                      ],
                    )
                  ],
                ),
                kHeight10,
                const Text('Coming on Friday'),
                kHeight10,
                const Text(
                  'Top Gun 2 ',
                  style: TextStyle(
                    fontSize: 18,
                    letterSpacing: .54,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                kHeight10,
                const Text(
                  'Landing the lead in the school musical is a dream for Jodi, until the pressure sends her confidence - and her relationship - into a tailspain',
                  style: TextStyle(
                    color: kGreyColor,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
