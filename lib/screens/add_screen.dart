import 'package:flutter/material.dart';
import 'package:note_app/models/note_operations.dart';
import 'package:provider/provider.dart';

class AddScreen extends StatelessWidget {
  String? titleText;
  String? descText;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          ' ',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w700,
            fontSize: 30.0,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.lightGreen,
        elevation: 0,
      ),
      backgroundColor: Colors.lightGreen,
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Enter Title',
                hintStyle: TextStyle(
                  color: Colors.white.withOpacity(0.8),
                  fontSize: 22.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
              style: TextStyle(
                color: Colors.white,
                fontSize: 22.0,
                fontWeight: FontWeight.w700,
              ),
              onChanged: (value) {
                titleText = value;
              },
            ),
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Enter Descriptrion',
                  hintStyle: TextStyle(
                    color: Colors.white.withOpacity(0.5),
                    fontSize: 18.0,
                  ),
                ),
                style: TextStyle(color: Colors.white, fontSize: 18.0),
                onChanged: (value) {
                  descText = value;
                },
              ),
            ),
            TextButton(
              onPressed: () {
                Provider.of<NoteOperations>(context, listen: false)
                    .addNewNotes(titleText ?? 'Text', descText ?? 'Desc');
                Navigator.pop(context);
              },
              child: Text(
                'Add Notes',
                style: TextStyle(
                  color: Colors.lightGreen,
                  fontSize: 22.0,
                ),
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStateColor.resolveWith(
                  (states) => Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
