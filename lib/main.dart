import 'package:flutter/material.dart';
import 'package:notes_app/views/notes_view.dart';

void main()async {
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme:ThemeData(brightness: Brightness.dark,fontFamily: "poppins"),
      home:const NotesView()
         );
  }
}

