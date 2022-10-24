import '../../Screens/Schedule/schedule.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

String editEvent = '';

enum MenuItem { item1, item2 }

class eventCard extends StatefulWidget {
  const eventCard({Key? key}) : super(key: key);

  @override
  State<eventCard> createState() => _eventCardState();
}

class _eventCardState extends State<eventCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 260,
      height: 42,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
              .withOpacity(1.0)),
      child: Padding(
        padding: const EdgeInsets.only(top: 5),
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            '$eventName',
                            style: TextStyle(
                                fontSize: 12,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          PopupMenuButton(
                            itemBuilder: (context) => [
                              PopupMenuItem(
                                  value: MenuItem.item1,
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.edit,
                                        color: Color.fromARGB(255, 0, 102, 255),
                                      ),
                                      Text(
                                        'Edit',
                                        style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 0, 102, 255)),
                                      )
                                    ],
                                  )),
                              PopupMenuItem(
                                  value: MenuItem.item2,
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.delete,
                                        color: Color.fromARGB(255, 246, 0, 0),
                                      ),
                                      Text('Delete',
                                          style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 246, 0, 0)))
                                    ],
                                  ))
                            ],
                          ),
                        ],
                      ),
                    ))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child:
                      Text('$eventDescription', style: TextStyle(fontSize: 8)),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
