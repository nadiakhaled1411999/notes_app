import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/constant.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/widgets/colors_item_list.dart';
import 'package:notes_app/views/widgets/custom_app_bar.dart';
import 'package:notes_app/views/widgets/custom_text_form_filed.dart';
import 'package:notes_app/views/widgets/edit_note_color_list.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({super.key, required this.note});
  final NoteModel note;
  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String? title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 30),
      child: Column(
        children: [
          CustomAppBar(
            onPressed: () {
              widget.note.title = title ?? widget.note.title;
              widget.note.subTitle = subTitle ?? widget.note.subTitle;
              widget.note.save();
              BlocProvider.of<NotesCubit>(context).fetchAllNotes();
ScaffoldMessenger.of(context).showSnackBar(
  const SnackBar(
    content: Text("Note Updated Successfully"),
  ),
);
              Navigator.pop(context);
            },
            title: "Edit Note",
            icon: Icons.check,
          ),
          const SizedBox(
            height: 20,
          ),
          CustomTextFormFiled(
              onChanged: (value) {
                title = value;
              },
              hintText: widget.note.title),
          const SizedBox(
            height: 20,
          ),
          CustomTextFormFiled(
            onChanged: (value) {
              subTitle = value;
            },
            hintText: widget.note.subTitle,
            maxLines: 5,
          ),
          const SizedBox(
            height: 30,
          ),
          EditNoteColorsList(
            note: widget.note,
          ),
        ],
      ),
    );
  }
}

