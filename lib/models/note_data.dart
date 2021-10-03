class NoteData {
  String? title;
  String? description;

  NoteData({this.title, this.description});

  String get getTitle => title.toString();
  String get getDesc => description.toString();
}
