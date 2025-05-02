import 'package:flutter/material.dart';
import 'package:notes_app/constant.dart';

class CustomTextFiled extends StatelessWidget {
  const CustomTextFiled({super.key, required this.hintText,  this.maxLines=1});
  final String hintText;
  final int maxLines;
  @override
  Widget build(BuildContext context) {
    return TextField(
maxLines: maxLines,
        cursorColor: kPrimaryColor,
        decoration: InputDecoration(
            hintText: hintText,
            helperStyle: const TextStyle(
              fontSize: 30,
            ),
            enabledBorder: buildBorder(color: kPrimaryColor),
            focusedBorder: buildBorder(color: Colors.white.withOpacity(0.7))));
  }
}

OutlineInputBorder buildBorder({required Color color}) {
  return OutlineInputBorder(
    borderSide: BorderSide(color: color, width: 2),
    borderRadius: BorderRadius.circular(10),
  );
}
