import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_splash/Register.dart';
// import './Register.dart';

class login extends StatefulWidget {
  @override
  _loginState createState() => new _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Color.fromRGBO(219, 223, 247, 1),
        padding: EdgeInsets.only(top: 97),
        child: Column(children: <Widget>[
          new Image.asset(
            "assets/logo.png",
            height: 128.0,
            width: 124.0,
          ),
          new Row(
            children: <Widget>[
              new Container(
                padding: EdgeInsets.only(left: 34, top: 28),
                child: Text(
                  "Login",
                  style: new TextStyle(
                    color: Colors.black,
                    fontSize: 24.0,
                  ),
                ),
              ),
            ],
          ),
          new Row(
            children: <Widget>[
              new Container(
                padding: EdgeInsets.only(left: 34, top: 8),
                child: Text(
                  "Login and Start Manage Your Learning \nProcess!",
                  style: new TextStyle(
                    color: Color.fromARGB(255, 137, 137, 137),
                    fontSize: 14.0,
                  ),
                ),
              ),
            ],
          ),
          new Column(
            children: <Widget>[
              new Container(
                padding: EdgeInsets.only(left: 34, top: 38, right: 34),
                child: new Column(
                  children: <Widget>[
                    new TextField(
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromARGB(255, 255, 255, 255))),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 3,
                                  color: Color.fromRGBO(140, 79, 225, 1))),
                          hintText: "Email",
                          filled: true,
                          fillColor: Colors.white,
                          border: new OutlineInputBorder(
                              borderRadius: new BorderRadius.circular(6))),
                    )
                  ],
                ),
              )
            ],
          ),
          new Column(
            children: <Widget>[
              new Container(
                padding: EdgeInsets.only(left: 34, top: 20, right: 34),
                child: new Column(
                  children: <Widget>[
                    new TextField(
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 3,
                                  color: Color.fromRGBO(140, 79, 225, 1))),
                          hintText: "Password",
                          filled: true,
                          fillColor: Colors.white,
                          border: new OutlineInputBorder(
                              borderRadius: new BorderRadius.circular(6))),
                    )
                  ],
                ),
              )
            ],
          ),
          new Row(
            children: <Widget>[
              new Container(
                padding: EdgeInsets.only(left: 210, top: 5),
                child: Text(
                  "Forgot Your Password?",
                  style: new TextStyle(
                    color: Color.fromRGBO(84, 66, 187, 1),
                    fontSize: 14.0,
                  ),
                ),
              ),
            ],
          ),
          new Column(
            children: <Widget>[
              new Container(
                padding: EdgeInsets.only(top: 38),
                child: new Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      child: Text("Login"),
                      style: ElevatedButton.styleFrom(
                          primary: Color.fromRGBO(247, 183, 49, 1),
                          onPrimary: Colors.white,
                          minimumSize: Size(335, 1),
                          padding: EdgeInsets.only(top: 20, bottom: 20)),
                    )
                  ],
                ),
              ),
            ],
          ),
          new Row(
            children: <Widget>[
              new Container(
                padding: EdgeInsets.only(left: 34, top: 8),
                child: Text(
                  "Don’t have an account yet?",
                  style: new TextStyle(
                    color: Color.fromRGBO(141, 126, 224, 1),
                    fontSize: 14.0,
                  ),
                ),
              ),
            ],
          ),
          new Row(
            children: <Widget>[
              new Container(
                  padding: EdgeInsets.only(left: 34, top: 8),
                  child: Row(
                    children: <Widget>[
                      GestureDetector(
                        child: Text(
                          "Register here",
                          style: new TextStyle(
                            color: Color.fromRGBO(84, 66, 187, 1),
                            fontSize: 14.0,
                          ),
                        ),
                        // onTap: () {
                        //   Navigator.of(context).pushReplacement(
                        //       MaterialPageRoute(
                        //           builder: (BuildContext context) =>
                        //               Register()
                        //               ));
                        // },
                      )
                    ],
                  )),
            ],
          ),
        ]),
      ),
    );
  }
}
