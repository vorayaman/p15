import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  FirebaseAuth auth = FirebaseAuth.instance;
  var date = DateTime.now();
  String real = DateFormat("EEEE,dd,yyyy").format(DateTime.now());

  bool gender=false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    "${real}",
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(
                        "1                      ",
                        style: TextStyle(fontSize: 20),
                      ),
                      Text(
                        "Created  tasks",
                        style: TextStyle(fontSize: 20, color: Colors.black26),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        "                             1",
                        style: TextStyle(fontSize: 20),
                      ),
                      Text(
                        "Completed  tasks",
                        style: TextStyle(fontSize: 20, color: Colors.black26),
                      ),
                    ],
                  ),
                ],
              ),
              Expanded(
                child: Row(
                  children: [
                    Radio(
                      value: "male",
                      groupValue: gender,
                      onChanged: (value) {
                        setState(() {
                          if(gender==value){
                            gender=false;
                          }
                          else{
                            gender=true;
                          }
                        });
                      },
                    ),
                    Expanded(
                      child: Text(
                        "yaman",
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.edit,
                        color: Colors.black54,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.delete_outlined,
                        color: Colors.black54,
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/create');
                      },
                      child: Icon(
                        Icons.add,
                        size: 30,
                      ),
                      style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                        backgroundColor: MaterialStateProperty.all<Color>(
                            Colors.greenAccent.shade700),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
