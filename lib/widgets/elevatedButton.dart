// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:teacher_app/const_values.dart';

class ElevatedButtons extends StatelessWidget {
  final String text;
  void Function()? onPressed;
   ElevatedButtons({
    super.key, required this.text, required this.onPressed
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 55,
      child: ElevatedButton(
        onPressed: onPressed,
        style: const ButtonStyle(
          elevation: MaterialStatePropertyAll(0),
          backgroundColor: MaterialStatePropertyAll(
            kMainColor,
          ),
        ),
        child:  Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
