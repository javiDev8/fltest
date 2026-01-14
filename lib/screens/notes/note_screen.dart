import 'package:fltest/screens/notes/new_note_screen.dart';
import 'package:flutter/material.dart';

class NoteScreen extends StatelessWidget {
  const NoteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('notes screen'),
          TextButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => NewNoteScreen()),
              );
            },
            child: Text('create note'),
          ),
        ],
      ),
    );
  }
}
