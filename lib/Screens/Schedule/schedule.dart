import 'dart:html';
import 'dart:ui';

import 'package:first_app_flutter/Components/appBarBack.dart';

import 'package:first_app_flutter/Screens/Schedule/eventCard.dart';

import 'package:syncfusion_flutter_calendar/calendar.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

String eventName = '';
String eventDescription = '';
DateTime _dateTimeFrom = DateTime.now();
DateTime _dateTimeTo = DateTime.now();

class SchedulePage extends StatefulWidget {
  const SchedulePage({Key? key}) : super(key: key);

  @override
  State<SchedulePage> createState() => _SchedulePageState();
}

class _SchedulePageState extends State<SchedulePage> {
  CalendarFormat format = CalendarFormat.month;
  DateTime selectedDate = DateTime.now();
  DateTime focusedDate = DateTime.now();

  List<DynamicWidget> listDynamic = [];
  int index = 0;
  addDynamic() {
    listDynamic.add(DynamicWidget());
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Roboto'),
      home: Scaffold(
        appBar: AppBar(
            title: appBarBack(judul: 'Schedule'),
            backgroundColor: Color.fromARGB(255, 255, 255, 255),
            centerTitle: true),
        body: ListView(
          children: [
            Container(
              decoration:
                  new BoxDecoration(color: Color.fromARGB(255, 219, 223, 247)),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 234, 234, 234),
                          border: Border.all(
                              color: Color.fromARGB(255, 177, 177, 177))),
                      width: 386,
                      height: 699,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                ElevatedButton(
                                  onPressed: () {},
                                  child: Text(
                                    'Day',
                                    style: TextStyle(color: Colors.black),
                                  ),
                                  style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              Colors.white)),
                                ),
                                ElevatedButton(
                                  onPressed: () {},
                                  child: Text(
                                    'Month',
                                    style: TextStyle(color: Colors.black),
                                  ),
                                  style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              Colors.white)),
                                ),
                                ElevatedButton(
                                  onPressed: () {},
                                  child: Text(
                                    'Week',
                                    style: TextStyle(color: Colors.black),
                                  ),
                                  style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              Colors.white)),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(color: Colors.black)),
                                child: TableCalendar(
                                  firstDay: DateTime.utc(2000),
                                  lastDay: DateTime.utc(2050),
                                  focusedDay: focusedDate,
                                  calendarFormat: format,
                                  onFormatChanged: (CalendarFormat _format) {
                                    setState(() {
                                      format = _format;
                                    });
                                  },
                                  startingDayOfWeek: StartingDayOfWeek.monday,
                                  daysOfWeekVisible: true,
                                  onDaySelected: (DateTime selectedDay,
                                      DateTime focusDay) {
                                    setState(() {
                                      selectedDate = selectedDay;
                                      focusedDate = focusDay;
                                    });
                                  },
                                  selectedDayPredicate: (DateTime date) {
                                    return isSameDay(selectedDate, date);
                                  },
                                  calendarStyle: CalendarStyle(),
                                  headerStyle: HeaderStyle(
                                      titleCentered: true,
                                      formatButtonVisible: true,
                                      formatButtonShowsNext: false),
                                ),
                              )),
                          Expanded(
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.85,
                              height: MediaQuery.of(context).size.height,
                              child: Padding(
                                padding: const EdgeInsets.only(top: 19),
                                child: Column(
                                  children: [
                                    Flexible(
                                        child: ListView.builder(
                                            itemCount: listDynamic.length,
                                            itemBuilder: (_, index) =>
                                                listDynamic[index])),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
        floatingActionButton: Padding(
          padding: const EdgeInsets.only(bottom: 78),
          child: FloatingActionButton(
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                        content: Container(
                          width: 386,
                          height: 642,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8)),
                          child: Column(children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Add New Event',
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Color.fromARGB(255, 53, 53, 53)),
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
                                                color: Color.fromARGB(
                                                    255, 153, 153, 153),
                                                fontSize: 12),
                                            children: [
                                          TextSpan(
                                              text: "*",
                                              style: TextStyle(
                                                  color: Color.fromARGB(
                                                      255, 255, 19, 19)))
                                        ])),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Color.fromARGB(255, 140, 79, 225)),
                                  borderRadius: BorderRadius.circular(5)),
                              width: 346,
                              height: 29,
                              child: TextFormField(
                                textAlignVertical: TextAlignVertical.bottom,
                                decoration: InputDecoration(
                                  hintText: "Insert title here",
                                  hintStyle: TextStyle(fontSize: 11),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Color.fromARGB(
                                              255, 140, 79, 225))),
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
                                                color: Color.fromARGB(
                                                    255, 153, 153, 153),
                                                fontSize: 12),
                                            children: [
                                          TextSpan(
                                              text: "*",
                                              style: TextStyle(
                                                  color: Color.fromARGB(
                                                      255, 255, 19, 19)))
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
                                                primary: Color.fromARGB(
                                                    255, 211, 145, 227),
                                                onPrimary: Colors.white,
                                                onSurface: Color.fromARGB(
                                                    255, 87, 87, 87))),
                                        child: child!);
                                  },
                                  context: context,
                                  initialDate: _dateTimeFrom == null
                                      ? DateTime.now()
                                      : _dateTimeFrom,
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
                                    border: Border.all(
                                        color:
                                            Color.fromARGB(255, 140, 79, 225))),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
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
                                        color:
                                            Color.fromARGB(255, 179, 179, 179),
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
                                                color: Color.fromARGB(
                                                    255, 153, 153, 153),
                                                fontSize: 12),
                                            children: [
                                          TextSpan(
                                              text: "*",
                                              style: TextStyle(
                                                  color: Color.fromARGB(
                                                      255, 255, 19, 19)))
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
                                                primary: Color.fromARGB(
                                                    255, 211, 145, 227),
                                                onPrimary: Colors.white,
                                                onSurface: Color.fromARGB(
                                                    255, 87, 87, 87))),
                                        child: child!);
                                  },
                                  context: context,
                                  initialDate: _dateTimeTo == null
                                      ? DateTime.now()
                                      : _dateTimeTo,
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
                                    border: Border.all(
                                        color:
                                            Color.fromARGB(255, 140, 79, 225))),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
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
                                        color:
                                            Color.fromARGB(255, 179, 179, 179),
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
                                                color: Color.fromARGB(
                                                    255, 153, 153, 153),
                                                fontSize: 12),
                                            children: [
                                          TextSpan(
                                              text: "*",
                                              style: TextStyle(
                                                  color: Color.fromARGB(
                                                      255, 255, 19, 19)))
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
                                  border: Border.all(
                                      color:
                                          Color.fromARGB(255, 140, 79, 225))),
                              child: TextFormField(
                                textAlignVertical: TextAlignVertical.bottom,
                                decoration: InputDecoration(
                                  hintText: "Insert title here",
                                  hintStyle: TextStyle(fontSize: 11),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Color.fromARGB(
                                              255, 140, 79, 225))),
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
                            GestureDetector(
                              onTap: () {
                                addDynamic();
                                index++;
                                Navigator.pop(context);
                              },
                              child: Container(
                                width: 71,
                                height: 27,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Submit",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 13),
                                    )
                                  ],
                                ),
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 177, 17, 255),
                                    borderRadius: BorderRadius.circular(8)),
                              ),
                            ),
                          ]),
                        ),
                      ));
            },
            child: Icon(Icons.add_rounded),
            backgroundColor: Color.fromARGB(255, 255, 162, 2),
          ),
        ),
      ),
    );
  }
}

class DynamicWidget extends StatelessWidget {
  const DynamicWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: eventCard(),
    );
  }
}
