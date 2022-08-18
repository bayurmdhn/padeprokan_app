import 'package:flutter/cupertino.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import '../../Utils/constants.dart';

String eventName = '';
String eventDescription = '';

class addEvent extends StatefulWidget {
  const addEvent({Key? key}) : super(key: key);

  @override
  State<addEvent> createState() => _addEventState();
}

class _addEventState extends State<addEvent> {
  DateTime _dateTimeFrom = DateTime.now();
  DateTime _dateTimeTo = DateTime.now();
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
          Container(
            decoration: BoxDecoration(
                border: Border.all(color: Color.fromARGB(255, 140, 79, 225)),
                borderRadius: BorderRadius.circular(5)),
            width: 346,
            height: 29,
            child: TextFormField(
              textAlignVertical: TextAlignVertical.bottom,
              decoration: InputDecoration(
                hintText: "Insert title here",
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
          GestureDetector(
            onTap: () {
              showDatePicker(
                builder: (context, child) {
                  return Theme(
                      data: Theme.of(context).copyWith(
                          colorScheme: ColorScheme.light(
                              primary: Color.fromARGB(255, 211, 145, 227),
                              onPrimary: Colors.white,
                              onSurface: Color.fromARGB(255, 87, 87, 87))),
                      child: child!);
                },
                context: context,
                initialDate:
                    _dateTimeFrom == null ? DateTime.now() : _dateTimeFrom,
                firstDate: DateTime(2000),
                lastDate: DateTime(2100),
              ).then((date) {
                setState(() {
                  _dateTimeFrom = date!;
                });
              });
            },
            child: Container(
              width: 346,
              height: 29,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: Color.fromARGB(255, 140, 79, 225))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 7),
                    child: Text(
                      _dateTimeFrom.toString(),
                      style: TextStyle(fontSize: 10),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 3),
                    child: Icon(
                      Icons.calendar_month,
                      color: Color.fromARGB(255, 179, 179, 179),
                      size: 16,
                    ),
                  )
                ],
              ),
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
                          text: "Time End",
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
          GestureDetector(
            onTap: () {
              showDatePicker(
                builder: (context, child) {
                  return Theme(
                      data: Theme.of(context).copyWith(
                          colorScheme: ColorScheme.light(
                              primary: Color.fromARGB(255, 211, 145, 227),
                              onPrimary: Colors.white,
                              onSurface: Color.fromARGB(255, 87, 87, 87))),
                      child: child!);
                },
                context: context,
                initialDate: _dateTimeTo == null ? DateTime.now() : _dateTimeTo,
                firstDate: DateTime(2000),
                lastDate: DateTime(2100),
              ).then((date) {
                setState(() {
                  _dateTimeTo = date!;
                });
              });
            },
            child: Container(
              width: 346,
              height: 29,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: Color.fromARGB(255, 140, 79, 225))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 7),
                    child: Text(
                      _dateTimeFrom.toString(),
                      style: TextStyle(fontSize: 10),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 3),
                    child: Icon(
                      Icons.calendar_month,
                      color: Color.fromARGB(255, 179, 179, 179),
                      size: 16,
                    ),
                  )
                ],
              ),
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
                          text: "Event Description",
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
          Container(
            width: 346,
            height: 103,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color: Color.fromARGB(255, 140, 79, 225))),
            child: TextFormField(
              textAlignVertical: TextAlignVertical.bottom,
              decoration: InputDecoration(
                hintText: "Insert title here",
                hintStyle: TextStyle(fontSize: 11),
                focusedBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Color.fromARGB(255, 140, 79, 225))),
              ),
              style: TextStyle(fontSize: 11),
              onChanged: (String text) {
                setState(() {});
                eventDescription = text;
              },
              onFieldSubmitted: (String text) {
                setState(() {});
                eventDescription = text;
              },
            ),
          ),
        ]),
      ),
    );
  }
}
