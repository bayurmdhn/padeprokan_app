import 'dart:ui';
import '../../Screens/AutomaticCheckIn/checkIn.dart';
import 'package:flutter/material.dart';

String sendDuration = 'A Few seconds ago';

class Answer extends StatelessWidget {
  const Answer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 346,
      height: 83,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(5)),
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 7),
                  child: Row(
                    children: [
                      Icon(
                        Icons.circle,
                        color: Color.fromARGB(255, 148, 148, 148),
                        size: 25,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          'NAME',
                          style: TextStyle(
                              fontSize: 10, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5, right: 5),
                        child: Icon(
                          Icons.circle,
                          size: 4,
                          color: Color.fromARGB(255, 217, 217, 217),
                        ),
                      ),
                      Text(
                        sendDuration,
                        style: TextStyle(
                            fontSize: 10,
                            color: Color.fromARGB(255, 217, 217, 217)),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 35),
                      child: Container(
                        width: 200,
                        child: Text(
                          '$answer',
                          style: TextStyle(fontSize: 10),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 35),
                      child: GestureDetector(
                        onTap: () {},
                        child: Text(
                          'Comments',
                          style: TextStyle(
                              fontSize: 10,
                              color: Color.fromARGB(255, 70, 100, 255)),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
