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
                          height: 690,
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
                              Column(
                                children: [MyStatefulWidget()],
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
                                              text: "Starting Work On",
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
                                        suffixIcon: IconButton(
                                            onPressed: () {},
                                            icon: Icon(
                                              Icons.calendar_month,
                                              size: 15,
                                              color: Colors.grey,
                                            )),
                                        hintText: "Select date",
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
                                              text: "I ended up workin on",
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
                                        suffixIcon: IconButton(
                                            onPressed: () {
                                              showDatePicker(
                                                context: context,
                                                initialDate: DateTime.now(),
                                                firstDate: DateTime(
                                                    DateTime.now().year),
                                                lastDate: DateTime.now(),
                                                initialDatePickerMode:
                                                    DatePickerMode.day,
                                                builder: (context, child) {
                                                  return Container(
                                                    height: 205,
                                                    width: 245,
                                                    child: child,
                                                  );
                                                },
                                              );
                                            },
                                            icon: Icon(
                                              Icons.calendar_month,
                                              size: 15,
                                              color: Colors.grey,
                                            )),
                                        hintText: "Select date",
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
                                              text: "Avatar",
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
                              Row(
                                children: [
                                  GestureDetector(
                                    onTap: () {},
                                    child: Container(
                                      width: 74,
                                      height: 67.32,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          border:
                                              Border.all(color: Colors.black),
                                          color:
                                              Color.fromARGB(1, 239, 239, 239)),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "+",
                                            style: TextStyle(fontSize: 20),
                                          ),
                                          Text(
                                            "Upload",
                                            style: TextStyle(fontSize: 12),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
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
                                              text: "Description",
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
                                        hintText: "Description",
                                        hintStyle: TextStyle(fontSize: 11),
                                        focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Color.fromARGB(
                                                    255, 140, 79, 225)))),
                                    style: TextStyle(fontSize: 11),
                                  )),
                              Padding(
                                padding: const EdgeInsets.only(top: 25),
                                child: Divider(
                                  color: Colors.black,
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
                                          onTap: () => Navigator.of(context,
                                                  rootNavigator: true)
                                              .pop(context),
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
                                        onTap: () {},
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

class LabeledCheckbox extends StatelessWidget {
  const LabeledCheckbox({
    Key? key,
    required this.label,
    required this.padding,
    required this.value,
    required this.onChanged,
  }) : super(key: key);

  final String label;
  final EdgeInsets padding;
  final bool value;
  final ValueChanged<bool> onChanged;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onChanged(!value);
      },
      child: Padding(
        padding: padding,
        child: Row(
          children: <Widget>[
            Expanded(child: Text(label)),
            Checkbox(
              value: value,
              onChanged: (bool? newValue) {
                onChanged(newValue!);
              },
            ),
          ],
        ),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  bool _isSelected = false;

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
        title: Text(
          "I Still Work Here",
          style: TextStyle(fontSize: 12, fontFamily: 'Roboto'),
        ),
        controlAffinity: ListTileControlAffinity.leading,
        value: _isSelected,
        onChanged: (newValue) {
          setState(() {
            _isSelected = newValue!;
          });
        });
  }
}
