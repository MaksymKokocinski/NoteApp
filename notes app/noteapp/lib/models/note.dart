//konstruktor
import 'package:hive/hive.dart';
part 'note.g.dart';

@HiveType()
class Note {
  @HiveField(0)
  final String description;

  Note(this.description);
}
