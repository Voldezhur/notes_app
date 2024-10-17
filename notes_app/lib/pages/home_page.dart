import 'package:flutter/material.dart';
import 'package:notes_app/components/note_card.dart';
import 'package:notes_app/globals/lists.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Задачи',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Center(
        child: ListView.builder(
          itemCount: notesList.length,
          itemBuilder: (BuildContext context, int index) {
            return NoteCard(index: index);
          },
        ),
      ),
    );
  }
}
