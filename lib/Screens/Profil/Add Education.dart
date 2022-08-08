import 'package:flutter/material.dart';

class AddEducation extends StatefulWidget {
  const AddEducation({Key? key}) : super(key: key);

  @override
  State<AddEducation> createState() => _AddEducationState();
}

class _AddEducationState extends State<AddEducation> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 122,
      height: 36,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          IconButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) => Padding(
                          padding: const EdgeInsets.only(bottom: 150),
                          child: ListView(
                            children: [
                              AlertDialog(
                                alignment: Alignment.topCenter,
                                content: Container(
                                  width: 386,
                                  height: 580,
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            "Add Education",
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontFamily: "Roboto"),
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
                                              padding: const EdgeInsets.only(
                                                  bottom: 12),
                                              child: RichText(
                                                  text: TextSpan(
                                                      text: "School",
                                                      style: TextStyle(
                                                          color: Color.fromARGB(
                                                              255,
                                                              153,
                                                              153,
                                                              153),
                                                          fontSize: 12),
                                                      children: [
                                                    TextSpan(
                                                        text: "*",
                                                        style: TextStyle(
                                                            color:
                                                                Color.fromARGB(
                                                                    255,
                                                                    255,
                                                                    19,
                                                                    19)))
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
                                                hintText:
                                                    "Your School / University Name",
                                                hintStyle:
                                                    TextStyle(fontSize: 11),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                            color:
                                                                Color.fromARGB(
                                                                    255,
                                                                    140,
                                                                    79,
                                                                    225)))),
                                            style: TextStyle(fontSize: 11),
                                          )),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 15),
                                        child: Row(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  bottom: 12),
                                              child: RichText(
                                                  text: TextSpan(
                                                      text: "Degre",
                                                      style: TextStyle(
                                                          color: Color.fromARGB(
                                                              255,
                                                              153,
                                                              153,
                                                              153),
                                                          fontSize: 12),
                                                      children: [
                                                    TextSpan(
                                                        text: "*",
                                                        style: TextStyle(
                                                            color:
                                                                Color.fromARGB(
                                                                    255,
                                                                    255,
                                                                    19,
                                                                    19)))
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
                                                hintText: "Your Degre",
                                                hintStyle:
                                                    TextStyle(fontSize: 11),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                            color:
                                                                Color.fromARGB(
                                                                    255,
                                                                    140,
                                                                    79,
                                                                    225)))),
                                            style: TextStyle(fontSize: 11),
                                          )),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 15),
                                        child: Row(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  bottom: 12),
                                              child: RichText(
                                                  text: TextSpan(
                                                      text: "Field of Study",
                                                      style: TextStyle(
                                                          color: Color.fromARGB(
                                                              255,
                                                              153,
                                                              153,
                                                              153),
                                                          fontSize: 12),
                                                      children: [
                                                    TextSpan(
                                                        text: "*",
                                                        style: TextStyle(
                                                            color:
                                                                Color.fromARGB(
                                                                    255,
                                                                    255,
                                                                    19,
                                                                    19)))
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
                                                hintText: "Your Study",
                                                hintStyle:
                                                    TextStyle(fontSize: 11),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                            color:
                                                                Color.fromARGB(
                                                                    255,
                                                                    140,
                                                                    79,
                                                                    225)))),
                                            style: TextStyle(fontSize: 11),
                                          )),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 15),
                                        child: Row(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  bottom: 12),
                                              child: RichText(
                                                  text: TextSpan(
                                                      text: "Year Star",
                                                      style: TextStyle(
                                                          color: Color.fromARGB(
                                                              255,
                                                              153,
                                                              153,
                                                              153),
                                                          fontSize: 12),
                                                      children: [
                                                    TextSpan(
                                                        text: "*",
                                                        style: TextStyle(
                                                            color:
                                                                Color.fromARGB(
                                                                    255,
                                                                    255,
                                                                    19,
                                                                    19)))
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
                                                hintText: "Year Star",
                                                hintStyle:
                                                    TextStyle(fontSize: 11),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                            color:
                                                                Color.fromARGB(
                                                                    255,
                                                                    140,
                                                                    79,
                                                                    225)))),
                                            style: TextStyle(fontSize: 11),
                                          )),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 15),
                                        child: Row(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  bottom: 12),
                                              child: RichText(
                                                  text: TextSpan(
                                                      text: "Year End",
                                                      style: TextStyle(
                                                          color: Color.fromARGB(
                                                              255,
                                                              153,
                                                              153,
                                                              153),
                                                          fontSize: 12),
                                                      children: [
                                                    TextSpan(
                                                        text: "*",
                                                        style: TextStyle(
                                                            color:
                                                                Color.fromARGB(
                                                                    255,
                                                                    255,
                                                                    19,
                                                                    19)))
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
                                                hintText: "Year End",
                                                hintStyle:
                                                    TextStyle(fontSize: 11),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                            color:
                                                                Color.fromARGB(
                                                                    255,
                                                                    140,
                                                                    79,
                                                                    225)))),
                                            style: TextStyle(fontSize: 11),
                                          )),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 15),
                                        child: Row(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  bottom: 12),
                                              child: RichText(
                                                  text: TextSpan(
                                                      text: "Thumbnail",
                                                      style: TextStyle(
                                                          color: Color.fromARGB(
                                                              255,
                                                              153,
                                                              153,
                                                              153),
                                                          fontSize: 12),
                                                      children: [
                                                    TextSpan(
                                                        text: "*",
                                                        style: TextStyle(
                                                            color:
                                                                Color.fromARGB(
                                                                    255,
                                                                    255,
                                                                    19,
                                                                    19)))
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
                                                  border: Border.all(
                                                      color: Colors.black),
                                                  color: Color.fromARGB(
                                                      1, 239, 239, 239)),
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    "+",
                                                    style:
                                                        TextStyle(fontSize: 20),
                                                  ),
                                                  Text(
                                                    "Upload",
                                                    style:
                                                        TextStyle(fontSize: 12),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 34),
                                        child: Divider(
                                          color: Colors.black,
                                          thickness: 1,
                                        ),
                                      ),
                                      Column(
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    right: 12),
                                                child: GestureDetector(
                                                  onTap: () {},
                                                  child: Container(
                                                    width: 71,
                                                    height: 27,
                                                    child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Text(
                                                          "Cancel",
                                                          style: TextStyle(
                                                              color: Color
                                                                  .fromARGB(
                                                                      255,
                                                                      131,
                                                                      131,
                                                                      131),
                                                              fontSize: 13),
                                                        ),
                                                      ],
                                                    ),
                                                    decoration: BoxDecoration(
                                                        color: Colors.white,
                                                        border: Border.all(
                                                            color:
                                                                Color.fromARGB(
                                                                    255,
                                                                    143,
                                                                    143,
                                                                    143)),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8)),
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
                                                        MainAxisAlignment
                                                            .center,
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
                                                          BorderRadius.circular(
                                                              8)),
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
              icon: Icon(
                Icons.add_circle_rounded,
                color: Colors.white,
                size: 25,
              )),
          Text(
            "Create New",
            style: TextStyle(color: Colors.white, fontSize: 15),
          )
        ],
      ),
      decoration: BoxDecoration(
          color: Colors.orange, borderRadius: BorderRadius.circular(8)),
    );
  }
}
