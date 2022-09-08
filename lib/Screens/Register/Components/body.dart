import 'dart:html';
import 'package:firebase_core/firebase_core.dart';
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
    final tinggi = MediaQuery.of(context).size.height;
    final lebar = MediaQuery.of(context).size.width;
    return Background(
        theme: ThemeData(fontFamily: 'Roboto'),
        child: Column(
          children: [
            SizedBox(
              height: tinggi * 0.1,
            ),
            Container(
              width: lebar * 0.35,
              height: lebar * 0.35,
              child: Image.asset('assets/images/logoRil.png'),
            ),
            SizedBox(
              height: tinggi * 0.03,
            ),
            Row(
              children: <Widget>[
                SizedBox(
                  width: lebar * 0.1,
                ),
                Container(
                  width: lebar * 0.2,
                  child: FittedBox(
                    child: Text(
                      "Register",
                      style: text1,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: tinggi * 0.01,
            ),
            Row(
              children: [
                SizedBox(
                  width: lebar * 0.1,
                ),
                Container(
                  width: lebar * 0.54,
                  child: FittedBox(
                    child: Text(
                      "Registration And Start Manage Your\nLearning Process!",
                      style: text2,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: tinggi * 0.04,
            ),
            Form(
              key: formKey,
              child: Column(
                children: [
                  Container(
                    width: lebar * 0.8,
                    height: tinggi * 0.05,
                    child: TextFormField(
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(6),
                          borderSide: BorderSide(
                            color: Color.fromARGB(255, 255, 255, 255),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(6),
                          borderSide: BorderSide(
                            width: 2,
                            color: Color.fromRGBO(140, 79, 225, 1),
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(6),
                          borderSide: BorderSide(
                            color: Color.fromRGBO(140, 79, 225, 1),
                          ),
                        ),
                        hintText: "Name",
                        hintStyle: textform,
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
                  ),
                  SizedBox(
                    height: tinggi * 0.015,
                  ),
                  Container(
                    width: lebar * 0.8,
                    height: tinggi * 0.05,
                    child: TextFormField(
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(6),
                          borderSide: BorderSide(
                            color: Color.fromARGB(255, 255, 255, 255),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(6),
                          borderSide: BorderSide(
                            width: 2,
                            color: Color.fromRGBO(140, 79, 225, 1),
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(6),
                          borderSide: BorderSide(
                            color: Color.fromRGBO(140, 79, 225, 1),
                          ),
                        ),
                        hintText: "Email",
                        hintStyle: textform,
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
                  ),
                  SizedBox(
                    height: tinggi * 0.015,
                  ),
                  Container(
                    width: lebar * 0.8,
                    height: tinggi * 0.05,
                    child: TextFormField(
                      controller: _password,
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(6),
                            borderSide: BorderSide(
                              color: Color.fromARGB(255, 255, 255, 255),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(6),
                            borderSide: BorderSide(
                              width: 2,
                              color: Color.fromRGBO(140, 79, 225, 1),
                            ),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(6),
                            borderSide: BorderSide(
                              color: Color.fromRGBO(140, 79, 225, 1),
                            ),
                          ),
                          hintText: "Passwowrd",
                          hintStyle: textform,
                          filled: true,
                          fillColor: Colors.white,
                          suffixIcon: IconButton(
                            icon: Icon(
                              _securePass
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                              size: lebar * 0.05,
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
                  ),
                  SizedBox(
                    height: tinggi * 0.015,
                  ),
                  Container(
                    width: lebar * 0.8,
                    height: tinggi * 0.05,
                    child: new TextFormField(
                      controller: _confirmPassword,
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(6),
                            borderSide: BorderSide(
                              color: Color.fromARGB(255, 255, 255, 255),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(6),
                            borderSide: BorderSide(
                              width: 2,
                              color: Color.fromRGBO(140, 79, 225, 1),
                            ),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(6),
                            borderSide: BorderSide(
                              color: Color.fromRGBO(140, 79, 225, 1),
                            ),
                          ),
                          hintText: "Confirm Your Password",
                          hintStyle: textform,
                          filled: true,
                          fillColor: Colors.white,
                          suffixIcon: IconButton(
                            icon: Icon(
                              _secureConfirm
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                              size: lebar * 0.05,
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
                  ),
                ],
              ),
            ),
            SizedBox(
              height: tinggi * 0.04,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.8,
              height: MediaQuery.of(context).size.height * 0.05,
              child: ElevatedButton(
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    return;
                  }
                },
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.15,
                  child: FittedBox(
                    child: Text(
                      "Register",
                      style: text3,
                    ),
                  ),
                ),
                style: elevated1,
              ),
            ),
            SizedBox(
              height: tinggi * 0.01,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                    width: lebar * 0.44,
                    child: FittedBox(
                        child: Text(
                      "Already have an account? ",
                      style: text4,
                    ))),
                Container(
                  width: lebar * 0.16,
                  child: FittedBox(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (BuildContext context) => LoginScreen()));
                      },
                      child: Text(
                        "Login here",
                        style: text5,
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ));
    //
    // Background(
    //     theme: ThemeData(fontFamily: 'Roboto'),
    //     child: Container(
    //       width: lebar * 1,
    //       height: tinggi * 1,
    //       child: Stack(
    //         alignment: Alignment.center,
    //         children: <Widget>[
    //           Positioned(
    //             top: 94,
    //             child: Image.asset(
    //               "assets/images/logo.png",
    //               height: 128.0,
    //               width: 131.0,
    //             ),
    //           ),
    //           Positioned(
    //             left: 34,
    //             top: 249,
    //             child: Text("Register", style: text1),
    //           ),
    //           Positioned(
    //             left: 34,
    //             top: 285,
    //             child: Text(
    //                 "Registration And Start Manage Your \nLearning Process!",
    //                 style: text2),
    //           ),
    //           new Column(children: <Widget>[
    //             new Container(
    //                 padding: EdgeInsets.only(left: 34, top: 360, right: 34),
    //                 child: Form(
    //                     key: formKey,
    //                     child: Column(children: <Widget>[
    //                       new TextFormField(
    //                         decoration: InputDecoration(
    //                           enabledBorder: OutlineInputBorder(
    //                             borderRadius: BorderRadius.circular(6),
    //                             borderSide: BorderSide(
    //                               color: Color.fromARGB(255, 255, 255, 255),
    //                             ),
    //                           ),
    //                           focusedBorder: OutlineInputBorder(
    //                             borderRadius: BorderRadius.circular(6),
    //                             borderSide: BorderSide(
    //                               width: 2,
    //                               color: Color.fromRGBO(140, 79, 225, 1),
    //                             ),
    //                           ),
    //                           border: OutlineInputBorder(
    //                             borderRadius: BorderRadius.circular(6),
    //                             borderSide: BorderSide(
    //                               color: Color.fromRGBO(140, 79, 225, 1),
    //                             ),
    //                           ),
    //                           hintText: "Name",
    //                           hintStyle: text2,
    //                           filled: true,
    //                           fillColor: Colors.white,
    //                         ),
    //                         validator: (Value) {
    //                           if (Value!.isNotEmpty && Value.length > 3) {
    //                             return null;
    //                           } else if (Value.length < 4 && Value.isNotEmpty) {
    //                             return kNameShort;
    //                           } else {
    //                             return kNameRequ;
    //                           }
    //                         },
    //                         onSaved: (name) {
    //                           _name = name!;
    //                         },
    //                       ),
    //                       SizedBox(
    //                         height: 14,
    //                       ),
    //                       new TextFormField(
    //                         decoration: InputDecoration(
    //                           enabledBorder: OutlineInputBorder(
    //                             borderRadius: BorderRadius.circular(6),
    //                             borderSide: BorderSide(
    //                               color: Color.fromARGB(255, 255, 255, 255),
    //                             ),
    //                           ),
    //                           focusedBorder: OutlineInputBorder(
    //                             borderRadius: BorderRadius.circular(6),
    //                             borderSide: BorderSide(
    //                               width: 2,
    //                               color: Color.fromRGBO(140, 79, 225, 1),
    //                             ),
    //                           ),
    //                           border: OutlineInputBorder(
    //                             borderRadius: BorderRadius.circular(6),
    //                             borderSide: BorderSide(
    //                               color: Color.fromRGBO(140, 79, 225, 1),
    //                             ),
    //                           ),
    //                           hintText: "Email",
    //                           hintStyle: text2,
    //                           filled: true,
    //                           fillColor: Colors.white,
    //                         ),
    //                         validator: (Value) {
    //                           if (Value!.isNotEmpty && Value.length > 3) {
    //                             return null;
    //                           } else if (Value.length < 4 && Value.isNotEmpty) {
    //                             return kValidEmail;
    //                           } else {
    //                             return kEmailRequ;
    //                           }
    //                         },
    //                         onSaved: (email) {
    //                           _email = email!;
    //                         },
    //                       ),
    //                       SizedBox(
    //                         height: 14,
    //                       ),
    //                       TextFormField(
    //                         controller: _password,
    //                         decoration: InputDecoration(
    //                             enabledBorder: OutlineInputBorder(
    //                               borderRadius: BorderRadius.circular(6),
    //                               borderSide: BorderSide(
    //                                 color: Color.fromARGB(255, 255, 255, 255),
    //                               ),
    //                             ),
    //                             focusedBorder: OutlineInputBorder(
    //                               borderRadius: BorderRadius.circular(6),
    //                               borderSide: BorderSide(
    //                                 width: 2,
    //                                 color: Color.fromRGBO(140, 79, 225, 1),
    //                               ),
    //                             ),
    //                             border: OutlineInputBorder(
    //                               borderRadius: BorderRadius.circular(6),
    //                               borderSide: BorderSide(
    //                                 color: Color.fromRGBO(140, 79, 225, 1),
    //                               ),
    //                             ),
    //                             hintText: "Passwowrd",
    //                             hintStyle: text2,
    //                             filled: true,
    //                             fillColor: Colors.white,
    //                             suffixIcon: IconButton(
    //                               icon: Icon(
    //                                 _securePass
    //                                     ? Icons.visibility_off
    //                                     : Icons.visibility,
    //                                 color: Color.fromRGBO(199, 196, 196, 1),
    //                               ),
    //                               onPressed: () {
    //                                 setState(() {
    //                                   _securePass = !_securePass;
    //                                 });
    //                               },
    //                             )),
    //                         validator: (Value) {
    //                           if (Value!.isNotEmpty && Value.length > 3) {
    //                             return null;
    //                           } else if (Value.length < 6 && Value.isNotEmpty) {
    //                             return kPass6char;
    //                           } else {
    //                             return kPassRequ;
    //                           }
    //                         },
    //                         obscureText: _securePass,
    //                       ),
    //                       SizedBox(
    //                         height: 14,
    //                       ),
    //                       new TextFormField(
    //                         controller: _confirmPassword,
    //                         decoration: InputDecoration(
    //                             enabledBorder: OutlineInputBorder(
    //                               borderRadius: BorderRadius.circular(6),
    //                               borderSide: BorderSide(
    //                                 color: Color.fromARGB(255, 255, 255, 255),
    //                               ),
    //                             ),
    //                             focusedBorder: OutlineInputBorder(
    //                               borderRadius: BorderRadius.circular(6),
    //                               borderSide: BorderSide(
    //                                 width: 2,
    //                                 color: Color.fromRGBO(140, 79, 225, 1),
    //                               ),
    //                             ),
    //                             border: OutlineInputBorder(
    //                               borderRadius: BorderRadius.circular(6),
    //                               borderSide: BorderSide(
    //                                 color: Color.fromRGBO(140, 79, 225, 1),
    //                               ),
    //                             ),
    //                             hintText: "Confirm Your Password",
    //                             hintStyle: text2,
    //                             filled: true,
    //                             fillColor: Colors.white,
    //                             suffixIcon: IconButton(
    //                               icon: Icon(
    //                                 _secureConfirm
    //                                     ? Icons.visibility_off
    //                                     : Icons.visibility,
    //                                 color: Color.fromRGBO(199, 196, 196, 1),
    //                               ),
    //                               onPressed: () {
    //                                 setState(() {
    //                                   _secureConfirm = !_secureConfirm;
    //                                 });
    //                               },
    //                             )),
    //                         validator: (Value) {
    //                           if (Value!.isNotEmpty && Value.length > 3) {
    //                             return null;
    //                           } else if (Value.length < 4 && Value.isNotEmpty) {
    //                             return kPassRequ;
    //                           } else {
    //                             return kPassRequ;
    //                           }
    //                         },
    //                         obscureText: _secureConfirm,
    //                       ),
    //                       SizedBox(
    //                         height: 34,
    //                       ),
    //                       ElevatedButton(
    //                         onPressed: () {
    //                           if (formKey.currentState!.validate()) {
    //                             return;
    //                           }
    //                         },
    //                         child: Text(
    //                           "Registrasi",
    //                           style: text3,
    //                         ),
    //                         style: elevated1,
    //                       ),
    //                       SizedBox(height: 34),
    //                       Row(
    //                         mainAxisAlignment: MainAxisAlignment.center,
    //                         children: <Widget>[
    //                           Text(
    //                             "Already have an account?",
    //                             style: text4,
    //                           ),
    //                           GestureDetector(
    //                               onTap: () {
    //                                 Navigator.of(context).pushReplacement(
    //                                     MaterialPageRoute(
    //                                         builder: (BuildContext context) =>
    //                                             LoginScreen()));
    //                               },
    //                               child: Padding(
    //                                 padding: const EdgeInsets.only(left: 5),
    //                                 child: Text(
    //                                   "Login here",
    //                                   style: text5,
    //                                 ),
    //                               ))
    //                         ],
    //                       ),
    //                     ])))
    //           ]),
    //         ],
    //       ),
    //     ));
  }
}
