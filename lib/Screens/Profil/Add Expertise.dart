import 'package:first_app_flutter/Utils/constants.dart';
import 'package:flutter/material.dart';

class AddExpertise extends StatefulWidget {
  const AddExpertise({Key? key}) : super(key: key);

  @override
  State<AddExpertise> createState() => _AddExpertiseState();
}

class _AddExpertiseState extends State<AddExpertise> {
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
                        height: 200,
                        width: 386,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  "Add skill",
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
                                            text: "Skill Name",
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
                                      hintText: "Enter Skill Name",
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
