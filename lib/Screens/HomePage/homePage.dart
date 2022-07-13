import 'dart:js';
import 'package:path/path.dart';
import 'package:flutter/material.dart';
import 'package:flutter_profile_picture/flutter_profile_picture.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(fontFamily: 'Roboto'),
        home: Scaffold(
          appBar: AppBar(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  new Image.asset('assets/images/Logo padeprokan.png'),
                  Padding(
                    padding: const EdgeInsets.only(left: 17),
                    child: new Text(
                      "Spaces",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 18,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                          padding: const EdgeInsets.only(right: 17),
                          child: IconButton(
                            icon: Icon(
                              Icons.notifications,
                              color: Color.fromARGB(255, 138, 138, 138),
                            ),
                            onPressed: () {
                              showDialog(
                                context: context,
                                builder: (BuildContext context) =>
                                    _buildPopupDialog(context),
                              );
                            },
                          )),
                      ProfilePicture(
                        name: "Test",
                        radius: 13.5,
                        fontsize: 18,
                        random: true,
                      )
                    ],
                  ),
                ],
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
                      Row(
                        children: [
                          Padding(padding: EdgeInsets.only(left: 34)),
                          Text(
                            "Spaces",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 36,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      new Column(
                        children: <Widget>[
                          new Container(
                            padding:
                                EdgeInsets.only(left: 19, top: 20, right: 34),
                            child: new Column(
                              children: <Widget>[
                                new TextField(
                                  decoration: InputDecoration(
                                      suffixIcon: IconButton(
                                          onPressed: () {},
                                          icon: Icon(Icons.search)),
                                      enabledBorder: OutlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.white)),
                                      filled: true,
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10.0)),
                                      hintText: 'Search Spaces',
                                      hintStyle: TextStyle(
                                          fontWeight: FontWeight.bold),
                                      fillColor: Colors.white,
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Color.fromARGB(
                                                255, 140, 79, 225)),
                                      )),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 73),
                        child: Column(
                          children: [
                            Image.asset('assets/images/Logo copy.png'),
                            Container(
                              padding: EdgeInsets.only(top: 79),
                              child: Text(
                                "You Have No Space Here!",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Color.fromARGB(255, 73, 73, 73),
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold),
                              ),
                            )
                          ],
                        ),
                      ),
                    ]),
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
              onPressed: () {},
              tooltip: 'Create New Space',
              child: const Icon(Icons.add),
              backgroundColor: Color.fromARGB(255, 255, 162, 2),
            ),
          ),
        ));
  }
}

Widget _buildPopupDialog(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: new AlertDialog(
      title: const Text('Popup example'),
      content: new Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text("Hello"),
        ],
      ),
      actions: <Widget>[
        new FlatButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          textColor: Theme.of(context).primaryColor,
          child: const Text('Close'),
        ),
      ],
    ),
  );
}
