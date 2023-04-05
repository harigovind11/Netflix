import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix/presentation/search/widgets/search_idle.dart';
import 'package:netflix/presentation/search/widgets/search_result.dart';

import '../../core/colors.dart';
import '../../core/constants.dart';

class ScreenSearch extends StatelessWidget {
  const ScreenSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CupertinoSearchTextField(
                backgroundColor: kGreyColor.withOpacity(0.4),
                prefixIcon: const Icon(
                  CupertinoIcons.search,
                  color: kGreyColor,
                ),
                suffixIcon: const Icon(
                  CupertinoIcons.xmark_circle_fill,
                  color: kGreyColor,
                ),
                style: const TextStyle(
                  color: kWhiteColor,
                ),
              ),
              kHeight20,
              // const Expanded(child: SearchIdleWidget()),
              const Expanded(child: SearcheResultWidget()),
            ],
          ),
        ),
      ),
    );
  }
}
