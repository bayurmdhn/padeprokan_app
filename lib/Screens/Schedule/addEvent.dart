import 'package:first_app_flutter/Screens/Schedule/eventEdit.dart';
import 'package:flutter/material.dart';

class addEvent extends StatefulWidget {
  final String title;
  final String description;
  // final DateTime from;
  // final DateTime to;
  final Color backgroundColor;
  final bool isAllDay;

  const addEvent(
      {Key? key,
      required this.title,
      required this.description,
      // required this.from,
      // required this.to,
      this.backgroundColor = Colors.lightGreen,
      this.isAllDay = false})
      : super(key: key);

  @override
  State<addEvent> createState() => _addEventState();
}

class _addEventState extends State<addEvent> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Padding(
        padding:
            const EdgeInsets.only(left: 18, top: 140, right: 18, bottom: 117),
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Color.fromARGB(255, 159, 159, 159)),
              borderRadius: BorderRadius.circular(8)),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: Text(
                      'Add New Event',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.close))
                ],
              ),
              Divider(
                thickness: 1,
                color: Color.fromARGB(255, 159, 159, 159),
              ),
              eventEdit()
            ],
          ),
        ),
      ),
    );
  }
}
