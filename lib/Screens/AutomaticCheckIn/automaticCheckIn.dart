import 'package:flutter/material.dart';

import '../../Components/appBarBack.dart';

String question = '';

class autoCheck extends StatefulWidget {
  const autoCheck({Key? key}) : super(key: key);

  @override
  State<autoCheck> createState() => _autoCheckState();
}

class _autoCheckState extends State<autoCheck> {
  TimeOfDay time = TimeOfDay(hour: 8, minute: 30);

  void _showTimePicker() {
    showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    ).then((value) {
      setState(() {
        time = value!;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(fontFamily: 'Roboto'),
        home: Scaffold(
          appBar: AppBar(
              title: appBarBack(
                judul: 'Automatic Check-Ins',
              ),
              backgroundColor: Color.fromARGB(255, 255, 255, 255),
              centerTitle: true),
          body: ListView(
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(0, 31, 0, 248),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      //No Space Interface
                      Container(
                        padding: EdgeInsets.only(top: 73),
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/images/Check in List is Empty.png',
                              width: 220,
                              height: 160,
                            ),
                            Container(
                              padding: EdgeInsets.only(top: 79),
                              child: Text(
                                "You're space not have course now!",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Color.fromARGB(255, 73, 73, 73),
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ]),
                //Screen size
                decoration: new BoxDecoration(
                    color: Color.fromARGB(255, 219, 223, 247)),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
              ),
            ],
          ),
          floatingActionButton: Padding(
            padding: const EdgeInsets.only(bottom: 78),
            child: FloatingActionButton(
              onPressed: (() {
                showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                          content: Container(
                            width: 386,
                            height: 306,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Add Automatic Check-In",
                                      style: TextStyle(fontSize: 16),
                                    ),
                                    IconButton(
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                        icon: Icon(Icons.close))
                                  ],
                                ),
                                Divider(
                                  color: Color.fromARGB(255, 188, 188, 188),
                                  thickness: 1,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 15),
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: 12),
                                        child: RichText(
                                            text: TextSpan(
                                                text: "Question",
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
                                SizedBox(
                                  width: 346,
                                  height: 29,
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      hintText: "What did you do yesterday?",
                                      hintStyle: TextStyle(fontSize: 11),
                                      focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Color.fromARGB(
                                                  255, 140, 79, 225))),
                                    ),
                                    style: TextStyle(fontSize: 11),
                                    onChanged: (String text) {
                                      setState(() {});
                                      question = text;
                                    },
                                    onFieldSubmitted: (String text) {
                                      setState(() {});
                                      question = text;
                                    },
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 15),
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: 12),
                                        child: RichText(
                                            text: TextSpan(
                                                text: "Time Notify",
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
                                    onTap: _showTimePicker,
                                    child: Row(
                                      children: [
                                        Container(
                                          width: 117,
                                          height: 29,
                                          decoration: BoxDecoration(  
                                              border: Border.all(
                                                  color: Color.fromARGB(
                                                      255, 140, 79, 225)),
                                              borderRadius:
                                                  BorderRadius.circular(5)),
                                          child: Row(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 7),
                                                child: Text(
                                                  time
                                                      .format(context)
                                                      .toString(),
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      color: Color.fromARGB(
                                                          255, 194, 194, 194)),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ))
                              ],
                            ),
                          ),
                        ));
              }),
              child: Icon(Icons.add_rounded),
              backgroundColor: Color.fromARGB(255, 255, 162, 2),
            ),
          ),
        ));
  }
}
