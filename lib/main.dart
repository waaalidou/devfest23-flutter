import 'package:flutter/material.dart';
import 'package:teacher_app/page/home_page.dart';
import 'package:teacher_app/page/login_page.dart';
import 'package:teacher_app/page/welcom_page.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        fontFamily: GoogleFonts.inter().fontFamily,
      ),
      initialRoute: WelcomePage.routeName,
      routes: {
        LoginPage.routeName: (context) => const LoginPage(),
        WelcomePage.routeName: (ctx) => const WelcomePage(),
        HomePage.routeName : (ctx) => const HomePage()
      },
    );
  }
}
