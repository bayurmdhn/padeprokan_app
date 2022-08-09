import 'package:first_app_flutter/Components/Automatic%20Check%20In/questionCard.dart';
import 'package:first_app_flutter/Components/Homepage/cardHome.dart';
import 'package:first_app_flutter/Screens/AutomaticCheckIn/checkIn.dart';
import 'package:flutter/material.dart';
import '../../Components/appBarBack.dart';

String questionName = '';

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
              title: appBarBack(
                judul: 'Automatic Check-Ins',
              ),
              backgroundColor: Color.fromARGB(255, 255, 255, 255),
              centerTitle: true),
          body: ListView(
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 200),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
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
                      //No Space Interface
                      index == 0
                          ? Container(
                              padding: EdgeInsets.only(bottom: 300),
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
                                          color:
                                              Color.fromARGB(255, 73, 73, 73),
                                          fontSize: 24,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          : Center(),
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
            padding: const EdgeInsets.only(bottom: 120),
            child: FloatingActionButton(
              onPressed: (() {
                showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                          content: Container(
                            width: 386,
                            height: 280,
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
                                      questionName = text;
                                    },
                                    onFieldSubmitted: (String text) {
                                      setState(() {});
                                      questionName = text;
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
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
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
                                              Icon(
                                                Icons.timelapse_rounded,
                                                color: Color.fromARGB(
                                                    255, 170, 170, 170),
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
                                    )),
                                Padding(
                                  padding: const EdgeInsets.only(top: 30),
                                  child: Divider(
                                    color: Color.fromARGB(255, 159, 159, 159),
                                    thickness: 1,
                                  ),
                                ),
                                Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(right: 12),
                                          child: GestureDetector(
                                            onTap: () {
                                              Navigator.pop(context);
                                            },
                                            child: Container(
                                              width: 71,
                                              height: 27,
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    "Cancel",
                                                    style: TextStyle(
                                                        color: Color.fromARGB(
                                                            255, 131, 131, 131),
                                                        fontSize: 13),
                                                  ),
                                                ],
                                              ),
                                              decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  border: Border.all(
                                                      color: Color.fromARGB(
                                                          255, 143, 143, 143)),
                                                  borderRadius:
                                                      BorderRadius.circular(8)),
                                            ),
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
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  "Submit",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 13),
                                                )
                                              ],
                                            ),
                                            decoration: BoxDecoration(
                                                color: Color.fromARGB(
                                                    255, 177, 17, 255),
                                                borderRadius:
                                                    BorderRadius.circular(8)),
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                )
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

class DynamicWidget extends StatelessWidget {
  const DynamicWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => const checkInPage()));
        },
        child: Padding(
          padding: const EdgeInsets.only(top: 17),
          child: questionCard(question: '$questionName'),
        ));
  }
}
