import 'dart:html';

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
          SizedBox(height: getProportionateScreenHeight(20)),
          buildPassword(),
          SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                padding: EdgeInsets.only(right: 34),
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
              )
            ],
          ),
          SizedBox(
            height: 41,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (BuildContext context) => HomePage()));
            },
            child: Text(
              "Login",
              style: text3,
            ),
            style: elevated1,
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Don’t have an account yet?",
                style: text4,
              ),
              GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (BuildContext context) => regis()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Text(
                      "Register here",
                      style: text5,
                    ),
                  ))
            ],
          ),
        ],
      ),
    );
  }

  Container buildEmail() {
    return Container(
      padding: EdgeInsets.only(left: 34, right: 34),
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
          filled: true,
          fillColor: Colors.white,
        ),
      ),
    );
  }

  Container buildPassword() {
    return Container(
      padding: EdgeInsets.only(left: 34, right: 34),
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
          filled: true,
          fillColor: Colors.white,
        ),
      ),
    );
  }
}
