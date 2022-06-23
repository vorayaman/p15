import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:p15/fireclass.dart';
import 'package:p15/homepage.dart';
import 'package:p15/login.dart';
import 'package:p15/signup.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => Splash(),
        '/home': (context) => Home(),
        '/login': (context) => Login(),
        '/signup': (context) => Signup(),
      },
    ),
  );
}

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    check(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.green.shade600,
        body: Center(
          child: Column(
            children: [
              Icon(
                Icons.event_note_outlined,
                color: Colors.white,size: 100,
              ),
              Text(
                "Note Keeper",
                style: TextStyle(color: Colors.white,letterSpacing: 1),
              ),
              CircularProgressIndicator(
                color: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void check(BuildContext context) {
  if (Auth().currentUser(context) == true) {
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (c) {
            return Home();
          },
        ),
      );
    });
  } else {
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (c) {
            return Login();
          },
        ),
      );
    });
  }
}
