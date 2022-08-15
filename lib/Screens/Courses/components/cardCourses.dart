import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import '../../Courses/courseScreen.dart';

enum MenuItem { item1, item2 }

class cardCourses extends StatefulWidget {
  final Color textColor;
  final Color spaceColor;
  final Color backgroundColor;
  final String text;

  cardCourses(
      {Key? key,
      required this.textColor,
      required this.backgroundColor,
      required this.text,
      required this.spaceColor})
      : super(key: key);

  @override
  State<cardCourses> createState() => _cardCoursesState();
}

class _cardCoursesState extends State<cardCourses> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 18),
      child: Container(
          width: 346,
          height: 160,
          decoration: BoxDecoration(
              color: widget.backgroundColor,
              borderRadius: BorderRadius.circular(8)),
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 1,
                height: 108,
                decoration: BoxDecoration(color: widget.spaceColor),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        PopupMenuButton(
                            onSelected: (value) {
                              if (value == MenuItem.item1) {
                                showDialog(
                                    context: context,
                                    builder: (context) => AlertDialog(
                                          content: Container(
                                            width: 380,
                                            height: 188,
                                            child: Column(children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 16),
                                                    child: Text(
                                                      "Rename Space",
                                                      style: TextStyle(
                                                          fontSize: 16),
                                                    ),
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
                                                color: Color.fromARGB(
                                                    255, 188, 188, 188),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    bottom: 0),
                                                child: Row(
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              top: 19),
                                                      child: RichText(
                                                          text: TextSpan(
                                                              text:
                                                                  "Space name",
                                                              style: TextStyle(
                                                                  color: Color
                                                                      .fromARGB(
                                                                          255,
                                                                          153,
                                                                          153,
                                                                          153),
                                                                  fontSize: 12),
                                                              children: [
                                                            TextSpan(
                                                                text: "*",
                                                                style: TextStyle(
                                                                    color: Color
                                                                        .fromARGB(
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
                                                  textAlignVertical:
                                                      TextAlignVertical.bottom,
                                                  decoration: InputDecoration(
                                                    hintText: "Your Space name",
                                                    hintStyle:
                                                        TextStyle(fontSize: 11),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                            borderSide: BorderSide(
                                                                color: Color
                                                                    .fromARGB(
                                                                        255,
                                                                        140,
                                                                        79,
                                                                        225))),
                                                  ),
                                                  style:
                                                      TextStyle(fontSize: 11),
                                                  onChanged: (String text) {
                                                    setState(() {});
                                                    spaceName = text;
                                                  },
                                                  onFieldSubmitted:
                                                      (String text) {
                                                    setState(() {});
                                                    spaceName = text;
                                                  },
                                                ),
                                              ),
                                            ]),
                                          ),
                                        ));
                              }
                              if (value == MenuItem.item2) {}
                            },
                            icon: Icon(
                              Icons.more_vert,
                              color: Colors.white,
                              size: 25,
                            ),
                            itemBuilder: (context) => [
                                  PopupMenuItem(
                                      value: MenuItem.item1,
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.edit,
                                            color: Color.fromARGB(
                                                255, 0, 102, 255),
                                          ),
                                          Text(
                                            'Edit',
                                            style: TextStyle(
                                                color: Color.fromARGB(
                                                    255, 0, 102, 255)),
                                          )
                                        ],
                                      )),
                                  PopupMenuItem(
                                      value: MenuItem.item2,
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.delete,
                                            color:
                                                Color.fromARGB(255, 246, 0, 0),
                                          ),
                                          Text('Delete',
                                              style: TextStyle(
                                                  color: Color.fromARGB(
                                                      255, 246, 0, 0)))
                                        ],
                                      ))
                                ])
                      ],
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 7),
                    child: Text(
                      widget.text,
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              )
            ],
          )),
    );
  }
}
