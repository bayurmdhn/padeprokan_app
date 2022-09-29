import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:js';
import '../../Components/appBarBack.dart';

bool stream = false;

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
              Container(
                color: Colors.white,
                width: 386,
                height: 195,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text('Create Video Conference'),
                      ],
                    )
                  ],
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
