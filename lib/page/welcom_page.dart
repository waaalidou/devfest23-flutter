import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:teacher_app/page/login_page.dart';
import 'package:teacher_app/widgets/elevatedButton.dart';
import 'package:teacher_app/widgets/large_text.dart';
import 'package:teacher_app/widgets/outlined_button.dart';
import 'package:teacher_app/widgets/sub_text.dart';

class WelcomePage extends StatelessWidget {
  static const String routeName = 'WelcomPage';
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.all(32.0),
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const LargeText(text: 'Welcome'),
                const SizedBox(height: 15),
                const SubText(
                  text: 'This is the  first application I mad using flutter !',
                ),
                const SizedBox(height: 30),
                Image.asset(
                  'assets/images/undraw_Welcome_re_h3d9 1.png',
                  fit: BoxFit.fill,
                ),
                const SizedBox(height: 45),
                 OutlinedButtons(text: 'Login', onPressed: () {
                  log('message');
                  Navigator.pushNamed(context, LoginPage.routeName);
                 }),
                const SizedBox(height: 20),
                ElevatedButtons(text: 'Sign Up', onPressed: (){}),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
