import 'dart:html';
import 'package:first_app_flutter/Screens/Register/registerr.dart';
import 'package:first_app_flutter/Utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:first_app_flutter/Screens/Register/Components/background.dart';
import 'package:flutter/widgets.dart';
import 'package:set_state/set_state.dart';

import '../../Login/loginScreen.dart';

class Body extends StatefulWidget {
  @override
  State<Body> createState() => _Body();
}

class _Body extends State<Body> {
  bool _secureConfirm = true;
  bool _securePass = true;
  String _email = '';
  String _name = '';
  TextEditingController _password = TextEditingController();
  TextEditingController _confirmPassword = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
        theme: ThemeData(fontFamily: 'Roboto'),
        child: Container(
          width: double.infinity,
          height: size.height,
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              Positioned(
                top: 94,
                child: Image.asset(
                  "assets/images/logo.png",
                  height: 128.0,
                  width: 124.0,
                ),
              ),
              Positioned(
                left: 34,
                top: 249,
                child: Text("Register", style: text1),
              ),
              Positioned(
                left: 34,
                top: 285,
                child: Text(
                    "Registration And Start Manage Your \nLearning Process!",
                    style: text2),
              ),
              new Column(children: <Widget>[
                new Container(
                    padding: EdgeInsets.only(left: 34, top: 360, right: 34),
                    child: Form(
                        key: formKey,
                        child: Column(children: <Widget>[
                          new TextFormField(
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(6)),
                                  borderSide: BorderSide(
                                      color:
                                          Color.fromARGB(255, 255, 255, 255))),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 2,
                                      color: Color.fromRGBO(140, 79, 225, 1))),
                              hintText: "Name",
                              hintStyle: text2,
                              filled: true,
                              fillColor: Colors.white,
                            ),
                            validator: (Value) {
                              if (Value!.isNotEmpty && Value.length > 3) {
                                return null;
                              } else if (Value.length < 4 && Value.isNotEmpty) {
                                return kNameShort;
                              } else {
                                return kNameRequ;
                              }
                            },
                            onSaved: (name) {
                              _name = name!;
                            },
                          ),
                          SizedBox(
                            height: 14,
                          ),
                          new TextFormField(
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(6)),
                                  borderSide: BorderSide(
                                      color:
                                          Color.fromARGB(255, 255, 255, 255))),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 2,
                                      color: Color.fromRGBO(140, 79, 225, 1))),
                              hintText: "Email",
                              hintStyle: text2,
                              filled: true,
                              fillColor: Colors.white,
                            ),
                            validator: (Value) {
                              if (Value!.isNotEmpty && Value.length > 3) {
                                return null;
                              } else if (Value.length < 4 && Value.isNotEmpty) {
                                return kValidEmail;
                              } else {
                                return kEmailRequ;
                              }
                            },
                            onSaved: (email) {
                              _email = email!;
                            },
                          ),
                          SizedBox(
                            height: 14,
                          ),
                          TextFormField(
                            controller: _password,
                            decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(6)),
                                    borderSide: BorderSide(
                                        color: Color.fromARGB(
                                            255, 255, 255, 255))),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 3,
                                        color:
                                            Color.fromRGBO(140, 79, 225, 1))),
                                hintText: "Passwowrd",
                                hintStyle: text2,
                                filled: true,
                                fillColor: Colors.white,
                                suffixIcon: IconButton(
                                  icon: Icon(
                                    _securePass
                                        ? Icons.visibility_off
                                        : Icons.visibility,
                                    color: Color.fromRGBO(199, 196, 196, 1),
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      _securePass = !_securePass;
                                    });
                                  },
                                )),
                            validator: (Value) {
                              if (Value!.isNotEmpty && Value.length > 3) {
                                return null;
                              } else if (Value.length < 6 && Value.isNotEmpty) {
                                return kPass6char;
                              } else {
                                return kPassRequ;
                              }
                            },
                            obscureText: _securePass,
                          ),
                          SizedBox(
                            height: 14,
                          ),
                          new TextFormField(
                            controller: _confirmPassword,
                            decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(6)),
                                    borderSide: BorderSide(
                                        color: Color.fromARGB(
                                            255, 255, 255, 255))),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 2,
                                        color:
                                            Color.fromRGBO(140, 79, 225, 1))),
                                hintText: "Confirm Your Password",
                                hintStyle: text2,
                                filled: true,
                                fillColor: Colors.white,
                                suffixIcon: IconButton(
                                  icon: Icon(
                                    _secureConfirm
                                        ? Icons.visibility_off
                                        : Icons.visibility,
                                    color: Color.fromRGBO(199, 196, 196, 1),
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      _secureConfirm = !_secureConfirm;
                                    });
                                  },
                                )),
                            validator: (Value) {
                              if (Value!.isNotEmpty && Value.length > 3) {
                                return null;
                              } else if (Value.length < 4 && Value.isNotEmpty) {
                                return kPassRequ;
                              } else {
                                return kPassRequ;
                              }
                            },
                            obscureText: _secureConfirm,
                          ),
                          SizedBox(
                            height: 34,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              if (formKey.currentState!.validate()) {
                                return;
                              }
                            },
                            child: Text(
                              "Registrasi",
                              style: text3,
                            ),
                            style: elevated1,
                          ),
                          SizedBox(height: 34),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                "Already have an account?",
                                style: text4,
                              ),
                              GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).pushReplacement(
                                        MaterialPageRoute(
                                            builder: (BuildContext context) =>
                                                LoginScreen()));
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 5),
                                    child: Text(
                                      "Login here",
                                      style: text5,
                                    ),
                                  ))
                            ],
                          ),
                        ])))
              ]),
            ],
          ),
        ));
  }
}
