import 'dart:html';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:first_app_flutter/Components/custom_surfix_icons.dart';
import 'package:first_app_flutter/Components/default_button_custome_color.dart';
import 'package:first_app_flutter/Reverensi/login.dart';
import 'package:first_app_flutter/Screens/ForgotPassword/forgotPass.dart';
import 'package:first_app_flutter/Screens/HomePage/homePage.dart';
import 'package:first_app_flutter/Screens/Login/SignInComponent.dart';
import 'package:first_app_flutter/Screens/Register/registerr.dart';
import 'package:first_app_flutter/Utils/constants.dart';
import 'package:first_app_flutter/size_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:first_app_flutter/Reverensi/register.dart';

import 'loginScreen.dart';

class SignInForm extends StatefulWidget {
  const SignInForm({Key? key}) : super(key: key);

  @override
  State<SignInForm> createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  static Future<User?> loginUsingEmailPassword(
      {required String email,
      required String password,
      required BuildContext context}) async {
    FirebaseAuth auth = FirebaseAuth.instance;
    User? user;
    try {
      UserCredential userCredential = await auth.signInWithEmailAndPassword(
          email: email, password: password);
      user = userCredential.user;
    } on FirebaseAuthException catch (e) {
      if (e.code == "user-not-found") {
        print("No User found for that email");
      }
    }
    return user;
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          buildEmail(),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          buildPassword(),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.01,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.29,
                child: FittedBox(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (BuildContext context) => forgotPass()));
                    },
                    child: Text(
                      "Forgot Password?",
                      style: forgotPassword,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.1,
              )
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.04,
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.8,
            height: MediaQuery.of(context).size.height * 0.05,
            child: ElevatedButton(
              onPressed: () async {
                User? user = await loginUsingEmailPassword(
                    email: _emailController.text,
                    password: _passwordController.text,
                    context: context);
                print(user);
                if (user != null) {
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => HomePage()));
                }
              },
              child: Container(
                width: MediaQuery.of(context).size.width * 0.1,
                child: FittedBox(
                  child: Text(
                    "Login",
                    style: text3,
                  ),
                ),
              ),
              style: elevated1,
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.013,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width * 0.45,
                child: FittedBox(
                  child: Text(
                    "Don’t have an account yet?",
                    style: TextStyle(
                      color: Color.fromRGBO(141, 126, 224, 1),
                      fontFamily: 'Roboto',
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.01,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.2,
                child: FittedBox(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (BuildContext context) => regis()));
                    },
                    child: Text(
                      "Register here",
                      style: TextStyle(
                          color: Color.fromRGBO(84, 66, 187, 1),
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Container buildEmail() {
    return Container(
      width: MediaQuery.of(context).size.width * 0.8,
      height: MediaQuery.of(context).size.height * 0.05,
      child: TextFormField(
        controller: _emailController,
        keyboardType: TextInputType.emailAddress,
        // style: mTitleStyle,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(6)),
              borderSide:
                  BorderSide(color: Color.fromARGB(255, 255, 255, 255))),
          focusedBorder: OutlineInputBorder(
              borderSide:
                  BorderSide(width: 2, color: Color.fromRGBO(140, 79, 225, 1))),
          hintText: "Email",
          hintStyle: TextStyle(
              color: Color.fromRGBO(199, 196, 196, 1),
              fontSize: 14,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w500),
          filled: true,
          fillColor: Colors.white,
        ),
      ),
    );
  }

  Container buildPassword() {
    return Container(
      width: MediaQuery.of(context).size.width * 0.8,
      height: MediaQuery.of(context).size.height * 0.05,
      child: TextFormField(
        controller: _passwordController,
        obscureText: true,
        // style: mTitleStyle,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(6)),
              borderSide: BorderSide(color: Colors.white)),
          focusedBorder: OutlineInputBorder(
              borderSide:
                  BorderSide(width: 2, color: Color.fromRGBO(140, 79, 225, 1))),
          hintText: "Password",
          hintStyle: TextStyle(
              color: Color.fromRGBO(199, 196, 196, 1),
              fontSize: 14,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w500),
          filled: true,
          fillColor: Colors.white,
        ),
      ),
    );
  }
}
