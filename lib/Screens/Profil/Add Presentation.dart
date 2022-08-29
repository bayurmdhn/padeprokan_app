import 'package:flutter/material.dart';

class AddPresentation extends StatefulWidget {
  const AddPresentation({Key? key}) : super(key: key);

  @override
  State<AddPresentation> createState() => _AddPresentationState();
}

class _AddPresentationState extends State<AddPresentation> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showDialog(
            context: context,
            builder: (context) => Padding(
                padding: const EdgeInsets.only(),
                child: Column(
                  children: [
                    AlertDialog(
                      alignment: Alignment.topCenter,
                      content: Container(
                        height: 480,
                        width: 386,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  "Add Presentation",
                                  style: TextStyle(
                                      fontSize: 16, fontFamily: 'Roboto'),
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
                                    padding: const EdgeInsets.only(bottom: 12),
                                    child: RichText(
                                        text: TextSpan(
                                            text: "Slide Titel",
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
                                      hintText: "Enter Slide Titel",
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
                                    padding: const EdgeInsets.only(bottom: 12),
                                    child: RichText(
                                        text: TextSpan(
                                            text: "Thumbnail",
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
                                        borderRadius: BorderRadius.circular(5),
                                        border: Border.all(color: Colors.black),
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
                                    padding: const EdgeInsets.only(bottom: 12),
                                    child: RichText(
                                        text: TextSpan(
                                            text: "Embed Link",
                                            style: TextStyle(
                                                color: Color.fromARGB(
                                                    255, 153, 153, 153),
                                                fontSize: 12),
                                            children: [
                                          TextSpan(
                                              text: "*",
                                              style: TextStyle(
                                                  color: Color.fromARGB(
                                                      255, 255, 19, 19))),
                                        ])),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 13),
                                    child: Row(
                                      children: [Icon(Icons.link)],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                                width: 346,
                                height: 29,
                                child: TextFormField(
                                  decoration: InputDecoration(
                                      hintText:
                                          "e.g.https://docs.google.com/presentation/d/e/2PAX2UISDUI....",
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
                                    padding: const EdgeInsets.only(bottom: 12),
                                    child: RichText(
                                        text: TextSpan(
                                            text: "Note",
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
                                height: 50,
                                child: TextFormField(
                                  decoration: InputDecoration(
                                      hintText: "Add Note",
                                      hintStyle: TextStyle(fontSize: 11),
                                      focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Color.fromARGB(
                                                  255, 140, 79, 225)))),
                                  style: TextStyle(fontSize: 11),
                                )),
                            Padding(
                              padding: const EdgeInsets.only(top: 50),
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
                                      padding: const EdgeInsets.only(right: 12),
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
                )));
      },
      child: Container(
        width: 122,
        height: 36,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.add_circle_rounded,
              color: Colors.white,
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
