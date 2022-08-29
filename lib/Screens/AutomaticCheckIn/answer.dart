import 'dart:ui';
import '../../Screens/AutomaticCheckIn/checkIn.dart';
import 'package:flutter/material.dart';

enum MenuItem { item1, item2 }

String sendDuration = 'A Few seconds ago';

class Answer extends StatelessWidget {
  const Answer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 346,
      height: 90,
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
                            color: Color.fromARGB(255, 89, 89, 89)),
                      ),
                      PopupMenuButton(
                          onSelected: (value) {
                            if (value == MenuItem.item1) {}
                            if (value == MenuItem.item2) {}
                          },
                          icon: Icon(
                            Icons.more_horiz,
                            color: Color.fromARGB(255, 89, 89, 89),
                          ),
                          iconSize: 13,
                          itemBuilder: (context) => [
                                PopupMenuItem(
                                    child: Row(
                                  children: [
                                    Icon(
                                      Icons.edit,
                                      color: Color.fromARGB(255, 89, 89, 89),
                                    ),
                                    Text(
                                      'Edit',
                                      style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 89, 89, 89)),
                                    )
                                  ],
                                )),
                                PopupMenuItem(
                                    child: Row(
                                  children: [
                                    Icon(
                                      Icons.delete,
                                      color: Color.fromARGB(255, 89, 89, 89),
                                    ),
                                    Text('Delete',
                                        style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 89, 89, 89)))
                                  ],
                                ))
                              ])
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
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Row(
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
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
