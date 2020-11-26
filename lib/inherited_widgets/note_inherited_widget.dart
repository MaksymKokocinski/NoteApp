import 'package:flutter/material.dart';

class NoteInheritedWidget extends InheritedWidget {
  final notes = [
    {
      'title': 'somdhfgggggggggggggggggeTitle',
      'text': 'asdmaskhgfshfahahadffffffhldmaskl'
    },
    {
      'title': 'somgdhfffffffffffffffeTitle',
      'text': 'sohsgfshfdghhhhhhhhhhhhhhhhhhhhhhhhhhmeText'
    },
    {
      'title': 'somefdghhhhhhhhhhhhhhhhhhTitle',
      'text': 'somdfhggggggggggggggggggggggggggggggggggeText'
    }
  ];
  NoteInheritedWidget(Widget child) : super(child: child);

  static NoteInheritedWidget of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<NoteInheritedWidget>();
  }

  @override
  bool updateShouldNotify(NoteInheritedWidget oldWidget) {
    return oldWidget.notes != notes;
  }
}
