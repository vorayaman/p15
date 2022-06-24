import 'package:flutter/material.dart';

class CreateNote extends StatefulWidget {
  const CreateNote({Key? key}) : super(key: key);

  @override
  State<CreateNote> createState() => _CreateNoteState();
}

class _CreateNoteState extends State<CreateNote> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.greenAccent.shade700,
          title: Text("Create Note"),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                height: 80,
                width: double.infinity,
                decoration: BoxDecoration(
                  border:
                      Border.all(width: 1, color: Colors.greenAccent.shade700),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: TextField(

                    cursorColor: Colors.greenAccent.shade700,
                    decoration: InputDecoration(
                      icon: Icon(
                        Icons.note,
                        color: Colors.greenAccent.shade700,
                        size: 30,
                      ),
                      label: Text(
                        "Write Note",
                        style: TextStyle(color: Colors.black54, fontSize: 20),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 50,
                  width: 150,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(primary: Colors.greenAccent.shade700),
                      onPressed: () {

                      },
                      child: Text(
                        "Cancel",
                        style: TextStyle(color: Colors.white),
                      )),
                ),
                Container(

                  height: 50,
                  width: 150,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(primary: Colors.greenAccent.shade700),
                      onPressed: () {

                      },
                      child: Text(
                        "Create",
                        style: TextStyle(color: Colors.white),
                      )),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
