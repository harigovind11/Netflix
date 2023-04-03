import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix/core/colors/colors.dart';

import '../../core/constants.dart';

class ScreenNewAndHot extends StatelessWidget {
  const ScreenNewAndHot({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(100),
          child: AppBar(
            title: Text(
              'New & Hot',
              style: GoogleFonts.montserrat(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            actions: [
              const Icon(
                // LineIcons.chromecast,
                Icons.cast,
                size: 25,
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
            bottom: TabBar(
              labelColor: kBlackColor,
              unselectedLabelColor: kWhiteColor,
              labelStyle: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
              isScrollable: true,
              indicator:
                  BoxDecoration(color: kWhiteColor, borderRadius: kRadius30),
              tabs: [
                Tab(
                  text: '🍿  Coming Soon',
                ),
                Tab(
                  text: '👀  Everyone\'s watching',
                ),
              ],
            ),
          ),
        ),
        body: TabBarView(children: []),
      ),
    );
  }
}
