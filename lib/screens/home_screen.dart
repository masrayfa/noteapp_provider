import 'package:flutter/material.dart';
import 'package:note_app/models/note_data.dart';
import 'package:note_app/models/note_operations.dart';
import 'package:note_app/screens/add_screen.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (_) => AddScreen()));
        },
        backgroundColor: Colors.white,
        child: Icon(
          Icons.add,
          color: Colors.lime,
          size: 34.0,
        ),
      ),
      backgroundColor: Colors.lightGreen,
      appBar: AppBar(
        title: Text(
          'Note App',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w700,
            fontSize: 30.0,
          ),
        ),
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.transparent,
      ),
      body: Consumer<NoteOperations>(
        builder: (context, data, child) {
          return ListView.builder(
              itemCount: data.getNotes.length,
              itemBuilder: (context, index) {
                return NotesCard(
                  note: NoteData(),
                );
              });
        },
      ),
    );
  }
}

class NotesCard extends StatelessWidget {
  final NoteData note;

  NotesCard({required this.note});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20.0),
      padding: EdgeInsets.all(15.0),
      height: 150.0,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            note.getTitle,
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 24.0),
          ),
          SizedBox(
            height: 5.0,
          ),
          Text(note.getDesc),
        ],
      ),
    );
  }
}
