import 'dart:math';
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
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    new IconButton(onPressed: (){}, icon: const Icon(Icons.abc)),
                    Padding(
                      padding: const EdgeInsets.only(left: 17),
                      child: new Text(
                        "Courses",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 18,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 17),
                          child: Image.asset(
                              'assets/images/clarity_notification-solid.png'),
                        ),
                        Image.asset('assets/images/Akun.png'),
                      ],
                    ),
                  ],
                ),
                backgroundColor: Color.fromARGB(255, 255, 255, 255),
                centerTitle: true),
        ));
  }
}