import 'package:flutter/material.dart';
import 'package:notes_app/constant.dart';

class CustomTextFormFiled extends StatelessWidget {
  const CustomTextFormFiled(
      {super.key, required this.hintText, this.maxLines = 1, this.onSaved});
  final String hintText;
  final int maxLines;
  final void Function(String?)? onSaved;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
        onSaved: onSaved,
        validator: (value) {
          if (value?.isEmpty ?? true) {
            return "field is required ";
          } else {
            return null;
          }
        },
        maxLines: maxLines,
        cursorColor: kPrimaryColor,
        decoration: InputDecoration(
            hintText: hintText,
            helperStyle: const TextStyle(
              fontSize: 30,
            ),
            errorBorder: buildBorder(color: Colors.red),
            focusedErrorBorder: buildBorder(color: Colors.red),
            errorStyle: const TextStyle(
              color: Colors.red,
              fontSize: 14,
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
