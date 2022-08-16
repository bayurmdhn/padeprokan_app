import 'package:syncfusion_flutter_calendar/calendar.dart';
import 'package:flutter/material.dart';

String eventName = '';

class addEvent extends StatefulWidget {
  const addEvent({Key? key}) : super(key: key);

  @override
  State<addEvent> createState() => _addEventState();
}

class _addEventState extends State<addEvent> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Container(
        width: 386,
        height: 642,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Add New Event',
                style: TextStyle(
                    fontSize: 16, color: Color.fromARGB(255, 53, 53, 53)),
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
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 12),
                  child: RichText(
                      text: TextSpan(
                          text: "Event Title",
                          style: TextStyle(
                              color: Color.fromARGB(255, 153, 153, 153),
                              fontSize: 12),
                          children: [
                        TextSpan(
                            text: "*",
                            style: TextStyle(
                                color: Color.fromARGB(255, 255, 19, 19)))
                      ])),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 346,
            height: 29,
            child: TextFormField(
              textAlignVertical: TextAlignVertical.bottom,
              decoration: InputDecoration(
                hintText: "What did you do yesterday?",
                hintStyle: TextStyle(fontSize: 11),
                focusedBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Color.fromARGB(255, 140, 79, 225))),
              ),
              style: TextStyle(fontSize: 11),
              onChanged: (String text) {
                setState(() {});
                eventName = text;
              },
              onFieldSubmitted: (String text) {
                setState(() {});
                eventName = text;
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 12),
                  child: RichText(
                      text: TextSpan(
                          text: "Time Start",
                          style: TextStyle(
                              color: Color.fromARGB(255, 153, 153, 153),
                              fontSize: 12),
                          children: [
                        TextSpan(
                            text: "*",
                            style: TextStyle(
                                color: Color.fromARGB(255, 255, 19, 19)))
                      ])),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
