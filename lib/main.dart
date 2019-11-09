import 'package:awal/layout/note_list.dart';
import 'package:flutter/material.dart';
import 'package:awal/layout/note_detail.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Catatan Ku',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.lightBlue),
      home: NoteList(),
    );
  }
}
