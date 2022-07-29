import 'package:flutter/material.dart';

import '../../../Utils/constants.dart';

class googleDrive extends StatelessWidget {
  const googleDrive({
    Key? key,
    required TextEditingController untitled,
  })  : _untitled = untitled,
        super(key: key);

  final TextEditingController _untitled;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Color.fromARGB(0, 0, 0, 0),
      child: Padding(
        padding:
            const EdgeInsets.only(top: 183, left: 16, right: 16, bottom: 375),
        child: Container(
            decoration: BoxDecoration(
                color: kWhite, borderRadius: BorderRadius.circular(8)),
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 17, top: 21),
                    child: Text(
                      "Embed Link From google drive",
                      style: TextStyle(
                          fontSize: 16, fontFamily: 'Roboto', color: kblack),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 21, right: 21),
                    child: IconButton(
                      onPressed: () =>
                          Navigator.of(context, rootNavigator: true)
                              .pop(context),
                      icon: Icon(Icons.close),
                    ),
                  ),
                ],
              ),
              Divider(
                height: 16,
                color: kdivider,
                thickness: 1,
              ),
              SizedBox(
                height: 6,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 17),
                    child: Text(
                      "File name",
                      style: embedLink,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 3.5),
                    child: Text(
                      "*",
                      style: embedLink2,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18, right: 22),
                child: Form(
                  child: SizedBox(
                    height: 29,
                    child: TextFormField(
                      controller: _untitled,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                            borderSide: BorderSide(
                                color: Color.fromRGBO(140, 79, 225, 1))),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: 2,
                                color: Color.fromRGBO(140, 79, 225, 1))),
                        hintText: "Untitled",
                        hintStyle: searchFiles,
                        filled: true,
                        fillColor: Colors.white,
                      ),
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 17),
                    child: Text(
                      "Embed link",
                      style: embedLink,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 3.5),
                    child: Text(
                      "*",
                      style: embedLink2,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18, right: 22),
                child: Form(
                  child: SizedBox(
                    height: 29,
                    child: TextFormField(
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                            borderSide: BorderSide(
                                color: Color.fromRGBO(140, 79, 225, 1))),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: 2,
                                color: Color.fromRGBO(140, 79, 225, 1))),
                        hintText:
                            "e.g.https://drive.google.com/open?id=1cMc-qT_W......",
                        hintStyle: searchFiles,
                        filled: true,
                        fillColor: Colors.white,
                      ),
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                ),
              ),
              Divider(
                height: 25,
                color: kdivider,
                thickness: 1,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 12),
                    child: GestureDetector(
                      onTap: () {},
                      child: Container(
                        width: 71,
                        height: 27,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Cancel",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 131, 131, 131),
                                  fontSize: 13),
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                                color: Color.fromARGB(255, 143, 143, 143)),
                            borderRadius: BorderRadius.circular(8)),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      print(_untitled.text);
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(right: 21),
                      child: Container(
                        width: 71,
                        height: 27,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Submit",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 13),
                            )
                          ],
                        ),
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 177, 17, 255),
                            borderRadius: BorderRadius.circular(8)),
                      ),
                    ),
                  ),
                ],
              )
            ])),
      ),
    );
  }
}
