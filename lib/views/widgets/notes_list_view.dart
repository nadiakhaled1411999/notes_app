import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_note_item.dart';

class  NotesListView extends StatelessWidget {
  const  NotesListView({super.key});
final List<Color> colorData=const[
  Color( 0xffDE435F),
Color(0xff7952AA),
Color( 0xff319855),
Color( 0xffe0afa0),
Color( 0xfffca311),
 Color( 0xffDE435F),
Color(0xff7952AA),
Color( 0xff319855),
Color( 0xffe0afa0),
 Color( 0xffDE435F),
 ];

  @override
  Widget build(BuildContext context) {
    return  Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: ListView.builder(
                  padding: EdgeInsets.zero,
                    scrollDirection: Axis.vertical,
                    itemCount:10,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 6),
                        child: NoteItem(color:colorData[index] ,),
                      );
                    }),
              ));
  }
}