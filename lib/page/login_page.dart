import 'package:flutter/material.dart';
import 'package:teacher_app/page/home_page.dart';
import 'package:teacher_app/widgets/elevatedButton.dart';
import 'package:teacher_app/widgets/large_text.dart';
import 'package:teacher_app/widgets/sub_text.dart';

class LoginPage extends StatelessWidget {
  static const String routeName = 'Login-Page';
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> fkey = GlobalKey();
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.all(32.0),
            child: Form(
              key: fkey,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const LargeText(text: 'Log in'),
                  const SizedBox(height: 15),
                  const SubText(
                    text: 'Log in to your account',
                  ),
                  const SizedBox(height: 30),
                  TextFormField(
                    decoration: InputDecoration(
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      labelText: 'Email',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                  const SizedBox(height: 45),
                  TextFormField(
                    decoration: InputDecoration(
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      labelText: 'Password',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                  const SizedBox(height: 25),
                  ElevatedButtons(
                      onPressed: () {
                        Navigator.pushNamed(context, HomePage.routeName);
                      },
                      text: 'Login'),
                  const SizedBox(height: 35),
                  Image.asset(
                    'assets/images/undraw_Sign_in_re_o58h 1.png',
                    fit: BoxFit.fill,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
