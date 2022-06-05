import 'package:flutter/material.dart';
import 'package:flutter_application_1/db/notes_database.dart';
import 'package:flutter_application_1/model/notes.dart';
import 'package:flutter_application_1/pages/add_edit_Page.dart';
//import 'package:flutter_application_1/pages/add_edit_Page.dart';
import 'package:flutter_application_1/pages/note_details_page.dart';
import 'package:flutter_application_1/widget/note_card.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class NotesPage extends StatefulWidget {
  const NotesPage({Key? key}) : super(key: key);

  @override
  State<NotesPage> createState() => _NotesPageState();
}

class _NotesPageState extends State<NotesPage> {
  late List<Note> notes;
  bool isLoading = false;
  @override
  void initState() {
    super.initState();
    refreshNotes();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Notes',
          style: TextStyle(fontSize: 24),
        ),
      ),
      body: Center(
        child: isLoading
            ? const CircularProgressIndicator()
            : notes.isEmpty
                ? const Text(
                    'No Notes added yet',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  )
                : buildNotes(),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        child: const Icon(Icons.add),
        onPressed: () async {
          await Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => AddEditNotePage()));
          refreshNotes();
        },
      ),
    );
  }

  Widget buildNotes() => MasonryGridView.count(
        itemCount: notes.length,
        crossAxisCount: 3,
        mainAxisSpacing: 4,
        crossAxisSpacing: 4,
        itemBuilder: (context, index) {
          final note = notes[index];
          return GestureDetector(
            onTap: () async {
              await Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => NotesDetailsPage(noteId: note.id!)));
              refreshNotes();
            },
            child: noteCard(note: note, index: index),
          );
        },
      );
  Future refreshNotes() async {
    setState(() {
      isLoading = true;
    });
    notes = await NotesDatabse.instance.readAllNotes();
    setState(() {
      isLoading = false;
    });
  }

  @override
  void dispose() {
    NotesDatabse.instance.close();
    super.dispose();
  }
}
