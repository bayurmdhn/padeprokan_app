import 'dart:html';

import 'package:first_app_flutter/Components/appBarBack.dart';
import 'package:first_app_flutter/Screens/Schedule/addEvent.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import 'package:flutter/material.dart';

class SchedulePage extends StatefulWidget {
  const SchedulePage({Key? key}) : super(key: key);

  @override
  State<SchedulePage> createState() => _SchedulePageState();
}

class _SchedulePageState extends State<SchedulePage> {
  CalendarView tampilanKalender = CalendarView.month;

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
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    tampilanKalender = CalendarView.day;
                                    setState(() {});
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        border: Border.all(
                                          color: Color.fromARGB(
                                              255, 122, 122, 122),
                                        ),
                                        borderRadius: BorderRadius.circular(3)),
                                    width: 73,
                                    height: 34,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Day',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    tampilanKalender = CalendarView.month;
                                    setState(() {});
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        border: Border.all(
                                          color: Color.fromARGB(
                                              255, 122, 122, 122),
                                        ),
                                        borderRadius: BorderRadius.circular(3)),
                                    width: 73,
                                    height: 34,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Month',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      tampilanKalender = CalendarView.week;
                                    });
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        border: Border.all(
                                          color: Color.fromARGB(
                                              255, 122, 122, 122),
                                        ),
                                        borderRadius: BorderRadius.circular(3)),
                                    width: 73,
                                    height: 34,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Week',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SfCalendar(
                            view: tampilanKalender,
                            initialSelectedDate: DateTime.now(),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showDialog(
                context: context,
                builder: (context) => addEvent(
                      title: 'title',
                      description: 'description',
                    ));
          },
          child: Icon(Icons.add_rounded),
          backgroundColor: Color.fromARGB(255, 255, 162, 2),
        ),
      ),
    );
  }
}
