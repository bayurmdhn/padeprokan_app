import 'dart:html';
import 'dart:ui';

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
                                // GestureDetector(
                                //   onTap: () {
                                //     setState(() {
                                //       tampilanKalender = CalendarView.day;
                                //     });
                                //   },
                                //   child: Container(
                                //     decoration: BoxDecoration(
                                //         color: Colors.white,
                                //         border: Border.all(
                                //           color: Color.fromARGB(
                                //               255, 122, 122, 122),
                                //         ),
                                //         borderRadius: BorderRadius.circular(3)),
                                //     width: 73,
                                //     height: 34,
                                //     child: Column(
                                //       mainAxisAlignment:
                                //           MainAxisAlignment.center,
                                //       children: [
                                //         Text(
                                //           'Day',
                                //           style: TextStyle(
                                //               fontWeight: FontWeight.bold),
                                //         )
                                //       ],
                                //     ),
                                //   ),
                                // ),
                                // GestureDetector(
                                //   onTap: () {
                                //     setState(() {
                                //       tampilanKalender = CalendarView.month;
                                //     });
                                //   },
                                //   child: Container(
                                //     decoration: BoxDecoration(
                                //         color: Colors.white,
                                //         border: Border.all(
                                //           color: Color.fromARGB(
                                //               255, 122, 122, 122),
                                //         ),
                                //         borderRadius: BorderRadius.circular(3)),
                                //     width: 73,
                                //     height: 34,
                                //     child: Column(
                                //       mainAxisAlignment:
                                //           MainAxisAlignment.center,
                                //       children: [
                                //         Text(
                                //           'Month',
                                //           style: TextStyle(
                                //               fontWeight: FontWeight.bold),
                                //         )
                                //       ],
                                //     ),
                                //   ),
                                // ),
                                // GestureDetector(
                                //   onTap: () {
                                //     setState(() {
                                //       tampilanKalender = CalendarView.week;
                                //     });
                                //   },
                                //   child: Container(
                                //     decoration: BoxDecoration(
                                //         color: Colors.white,
                                //         border: Border.all(
                                //           color: Color.fromARGB(
                                //               255, 122, 122, 122),
                                //         ),
                                //         borderRadius: BorderRadius.circular(3)),
                                //     width: 73,
                                //     height: 34,
                                //     child: Column(
                                //       mainAxisAlignment:
                                //           MainAxisAlignment.center,
                                //       children: [
                                //         Text(
                                //           'Week',
                                //           style: TextStyle(
                                //               fontWeight: FontWeight.bold),
                                //         )
                                //       ],
                                //     ),
                                //   ),
                                // ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(color: Colors.black)),
                              child: SfCalendar(
                                view: tampilanKalender,
                                initialSelectedDate: DateTime.now(),
                                monthViewSettings: MonthViewSettings(
                                    monthCellStyle: MonthCellStyle(
                                        backgroundColor:
                                            Color.fromARGB(255, 194, 194, 194),
                                        trailingDatesBackgroundColor:
                                            Color.fromARGB(255, 112, 112, 112),
                                        leadingDatesBackgroundColor:
                                            Color.fromARGB(255, 112, 112, 112),
                                        todayBackgroundColor:
                                            Color.fromARGB(255, 178, 209, 255),
                                        textStyle: TextStyle(
                                            color: Colors.black,
                                            fontSize: 12,
                                            fontFamily: 'Arial'),
                                        todayTextStyle: TextStyle(
                                            color: Colors.black,
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: 'Arial'),
                                        trailingDatesTextStyle: TextStyle(
                                            color: Colors.black,
                                            fontStyle: FontStyle.italic,
                                            fontSize: 12,
                                            fontFamily: 'Arial'),
                                        leadingDatesTextStyle: TextStyle(
                                            color: Colors.black,
                                            fontStyle: FontStyle.italic,
                                            fontSize: 12,
                                            fontFamily: 'Arial'))),
                              ),
                            ),
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
        floatingActionButton: Padding(
          padding: const EdgeInsets.only(bottom: 78),
          child: FloatingActionButton(
            onPressed: () {
              showDialog(context: context, builder: (context) => addEvent());
            },
            child: Icon(Icons.add_rounded),
            backgroundColor: Color.fromARGB(255, 255, 162, 2),
          ),
        ),
      ),
    );
  }
}
