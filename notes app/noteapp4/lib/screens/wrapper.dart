import 'package:flutter/material.dart';
import 'package:noteapp4/screens/authenticate/authenticate.dart';
import 'package:noteapp4/screens/home/home.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Home();
    //return either home or authenticate widget
  }
}
