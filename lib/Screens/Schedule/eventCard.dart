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
                  child: Text(
                    '$eventName',
                    style: TextStyle(fontSize: 8),
                  ),
                ),
              ],
            ),
            Row(
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
