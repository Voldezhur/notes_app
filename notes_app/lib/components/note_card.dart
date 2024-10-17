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
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: const BorderRadius.all(Radius.circular(20)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            notesList[widget.index].title,
            style: const TextStyle(color: Colors.white),
          ),
          notesList[widget.index].isFinished
              ? IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.circle,
                    color: Colors.white,
                  ))
              : IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.circle_outlined,
                    color: Colors.white,
                  ))
        ],
      ),
    );
  }
}
