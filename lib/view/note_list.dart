import 'package:api_crud/model/mote_forlisting.dart';
import 'package:flutter/material.dart';

import 'note_modify.dart';

class NoteList extends StatelessWidget {
  final note = [
    NoteForListing(
      noteID: "1",
      noteTitle: "Note1",
      createDateTime: DateTime.now(),
      latestEditDateTime: DateTime.now(),
    ),
    NoteForListing(
      noteID: "2",
      noteTitle: "Note2",
      createDateTime: DateTime.now(),
      latestEditDateTime: DateTime.now(),
    ),
    NoteForListing(
      noteID: "3",
      noteTitle: "Note3",
      createDateTime: DateTime.now(),
      latestEditDateTime: DateTime.now(),
    ),
  ];
  String formateDateTime(DateTime dateTime) {
    return '${dateTime.day}/${dateTime.month}/${dateTime.year}';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List of notes"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (_) => NoteModify()));
        },
        child: Icon(Icons.add),
      ),
      body: ListView.separated(
        separatorBuilder: (_, __) => Divider(height: 1, color: Colors.green),
        itemCount: note.length,
        itemBuilder: (_, index) {
          return ListTile(
            title: Text(note[index].noteTitle),
            subtitle: Text(
                "Last Edit on ${formateDateTime(note[index].latestEditDateTime)}"),
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (_) => NoteModify()));
            },
          );
        },
      ),
    );
  }
}
