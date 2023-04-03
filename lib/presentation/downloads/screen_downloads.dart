import 'dart:math';

import 'package:flutter/material.dart';

import '../../core/colors/colors.dart';
import '../../core/constants.dart';
import 'widgets/app_bar_widget_downloads.dart';

class ScreenDownloads extends StatelessWidget {
  ScreenDownloads({super.key});
  final _widgetList = [
    // const Section1(),
    Section2(),
    const Section3(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: SizedBox(
          child: AppBarWidgetDownloads(
            title: 'Downloads',
          ),
        ),
      ),
      body: ListView.separated(
        padding: EdgeInsets.all(10),
        itemBuilder: ((ctx, index) => _widgetList[index]),
        separatorBuilder: (context, index) => SizedBox(height: 25),
        itemCount: _widgetList.length,
      ),
    );
  }
}

class Section1 extends StatelessWidget {
  const Section1({super.key});

  @override
  Widget build(BuildContext context) {
    return const _SmartDownloads();
  }
}

class Section2 extends StatelessWidget {
  Section2({super.key});
  final List imageList = [
    'https://www.themoviedb.org/t/p/w220_and_h330_face/vZloFAK7NmvMGKE7VkF5UHaz0I.jpg',
    'https://www.themoviedb.org/t/p/w220_and_h330_face/sv1xJUazXeYqALzczSZ3O6nkH75.jpg',
    'https://www.themoviedb.org/t/p/w220_and_h330_face/ggFHVNu6YYI5L9pCfOacjizRGt.jpg'
  ];
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Column(
        children: [
          kHeight20,
          const Text(
            'Introducing Downloads for you',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: kWhiteColor,
              fontSize: 23,
              fontWeight: FontWeight.bold,
            ),
          ),
          kHeight20,
          const Text(
            'We\'ll download a personalised selection of\nmovies and shows for you,  so there\'s \n always something to watch on your\ndevice.',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: kGreyColor,
              fontSize: 15,
              fontWeight: FontWeight.w600,
            ),
          ),
          kHeight20,
          Container(
            width: size.width,
            height: 350,
            color: kBlackColor,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Center(
                  child: CircleAvatar(
                    radius: size.width * .4,
                    backgroundColor: kGreyColor.withOpacity(.5),
                  ),
                ),
                DownloadsImageWidget(
                  imageList: imageList[0],
                  margin: const EdgeInsets.only(
                    left: 165,
                    bottom: 50,
                  ),
                  angle: 20,
                  size: Size(size.width * .41, size.height * .27),
                ),
                DownloadsImageWidget(
                  imageList: imageList[1],
                  margin: const EdgeInsets.only(
                    right: 165,
                    bottom: 50,
                  ),
                  angle: -20,
                  size: Size(size.width * .41, size.height * .27),
                ),
                DownloadsImageWidget(
                  imageList: imageList[2],
                  margin: const EdgeInsets.only(top: 15),
                  size: Size(size.width * .47, size.height * .33),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Section3 extends StatelessWidget {
  const Section3({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: Padding(
            padding: EdgeInsets.fromLTRB(10, 5, 10, 10),
            child: MaterialButton(
              onPressed: () {},
              color: kButtonColorBlue,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
              child: const Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 10,
                ),
                child: Text(
                  'Set up',
                  style: TextStyle(
                    color: kButtonColorWhite,
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
            ),
          ),
        ),
        MaterialButton(
          onPressed: () {},
          color: kButtonColorWhite,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: const Text(
              'See what you can download',
              style: TextStyle(
                color: kBlackColor,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class _SmartDownloads extends StatelessWidget {
  const _SmartDownloads();

  @override
  Widget build(BuildContext context) {
    return Card(
      color: kBlackColor,
      child: Row(
        children: const [
          kWidth,
          Icon(
            Icons.settings,
            color: kWhiteColor,
          ),
          kWidth,
          Text(
            'Smart Downloads',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}

class DownloadsImageWidget extends StatelessWidget {
  const DownloadsImageWidget({
    super.key,
    required this.imageList,
    required this.margin,
    required this.size,
    this.angle = 0,
    this.radius = 10,
  });

  final String imageList;
  final double angle;
  final EdgeInsets margin;
  final Size size;
  final double radius;
  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: angle * pi / 180,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(radius),
        child: Container(
          margin: margin,
          width: size.width,
          height: size.height,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                imageList,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
