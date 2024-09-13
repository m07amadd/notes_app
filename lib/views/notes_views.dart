import 'package:flutter/material.dart';
import 'package:noteapp/widgets/add_note_botton.dart';
import 'package:noteapp/widgets/notes_view_body.dart';

class NotesViews extends StatelessWidget {
  const NotesViews({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              isScrollControlled: true,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16)),
              context: context,
              builder: (context) {
                return AddNoteButton();
              });
        },
        child: const Icon(Icons.add),
      ),
      body: NotesViewBody(),
    );
  }
}
