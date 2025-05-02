import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_text_filed.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          CustomTextFiled(
            hintText: "Title",
          ),
          SizedBox(
            height: 20,
          ),
          CustomTextFiled(
            hintText: "Content",
            maxLines: 5,
          ),
        ],
      ),
    );
  }
}
