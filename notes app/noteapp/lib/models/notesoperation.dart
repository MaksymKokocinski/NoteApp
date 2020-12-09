import 'package:flutter/material.dart';
import 'package:noteapp/models/note.dart';

class NotesOperation extends ChangeNotifier {
  List<Note> _notes = List<Note>();

  List<Note> get getNotes {
    return _notes;
  }

  //exxample as first added data
  //NotesOperation() {
  //addNewNote('First Note Description');
  //}

  void addNewNote(String description) {
    Note note = Note(description);
    print('print note desc $description');
    //_notes.clear();
    _notes.add(note);
    notifyListeners(); //whenever we change value it notify listeners
  }
}
