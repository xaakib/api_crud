import 'package:flutter/material.dart';

class NoteList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List of notes"),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(Icons.add),
      ),
      body: ListView.separated(
        separatorBuilder: (_,__)=> Divider(height: 1,color: Colors.green),
        itemCount: 30,
        itemBuilder: (_,index){
          return ListTile(
            title: Text("Hello"),
            subtitle: Text("Last Edit on 21/2/2021"),
          );
        },
      ),
      
    );
  }
}