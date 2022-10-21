import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:js';
import '../../Components/appBarBack.dart';
import 'StreamPage.dart';

bool stream = false;
String conferenceName = "";

class videoConference extends StatefulWidget {
  const videoConference({Key? key}) : super(key: key);

  @override
  State<videoConference> createState() => _videoConferenceState();
}

class _videoConferenceState extends State<videoConference> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Roboto'),
      home: Scaffold(
        appBar: AppBar(
          title: appBarBack(judul: 'Video Conference'),
          backgroundColor: Color.fromARGB(255, 255, 255, 255),
        ),
        body: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 32),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8)),
                  width: MediaQuery.of(context).size.width * 0.70,
                  height: MediaQuery.of(context).size.height * 0.20,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 15, left: 18),
                            child: Text(
                              'Create Video Conference',
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                        ],
                      ),
                      Divider(
                        thickness: 1,
                        color: Color.fromARGB(255, 159, 159, 159),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 18, top: 10),
                            child: RichText(
                                text: TextSpan(
                                    text: "Conference name",
                                    style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 153, 153, 153),
                                        fontSize: 12),
                                    children: [
                                  TextSpan(
                                      text: "*",
                                      style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 255, 19, 19)))
                                ])),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 300,
                        height: 29,
                        child: TextFormField(
                          textAlignVertical: TextAlignVertical.bottom,
                          decoration: InputDecoration(
                            hintText: "Enter the name of conference",
                            hintStyle: TextStyle(fontSize: 11),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color.fromARGB(255, 140, 79, 225))),
                          ),
                          style: TextStyle(fontSize: 11),
                          onChanged: (String text) {
                            setState(() {});
                            conferenceName = text;
                          },
                          onFieldSubmitted: (String text) {
                            setState(() {});
                            conferenceName = text;
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10, right: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).pushReplacement(
                                    MaterialPageRoute(
                                        builder: (BuildContext context) =>
                                            streamPage()));
                              },
                              child: Container(
                                width: 71,
                                height: 27,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Submit",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 13),
                                    )
                                  ],
                                ),
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 177, 17, 255),
                                    borderRadius: BorderRadius.circular(8)),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          decoration:
              new BoxDecoration(color: Color.fromARGB(255, 219, 223, 247)),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
        ),
      ),
    );
  }
}
