import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/views/edit_note_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key, required this.color});
  final Color color;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => const EditNoteView(),));
      },
      child: Container(
        padding: const EdgeInsets.only(top: 22, bottom: 24, left: 16, right: 5),
        decoration: BoxDecoration(
          color: color.withOpacity(0.8),
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
              title: const Text(
                "Flutter Tips",
                style: TextStyle(
                  fontSize: 27,
                ),
              ),
              subtitle: const Padding(
                padding: EdgeInsets.only(top: 16, bottom: 16),
                child: Text(
                  "Build your career with Nadia khaled ",
                  style: TextStyle(
                    fontSize: 19,
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(right: 24),
              child: Text(
                "Apr29, 2025",
                style: TextStyle(
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
