import 'package:flutter/cupertino.dart';
import 'package:note_app/models/note_data.dart';

class NoteOperations with ChangeNotifier {
  List<NoteData> _notes = [];

  List<NoteData> get getNotes {
    return _notes;
  }

  // NoteOperations() {
  //   addNewNotes('First notes', "desc");
  // }

  void addNewNotes(String title, String desc) {
    final note = NoteData(title: title, description: desc);
    _notes.add(note);
    notifyListeners();
  }
}
