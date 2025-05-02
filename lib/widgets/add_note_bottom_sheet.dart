import 'package:flutter/material.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:  BoxDecoration(
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(16), topRight: Radius.circular(16)),
        gradient: LinearGradient(
          colors: [
 Color(0xffDE435F).withOpacity(0.8),
    Color(0xff7952AA).withOpacity(0.8),
    Color(0xff319855).withOpacity(0.8),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      padding: const EdgeInsets.only(top: 30),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                  hintText: "Title",
                  helperStyle: const TextStyle(
                    fontSize: 30,
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.white.withOpacity(0.7), width: 2),
                      borderRadius: BorderRadius.circular(12))),

            )
          ],
        ),
      ),
    );
  }
}
