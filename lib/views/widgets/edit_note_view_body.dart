import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_app_bar.dart';
import 'package:notes_app/views/widgets/custom_text_form_filed.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 16, right: 16, top: 30),
      child: Column(
        children: [
          CustomAppBar(
            title: "Edit Note",
            icon: Icons.check,
          ),
          SizedBox(
            height: 20,
          ),
          CustomTextFormFiled(hintText: "Title"),
          SizedBox(
            height: 20,
          ),
          CustomTextFormFiled(
            hintText: "Content",
            maxLines: 5,
          )
        ],
      ),
    );
  }
}
