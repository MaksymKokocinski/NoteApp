import 'package:flutter/material.dart';
import 'package:noteapp6/services/auth.dart';

class Home extends StatelessWidget {
  final AuthService _auth = AuthService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[500],
      appBar: AppBar(
        title: Text('Note app'),
        backgroundColor: Colors.blue[500],
        elevation: 0.0,
        actions: [
          FlatButton.icon(
              icon: Icon(Icons.person),
              label: Text('logut'),
              onPressed: () async {
                await _auth.signOut();
              }),
        ],
      ),
    );
  }
}
