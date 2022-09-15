import 'package:flutter/material.dart';

import '../../cubit/noteCubit/cubit.dart';
import '../../database/database.dart';
import '../../model/component/components.dart';
import 'note_screen.dart';

class NodeDetails extends StatelessWidget {
  var title = TextEditingController();

  var note = TextEditingController();
  var date = TextEditingController();

  @override
  Widget build(BuildContext context) {
    date.text = DateTime.now().toString();
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
            size: 30,
          ),
          onPressed: () {
            popTo(context, NoteScreen());
          },
        ),
        title: Text(
          "Add Note",
          style: TextStyle(
            color: Colors.black,
            fontSize: 25,
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextFormField(
                    controller: title,
                    onFieldSubmitted: (value) {
                      print(value);
                    },
                    onChanged: (value) {
                      print(value);
                    },
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        fillColor: Colors.deepOrange,
                        labelText: ' Title ',
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.green,
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(20),
                              topLeft: Radius.circular(20)),
                        )),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller: date,
                    enabled: false,
                    onFieldSubmitted: (value) {
                      print(value);
                    },
                    onChanged: (value) {
                      print(value);
                    },
                    decoration: InputDecoration(
                        fillColor: Colors.deepOrange,
                        labelText: ' Date ',
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.green,
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(20),
                              topLeft: Radius.circular(20)),
                        )),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.text,
                    maxLines: 5,
                    controller: note,
                    onFieldSubmitted: (value) {
                      print(value);
                    },
                    onChanged: (value) {
                      print(value);
                    },
                    decoration: InputDecoration(
                        alignLabelWithHint: true,
                        labelText: 'Note',
                        fillColor: Colors.deepOrange,
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.red,
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(20),
                              topLeft: Radius.circular(20)),
                        )),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      SQLHelper.addNote(title.text, note.text, date.text);
                      NoteCubit.get(context).getData();
                      navigateTo(context, NoteScreen());
                    },
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          " + ",
                          style: TextStyle(
                            color: Colors.black ,
                          ),
                        ),
                        Text(
                          "Add",
                          style: TextStyle(
                            color: Colors.black ,
                          ),
                        ),
                      ],
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blueGrey[300] ,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
