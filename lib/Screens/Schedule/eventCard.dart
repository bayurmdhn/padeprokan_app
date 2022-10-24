import '../../Screens/Schedule/schedule.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

class eventCard extends StatefulWidget {
  const eventCard({Key? key}) : super(key: key);

  @override
  State<eventCard> createState() => _eventCardState();
}

class _eventCardState extends State<eventCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showDialog(
            context: context,
            builder: (context) => AlertDialog(
                  content: Container(
                      width: 260,
                      height: 350,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                '$eventName',
                                style: TextStyle(fontSize: 12),
                              ),
                            ],
                          ),
                          Divider(
                            thickness: 1,
                            color: Color.fromARGB(255, 159, 159, 159),
                          ),
                          Row(
                            children: [
                              Text(
                                'Deskripsi:',
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Color.fromARGB(255, 53, 53, 53),
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 0),
                                  child: Text('$eventDescription',
                                      style: TextStyle(fontSize: 12)),
                                ),
                              ],
                            ),
                          ),
                        ],
                      )),
                ));
      },
      child: Container(
        width: 260,
        height: 42,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
                .withOpacity(1.0)),
        child: Padding(
          padding: const EdgeInsets.only(top: 5),
          child: ListView(
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
                          ],
                        ),
                      ))
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(DateTime.now().toString()),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
