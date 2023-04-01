import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:line_icons/line_icons.dart';

import '../../../core/constants.dart';

ValueNotifier<int> indexChangeNotifier = ValueNotifier(0);

class BottomNavigationWidget extends StatelessWidget {
  const BottomNavigationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: indexChangeNotifier,
      builder: (context, int newIndex, _) {
        return BottomNavigationBar(
            currentIndex: newIndex,
            onTap: (index) {
              indexChangeNotifier.value = index;
            },
            elevation: 0,
            type: BottomNavigationBarType.fixed,
            backgroundColor: backgroundColor,
            selectedItemColor: kWhiteColor,
            unselectedItemColor: Colors.grey,
            selectedIconTheme: IconThemeData(color: kWhiteColor),
            unselectedIconTheme: const IconThemeData(color: Colors.grey),
            selectedFontSize: 12,
            unselectedFontSize: 10,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(
                  LineIcons.home,
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                  icon: Icon(
                    LineIcons.newspaper,
                  ),
                  label: 'New & Hot'),
              BottomNavigationBarItem(
                  icon: Icon(
                    LineIcons.grinningSquintingFaceAlt,
                  ),
                  label: 'Fast Laughs'),
              BottomNavigationBarItem(
                  icon: Icon(
                    LineIcons.search,
                  ),
                  label: 'Search'),
              BottomNavigationBarItem(
                  icon: Icon(
                    LineIcons.arrowCircleDown,
                  ),
                  label: 'Downloads'),
            ]);
      },
    );
  }
}
