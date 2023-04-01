import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/presentation/main_page/screen_main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Netflix',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          scaffoldBackgroundColor: backgroundColor,
          fontFamily: GoogleFonts.montserrat().fontFamily,
          textTheme: TextTheme(
            bodyLarge: const TextStyle(color: Colors.white),
            bodyMedium: TextStyle(color: Colors.white),
          ),
        ),
        home: ScreenMainPage());
  }
}
