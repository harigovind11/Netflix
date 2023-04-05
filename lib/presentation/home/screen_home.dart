import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:netflix/core/colors.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/presentation/home/widgets/play_button.dart';

import '../widgets/main_card.dart';
import '../widgets/main_title.dart';
import '../widgets/main_title_card.dart';
import 'widgets/background_card.dart';
import 'widgets/custom_button_widget.dart';
import 'widgets/number_card.dart';
import 'widgets/number_title_card.dart';

ValueNotifier<bool> scrollNotifier = ValueNotifier(true);

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    // final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: ValueListenableBuilder(
        valueListenable: scrollNotifier,
        builder: (BuildContext context, index, _) {
          return NotificationListener<UserScrollNotification>(
            onNotification: (notification) {
              final ScrollDirection direction = notification.direction;
              if (direction == ScrollDirection.reverse) {
                scrollNotifier.value = false;
              } else if (direction == ScrollDirection.forward) {
                scrollNotifier.value = true;
              }
              return true;
            },
            child: Stack(
              children: [
                ListView(
                  children: const [
                    BackgroundCard(),
                    kHeight10,
                    MainTitleCard(
                      title: 'Released in the past year',
                    ),
                    MainTitleCard(
                      title: 'Trending Now',
                    ),
                    NumberTitleCard(),
                    MainTitleCard(
                      title: 'Tense Dramas',
                    ),
                    MainTitleCard(
                      title: 'South Indian Cinema',
                    )
                  ],
                ),
                scrollNotifier.value == true
                    ? AnimatedContainer(
                        duration: Duration(seconds: 1),
                        width: double.infinity,
                        height: 90,
                        color: kBlackColor.withOpacity(.3),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Image.network(
                                  'https://www.freepnglogos.com/uploads/netflix-logo-circle-png-5.png',
                                  width: 65,
                                  height: 65,
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
                                    image: const DecorationImage(
                                      fit: BoxFit.cover,
                                      image: NetworkImage(kUserAvathar),
                                    ),
                                  ),
                                ),
                                kWidth,
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: const [
                                Text(
                                  'TV Shows',
                                  style: kHomeTitleTextStyle,
                                ),
                                Text(
                                  'Movies',
                                  style: kHomeTitleTextStyle,
                                ),
                                Text(
                                  'Categories',
                                  style: kHomeTitleTextStyle,
                                ),
                              ],
                            )
                          ],
                        ),
                      )
                    : kHeight10
              ],
            ),
          );
        },
      ),
    );
  }
}
