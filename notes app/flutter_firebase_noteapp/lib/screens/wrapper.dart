import 'package:flutter/material.dart';
import 'package:flutter_firebase_noteapp/screens/authenticate/authenticate.dart';
import 'package:flutter_firebase_noteapp/screens/home/home.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // return either the Home or Authenticate widget
    return Authenticate();
  }
}
