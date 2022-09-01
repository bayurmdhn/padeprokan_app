import 'dart:html';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:first_app_flutter/Components/custom_surfix_icons.dart';
import 'package:first_app_flutter/Components/default_button_custome_color.dart';
import 'package:first_app_flutter/Screens/ForgotPassword/forgotPass.dart';
import 'package:first_app_flutter/Screens/HomePage/homePage.dart';
import 'package:first_app_flutter/Screens/Register/registerr.dart';
import 'package:first_app_flutter/Utils/constants.dart';
import 'package:first_app_flutter/size_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:first_app_flutter/Reverensi/register.dart';

import '../../Screens/Login/loginScreen.dart';

class SignInForm extends StatefulWidget {
  const SignInForm({Key? key}) : super(key: key);

  @override
  State<SignInForm> createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  final _formKey = GlobalKey<FormState>();
  String? email;
  String? password;
  bool? remeber = false;

  TextEditingController txtEmail = TextEditingController(),
      txtPassword = TextEditingController();

  FocusNode focusNode = new FocusNode();

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
              onPressed: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (BuildContext context) => HomePage()));
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
        controller: txtEmail,
        keyboardType: TextInputType.text,
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
        controller: txtPassword,
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
