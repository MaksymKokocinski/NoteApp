import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:noteapp/models/notesoperation.dart';
import 'package:noteapp/screens/addscreen.dart';
import 'package:noteapp/screens/changelogin.dart';
import 'package:provider/provider.dart';
import 'package:noteapp/models/note.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //pushesh to adding screen window
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => AddScreen()));
        },
        child: Icon(
          Icons.add,
          size: 30,
          color: Colors.white,
        ),
      ),

      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: [
          IconButton(
            icon: Icon(
              Icons.settings,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => NewPassword()));
            },
          )
        ],
      ),
      //what body does?
      body: Consumer<NotesOperation>(
        builder: (context, NotesOperation data, child) {
          final descriptionBox = Hive.box('description');
          return ListView.builder(
            //counts how many notes are there
            itemCount: descriptionBox.length,
            itemBuilder: (context, index) {
              final description = descriptionBox.get(index) as Note;
              return NotesCard(data.getNotes[index]); //gets the note
            },
          );
        },
      ),
    );
  }
}

class NotesCard extends StatelessWidget {
  final Note note;

  NotesCard(this.note);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      padding: EdgeInsets.all(15),
      height: 150.0,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(15)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            //must be different from null or brings up an error
            note.description == null ? '' : note.description,
            style: TextStyle(fontSize: 18.0),
          ),
        ],
      ),
    );
  }
}
