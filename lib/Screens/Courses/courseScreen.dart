import 'dart:math';
import 'package:first_app_flutter/Components/appBarBack.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Courses extends StatefulWidget {
  const Courses({Key? key}) : super(key: key);

  @override
  State<Courses> createState() => _SpaceState();
}

class _SpaceState extends State<Courses> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Roboto'),
      home: Scaffold(
        appBar: AppBar(
            title: appBarBack(
              judul: 'Courses',
            ),
            backgroundColor: Color.fromARGB(255, 255, 255, 255),
            centerTitle: true),
        body: ListView(
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(0, 31, 0, 248),
              child:
                  Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                //Search Engine
                new Column(
                  children: <Widget>[
                    new Container(
                      padding: EdgeInsets.only(left: 19, top: 20, right: 34),
                      child: new Column(
                        children: <Widget>[
                          new TextField(
                            decoration: InputDecoration(
                                suffixIcon: IconButton(
                                    onPressed: () {}, icon: Icon(Icons.search)),
                                enabledBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.white)),
                                filled: true,
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.0)),
                                hintText: 'Search Courses',
                                hintStyle:
                                    TextStyle(fontWeight: FontWeight.bold),
                                fillColor: Colors.white,
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Color.fromARGB(255, 140, 79, 225)),
                                )),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                //No Space Interface
                Container(
                  padding: EdgeInsets.only(top: 73),
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/images/Courses.png',
                        width: 220,
                        height: 160,
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 79),
                        child: Text(
                          "You're space not have course now!",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color.fromARGB(255, 73, 73, 73),
                              fontSize: 24,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
              ]),
              //Screen size
              decoration:
                  new BoxDecoration(color: Color.fromARGB(255, 219, 223, 247)),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
            ),
          ],
        ),
      ),
    );
  }
}
