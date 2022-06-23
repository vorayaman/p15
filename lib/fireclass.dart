import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';


class Auth {

  FirebaseAuth _auth = FirebaseAuth.instance;


  void signup(
      String e1,
      String p1,
      ) {
    _auth.createUserWithEmailAndPassword(email: e1, password: p1);
  }

  void login(String e1, String p1, BuildContext context) async{

    try{
      var data =await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: e1, password: p1).then((value) =>  Navigator.pushNamed(context, '/home'));
      // .whenComplete(() =>);
    }
    on FirebaseAuthException catch(e)
    {
      if (e.code == 'user-not-found') {

        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("User Not Found Please Singup"),backgroundColor: Colors.pink.shade400,));


      } else if (e.code == 'wrong-password') {

        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Password Wrong Please Singup"),backgroundColor: Colors.pink.shade400,));

      }
    }
  }
  bool currentUser(BuildContext context) {
    if (_auth.currentUser == null) {
      return false;
    } else {
      return true;
    }
  }

}
