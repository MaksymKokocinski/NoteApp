import 'package:flutter/material.dart';
import 'package:noteapp/models/note.dart';
import 'package:noteapp/models/notesoperation.dart';
import 'package:noteapp/screens/loginscreen.dart';
import 'package:provider/provider.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart' as path_provider;
import 'models/note.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized(); //fixbug

  final appDocumentDirectory =
      await path_provider.getApplicationDocumentsDirectory();
  Hive.init(appDocumentDirectory.path);
  Hive.registerAdapter(NoteAdapter());
  runApp(MyApp());

  final descriptionBox = await Hive.openBox('description');
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    //changenotifierprovider need to be done to notify if changes are made in values
    return ChangeNotifierProvider<NotesOperation>(
        create: (context) =>
            NotesOperation(), //providing notesoperation to everyone
        child: MaterialApp(
            home: FutureBuilder(
                future: Hive.openBox(
                    'description'), //moze przeniesc to do home window
                builder: (BuildContext context, AsyncSnapshot snapshot) {
                  if (snapshot.connectionState == ConnectionState.done) {
                    if (snapshot.hasError)
                      return Text(snapshot.error.toString());
                    else
                      return LoginPage();
                  } else
                    return Scaffold();
                })));
  }

  @override
  void dispose() {
    Hive.box('description').close();
    super.dispose();
  }
}
