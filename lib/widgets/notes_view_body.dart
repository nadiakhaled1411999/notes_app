import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_appbar.dart';

class  NotesViewBody extends StatelessWidget {
  const  NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 16,right: 16,top: 30),
      child: Column(
      children: [

      CustomAppBar(),

      ],
      ),
    );
  }
}