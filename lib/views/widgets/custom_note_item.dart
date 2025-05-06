import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/edit_note_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key, required this.note});
  final NoteModel note;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const EditNoteView(),
            ));
      },
      child: Container(
        padding: const EdgeInsets.only(top: 22, bottom: 24, left: 16, right: 5),
        decoration: BoxDecoration(
          color: Colors.amber,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              contentPadding: EdgeInsets.zero,
              trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    FontAwesomeIcons.trash,
                    size: 30,
                  )),
              title:  Text(
                note.title,
                style: const TextStyle(
                  fontSize: 27,
                ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 16, bottom: 16),
                child: Text(
                  note.subTitle,
                  style: const TextStyle(
                    fontSize: 19,
                  ),
                ),
              ),
            ),
             Padding(
              padding: const EdgeInsets.only(right: 24),
              child: Text(
                note.date,
                style: const TextStyle(
                  fontSize: 15,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
