import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_app1/views/note.dart';

class NoteList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notes '),
      ),
      body:  ListView.builder(
        itemBuilder:  (context, index){
          return GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Note(NoteMode.Editing)));
            },
            child: Card(
            child: Padding(
              padding: const EdgeInsets.only(top: 30.0, bottom: 39, left: 13.0, right: 22.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                _NoteTitle(),
                Container(height: 4,),
                _Notetext()

                ],
              ),
            ),
            ),
          );
        }
      ),
        floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Note(NoteMode.Adding)));
        },
        child: Icon(Icons.add) ,
    ),
    );
  }
}

class _NoteTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text('Some title',
      style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold
      ),
    );
  }
}
class _Notetext extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text('Some text',
      style: TextStyle(
          color: Colors.grey.shade600
      ),
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
    );
  }
}
