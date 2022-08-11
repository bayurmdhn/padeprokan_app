import 'package:first_app_flutter/Screens/Docs%20&%20Files/docs&Files.dart';
import 'package:flutter/material.dart';

import '../../../Utils/constants.dart';

class renameFIle extends StatefulWidget {
  const renameFIle({Key? key}) : super(key: key);

  @override
  State<renameFIle> createState() => _renameFIleState();
}

class _renameFIleState extends State<renameFIle> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Color.fromARGB(0, 0, 0, 0),
      child: Padding(
        padding: EdgeInsets.only(left: 14, right: 14, top: 183, bottom: 430),
        //container utama untuk rename file
        child: Container(
          decoration: BoxDecoration(
              color: kWhite, borderRadius: BorderRadius.circular(8)),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 17, top: 21),
                    child: Text(
                      "Rename File",
                      style: TextStyle(
                          fontSize: 16, fontFamily: 'Roboto', color: kblack),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 21, right: 21),
                    //tombol silang
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
                thickness: 1,
                height: 20,
                color: kdivider,
              ),

              Padding(
                padding: const EdgeInsets.only(left: 19, top: 24),
                child: Row(
                  children: [
                    Text(
                      "File Name ",
                      style: TextStyle(
                          color: kgrey,
                          fontFamily: 'Roboto',
                          fontSize: 12,
                          fontWeight: FontWeight.w400),
                    ),
                    Text("*",
                        style: TextStyle(
                          color: Color.fromRGBO(255, 0, 0, 1),
                          fontFamily: 'Roboto',
                        ))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 19, top: 15, right: 20),
                child: SizedBox(
                  height: 29,
                  width: 346,
                  //tempat Form atau untuk mengisi
                  child: TextFormField(
                    cursorColor: kblack,
                    cursorWidth: 1,
                    style: TextStyle(fontSize: 12, fontFamily: 'Roboto'),
                    textAlignVertical: TextAlignVertical.bottom,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                          borderSide: BorderSide(
                              color: Color.fromRGBO(140, 79, 225, 1))),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              width: 2,
                              color: Color.fromRGBO(140, 79, 225, 1))),
                      hintText: "$fileName",
                      hintStyle: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 12,
                          color: Color.fromRGBO(194, 194, 194, 1)),
                      prefixIcon: Icon(
                        Icons.folder,
                        size: 16,
                        color: kblack,
                      ),
                    ),
                  ),
                ),
              ),
              Divider(
                height: 27,
                thickness: 1,
                color: kdivider,
              ),
              //Tombol/Button
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 12),
                    child: GestureDetector(
                      onTap: () => Navigator.of(context, rootNavigator: true)
                          .pop(context),
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
                    onTap: () {},
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
            ],
          ),
        ),
      ),
    );
  }
}
