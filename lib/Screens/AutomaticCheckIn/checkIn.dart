import 'package:first_app_flutter/Components/appBarBack.dart';
import 'package:first_app_flutter/Screens/AutomaticCheckIn/answer.dart';
import 'package:flutter/material.dart';
import '../../Screens/AutomaticCheckIn/automaticCheckIn.dart';

String answer = '';

class checkInPage extends StatefulWidget {
  const checkInPage({Key? key}) : super(key: key);

  @override
  State<checkInPage> createState() => _checkInPageState();
}

class _checkInPageState extends State<checkInPage> {
  DateTime dateToday =
      DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day);

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
          title: appBarBack(judul: 'Check in'),
          backgroundColor: Colors.white,
          centerTitle: true,
        ),
        body: ListView(
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 200),
              child:
                  Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                //No Space Interface
                Container(
                  padding: EdgeInsets.only(top: 27),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 28),
                            child: Container(
                              width: 200,
                              child: Text(
                                'Question',
                                style: TextStyle(fontSize: 25),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 21),
                        child: Container(
                          width: 346,
                          height: 200,
                          padding: EdgeInsets.only(top: 10, left: 12),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5)),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Asking 1 people every weekday at ",
                                    style: TextStyle(
                                        fontSize: 11,
                                        color: Color.fromARGB(255, 82, 82, 82)),
                                  )
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 16),
                                child: Row(
                                  children: [
                                    Text(
                                      'Answer',
                                      style: TextStyle(fontSize: 20),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 20),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.circle,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 16),
                                      child: SizedBox(
                                          width: 244,
                                          height: 24,
                                          child: TextFormField(
                                            onChanged: (String text) {
                                              setState(() {});
                                              answer = text;
                                            },
                                            onFieldSubmitted: (String text) {
                                              setState(() {});
                                              answer = text;
                                            },
                                            decoration: InputDecoration(
                                              hintText:
                                                  "Type your message here",
                                              hintStyle:
                                                  TextStyle(fontSize: 11),
                                              focusedBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: Color.fromARGB(
                                                          255, 140, 79, 225))),
                                            ),
                                            style: TextStyle(fontSize: 11),
                                          )),
                                    ),
                                    IconButton(
                                        onPressed: () {
                                          addDynamic();
                                        },
                                        icon: Icon(Icons.send_rounded))
                                  ],
                                ),
                              ),
                              Row(
                                children: [
                                  Divider(
                                    thickness: 1,
                                    color: Color.fromARGB(255, 148, 148, 148),
                                  ),
                                  Text(dateToday.toString())
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
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
              ]),

              //Screen size
              decoration:
                  new BoxDecoration(color: Color.fromARGB(255, 219, 223, 247)),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
            ),
          ],
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
      padding: const EdgeInsets.only(top: 17),
      child: Answer(),
    );
  }
}
