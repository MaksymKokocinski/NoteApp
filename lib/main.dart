import 'package:flutter/material.dart';
import 'package:flutter_app1/views/note_list.dart';
import 'package:flutter_app1/inherited_widgets/note_inherited_widget.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return NoteInheritedWidget(
      MaterialApp(
        title: 'Notes',
        home: NoteList(),
      ),
    );
  }
}
