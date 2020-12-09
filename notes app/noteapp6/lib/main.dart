import 'package:flutter/material.dart';
import 'package:noteapp6/models/user.dart';
import 'package:noteapp6/screens/wrapper.dart';
import 'package:noteapp6/services/auth.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StreamProvider<TheUser>.value(
      value: AuthService().user, //need to kick it
      child: MaterialApp(
        home: Wrapper(),
      ),
    );
  }
}
