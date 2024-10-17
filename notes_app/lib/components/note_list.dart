import 'package:flutter/material.dart';
import 'package:notes_app/components/note_card.dart';
import 'package:notes_app/globals/lists.dart';

class NoteList extends StatefulWidget {
  const NoteList({super.key, required this.categoryName});

  final String categoryName;

  @override
  State<NoteList> createState() => _NoteListState();
}

class _NoteListState extends State<NoteList> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView.builder(
        itemCount: notesList.length,
        itemBuilder: (BuildContext context, int index) {
          return NoteCard(index: index);
        },
      ),
    );
  }
}
