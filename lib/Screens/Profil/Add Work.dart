import 'dart:html';

import 'package:first_app_flutter/Utils/constants.dart';
import 'package:flutter/material.dart';

class AddWork extends StatefulWidget {
  const AddWork({Key? key}) : super(key: key);

  @override
  State<AddWork> createState() => _AddWorkState();
}

class _AddWorkState extends State<AddWork> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showDialog(
            context: context,
            builder: (context) => Padding(
                  padding: const EdgeInsets.only(),
                  child: ListView(
                    children: [
                      AlertDialog(
                        alignment: Alignment.topCenter,
                        content: Container(
                          width: 386,
                          height: 800,
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Add work",
                                    style: TextStyle(
                                        fontSize: 16, fontFamily: "Roboto"),
                                  )
                                ],
                              ),
                              Divider(
                                color: Colors.black,
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
                                              text: "Titel",
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
                                        hintText: "Enter Your Job Titel",
                                        hintStyle: TextStyle(fontSize: 11),
                                        focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Color.fromARGB(
                                                    255, 140, 79, 225)))),
                                    style: TextStyle(fontSize: 11),
                                  )),
                              Padding(
                                padding: const EdgeInsets.only(top: 15),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 12),
                                      child: RichText(
                                          text: TextSpan(
                                              text: "Company name",
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
                                  height: 35,
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                        hintText: "Enter Your company name",
                                        hintStyle: TextStyle(fontSize: 11),
                                        focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Color.fromARGB(
                                                    255, 140, 79, 225)))),
                                    style: TextStyle(fontSize: 11),
                                  )),
                              Padding(
                                padding: const EdgeInsets.only(top: 15),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 12),
                                      child: RichText(
                                          text: TextSpan(
                                              text: "Location",
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
                                        hintText: "Enter the company address",
                                        hintStyle: TextStyle(fontSize: 11),
                                        focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Color.fromARGB(
                                                    255, 140, 79, 225)))),
                                    style: TextStyle(fontSize: 11),
                                  )),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ));
      },
      child: Container(
        width: 122,
        height: 36,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.add_circle_rounded,
              color: kWhite,
              size: 25,
            ),
            Text(
              "Create New",
              style: TextStyle(color: Colors.white, fontSize: 15),
            )
          ],
        ),
        decoration: BoxDecoration(
            color: Colors.orange, borderRadius: BorderRadius.circular(8)),
      ),
    );
  }
}
