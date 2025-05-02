import 'package:flutter/material.dart';

class  AddNoteBottomSheet extends StatelessWidget {
  const  AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
height: 800,
decoration: BoxDecoration(
color:Theme.of(context).primaryColorDark,
borderRadius:const BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular( 30))
),
              );
  }
}