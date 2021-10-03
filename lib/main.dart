import 'package:flutter/material.dart';
import 'package:note_app/models/note_operations.dart';
import 'package:provider/provider.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => NoteOperations(),
      child: MaterialApp(
        home: HomeScreen(),
      ),
    );
  }
}
