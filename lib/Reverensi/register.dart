import 'dart:html';
import 'package:first_app_flutter/Screens/Login/loginForm.dart';
import 'package:first_app_flutter/Reverensi/login.dart';
import 'package:first_app_flutter/Screens/Login/loginscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:first_app_flutter/Screens/Register/Components/body.dart';

class Register extends StatefulWidget {
  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  bool _secureText = true;
  bool _securepass = true;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  GlobalKey<FormState> formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}


        // new Row(
        //   children: <Widget>[
        //     new Container(
        //       padding: EdgeInsets.only(left: 34, top: 31),
        //       child: Text(
        //         "Registrasi",
        //         style: new TextStyle(
        //           color: Colors.black,
        //           fontSize: 24.0,
        //         ),
        //       ),
        //     ),
        //   ],
        // ),
        // new Row(
        //   children: <Widget>[
        //     new Container(
        //       padding: EdgeInsets.only(left: 34, top: 14),
        //       child: Text(
        //         "Registration And Start Manage Your \nLearning Process!",
        //         style: new TextStyle(
        //           color: Color.fromRGBO(137, 137, 137, 1),
        //           fontSize: 14.0,
        //         ),
        //       ),
        //     ),
        //   ],
        // ),

        // new Column(
        //   children: <Widget>[
        //     new Container(
        //         padding: EdgeInsets.only(left: 34, top: 14, right: 34),
        //         child: Form(
        //           key: formkey,
        //           child: Column(
        //             children: <Widget>[
        //               new TextFormField(
        //                 decoration: InputDecoration(
        //                   enabledBorder: OutlineInputBorder(
        //                       borderRadius:
        //                           BorderRadius.all(Radius.circular(6)),
        //                       borderSide: BorderSide(
        //                           color: Color.fromARGB(255, 255, 255, 255))),
        //                   focusedBorder: OutlineInputBorder(
        //                       borderSide: BorderSide(
        //                           width: 3,
        //                           color: Color.fromRGBO(140, 79, 225, 1))),
        //                   hintText: "Name",
        //                   hintStyle: TextStyle(
        //                       color: Color.fromRGBO(199, 196, 196, 1)),
        //                   filled: true,
        //                   fillColor: Colors.white,
        //                 ),
        //                 validator: (Value) {
        //                   if (Value!.isNotEmpty && Value.length > 3) {
        //                     return null;
        //                   } else if (Value.length < 4 && Value.isNotEmpty) {
        //                     return 'Your name is too short';
        //                   } else {
        //                     return 'Your full name is required';
        //                   }
        //                 },
        //               ),
        //               SizedBox(
        //                 height: 14,
        //               ),
        //               TextFormField(
        //                 decoration: InputDecoration(
        //                   enabledBorder: OutlineInputBorder(
        //                       borderRadius:
        //                           BorderRadius.all(Radius.circular(6)),
        //                       borderSide: BorderSide(
        //                           color: Color.fromARGB(255, 255, 255, 255))),
        //                   focusedBorder: OutlineInputBorder(
        //                       borderSide: BorderSide(
        //                           width: 3,
        //                           color: Color.fromRGBO(140, 79, 225, 1))),
        //                   hintText: "Email",
        //                   hintStyle: TextStyle(
        //                       color: Color.fromRGBO(199, 196, 196, 1)),
        //                   filled: true,
        //                   fillColor: Colors.white,
        //                 ),
        //                 validator: (Value) {
        //                   if (Value!.isNotEmpty && Value.length > 8) {
        //                     return null;
        //                   } else if (Value.length < 10 && Value.isNotEmpty) {
        //                     return 'Please insert a valid email!';
        //                   } else {
        //                     return 'Your email is required';
        //                   }
        //                 },
        //               ),
        //               SizedBox(
        //                 height: 14,
        //               ),
        //               TextFormField(
        //                 decoration: InputDecoration(
        //                     enabledBorder: OutlineInputBorder(
        //                         borderRadius:
        //                             BorderRadius.all(Radius.circular(6)),
        //                         borderSide: BorderSide(
        //                             color:
        //                                 Color.fromARGB(255, 255, 255, 255))),
        //                     focusedBorder: OutlineInputBorder(
        //                         borderSide: BorderSide(
        //                             width: 3,
        //                             color: Color.fromRGBO(140, 79, 225, 1))),
        //                     hintText: "Passwowrd",
        //                     hintStyle: TextStyle(
        //                         color: Color.fromRGBO(199, 196, 196, 1)),
        //                     filled: true,
        //                     fillColor: Colors.white,
        //                     suffixIcon: IconButton(
        //                       icon: Icon(
        //                         _secureText
        //                             ? Icons.visibility_off
        //                             : Icons.visibility,
        //                         color: Color.fromRGBO(219, 223, 247, 1),
        //                       ),
        //                       onPressed: () {
        //                         setState(() {
        //                           _secureText = !_secureText;
        //                         });
        //                       },
        //                     )),
        //                 validator: (Value) {
        //                   if (Value!.isNotEmpty && Value.length > 3) {
        //                     return null;
        //                   } else if (Value.length < 6 && Value.isNotEmpty) {
        //                     return 'Please insert at least 6 characters !';
        //                   } else {
        //                     return 'Your password is required';
        //                   }
        //                 },
        //                 obscureText: _secureText,
        //               ),
        //               SizedBox(
        //                 height: 14,
        //               ),
        //               TextFormField(
        //                 decoration: InputDecoration(
        //                     enabledBorder: OutlineInputBorder(
        //                         borderRadius:
        //                             BorderRadius.all(Radius.circular(6)),
        //                         borderSide: BorderSide(
        //                             color:
        //                                 Color.fromARGB(255, 255, 255, 255))),
        //                     focusedBorder: OutlineInputBorder(
        //                         borderSide: BorderSide(
        //                             width: 3,
        //                             color: Color.fromRGBO(140, 79, 225, 1))),
        //                     hintText: "Confirm Your Password",
        //                     hintStyle: TextStyle(
        //                         color: Color.fromRGBO(199, 196, 196, 1)),
        //                     filled: true,
        //                     fillColor: Colors.white,
        //                     suffixIcon: IconButton(
        //                       icon: Icon(
        //                         _secureText
        //                             ? Icons.visibility_off
        //                             : Icons.visibility,
        //                         color: Color.fromRGBO(219, 223, 247, 1),
        //                       ),
        //                       onPressed: () {
        //                         setState(() {
        //                           _secureText = !_secureText;
        //                         });
        //                       },
        //                     )),
        //                 validator: (Value) {
        //                   if (Value!.isNotEmpty && Value.length > 3) {
        //                     return null;
        //                   } else if (Value.length < 4 && Value.isNotEmpty) {
        //                     return 'Your password is required';
        //                   } else {
        //                     return 'Your password is required';
        //                   }
        //                 },
        //                 obscureText: _secureText,
        //               ),
        //             ],
        //           ),
        //         ))
        //   ],
        // ),

        // SizedBox(
        //   height: 14,
        // ),
        // ElevatedButton(
        //   onPressed: () {
        //     if (!formkey.currentState!.validate()) {
        //       return;
        //     }
        //   },
        //   child: Text(
        //     "Registrasi",
        //   ),
        //   style: ElevatedButton.styleFrom(
        //       primary: Color.fromRGBO(247, 183, 49, 1),
        //       onPrimary: Colors.white,
        //       minimumSize: Size(346, 40),
        //       padding: EdgeInsets.only(top: 20, bottom: 20)),
        // ),
        // SizedBox(height: 34),
        // GestureDetector(
        //   onTap: () {},
        //   child: Text(
        //     "Already have an account?",
        //     style: new TextStyle(
        //       color: Color.fromRGBO(141, 126, 224, 1),
        //       fontSize: 14.0,
        //     ),

        //   ),
        // ),
        // GestureDetector(
        //   onTap: () {
        //     Navigator.of(context).pushReplacement(MaterialPageRoute(
        //         builder: (BuildContext context) => LoginScreen()));
        //   },
        //   child: Text(
        //     "Login here!",
        //     textAlign: TextAlign.center,
        //     style: new TextStyle(
        //       color: Color.fromRGBO(84, 66, 187, 1),
        //       fontSize: 14.0,
        //     ),
        //   ),
        // ),
  