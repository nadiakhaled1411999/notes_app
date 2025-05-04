import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_button.dart';
import 'package:notes_app/widgets/custom_text_form_filed.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          CustomTextFormFiled(
            onSaved: (value) {
              title = value;
            },
            hintText: "Title",
          ),
          const SizedBox(
            height: 20,
          ),
          CustomTextFormFiled(
            onSaved: (value) {
              subTitle = value;
            },
            hintText: "Content",
            maxLines: 5,
          ),
          const SizedBox(
            height: 80,
          ),
          CustomButton(
            onTap: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {});
              }

            },
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
