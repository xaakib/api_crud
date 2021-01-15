import 'package:flutter/material.dart';

class NoteModify extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Create note"
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: "Note Title",
                
              ),
            ),
            Container(
              height: 8,
            ),
              TextField(
              decoration: InputDecoration(
                hintText: "Note content",
                
              ),
            ),
            Container(
              height: 16,
            ),
            SizedBox(
              height: 40,
              width: double.infinity,
              child: RaisedButton(
                child: Text("Submit",style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,

                ),
                )
                ,
                color: Theme.of(context).primaryColor,
                onPressed: (){
                  Navigator.of(context).pop();
                },
              
              ),
            ),
          ],
        ),
      ),
      
    );
  }
}