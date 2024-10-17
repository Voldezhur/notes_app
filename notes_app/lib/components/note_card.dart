import 'package:flutter/material.dart';
import 'package:notes_app/globals/lists.dart';

class NoteCard extends StatefulWidget {
  const NoteCard({super.key, required this.index});

  final int index;

  @override
  State<NoteCard> createState() => _NoteCardState();
}

class _NoteCardState extends State<NoteCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(notesList[widget.index].title),
          notesList[widget.index].isFinished
              ? IconButton(onPressed: () {}, icon: const Icon(Icons.circle))
              : IconButton(
                  onPressed: () {}, icon: const Icon(Icons.circle_outlined))
        ],
      ),
    );
  }
}
