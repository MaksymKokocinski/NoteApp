import 'package:flutter/material.dart';
import 'package:noteapp6/models/user.dart';
import 'package:noteapp6/screens/Authenticate/authenticate.dart';
import 'package:noteapp6/screens/home/home.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<TheUser>(context); //need to kick it

    if (user == null) {
      return Authenticate();
    } else {
      return Home();
    }
  }
}
