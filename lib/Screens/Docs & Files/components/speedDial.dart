import 'dart:html';
import 'dart:ui';
import 'package:first_app_flutter/Screens/Docs%20&%20Files/components/addFolder.dart';
import 'package:first_app_flutter/Screens/Docs%20&%20Files/components/uplodeFile.dart';
import 'package:first_app_flutter/Utils/constants.dart';
import 'package:first_app_flutter/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import '../docs&Files.dart';
import 'bodyDocsFiles.dart';
import 'googleDrive.dart';

class speedDial extends StatefulWidget {
  const speedDial({Key? key}) : super(key: key);

  @override
  State<speedDial> createState() => _speedDial();
}

class _speedDial extends State<speedDial> {
  @override
  Widget build(BuildContext context) {
    return SpeedDial(
        icon: Icons.add,
        backgroundColor: kColorAdd,
        overlayColor: kBackGround,
        overlayOpacity: 0.2,
        spacing: 5,
        spaceBetweenChildren: 5,
        children: [
          SpeedDialChild(
              child: Image.asset(
                "assets/images/addFile.png",
                color: kWhite,
                height: 26,
                width: 26,
              ),
              backgroundColor: kColorAdd,
              label: "New File TXT",
              labelBackgroundColor: kblack,
              labelStyle: add,
              onTap: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      TextEditingController _fileName = TextEditingController();
                      TextEditingController _isi = TextEditingController();
                      return Material(
                        color: Color.fromARGB(0, 0, 0, 0),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 14, right: 14, top: 100, bottom: 430),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8)),
                              color: kWhite,
                            ),
                            child: Column(children: [
                              // Material(
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 8, right: 8, top: 5),
                                child: TextField(
                                  maxLines: 1,
                                  cursorColor: kblack,
                                  controller: _fileName,
                                  cursorWidth: 1,
                                  style: TextStyle(color: kblack, fontSize: 20),
                                  decoration: InputDecoration(
                                      hintText: 'File Name',
                                      hintStyle: TextStyle(
                                          fontFamily: 'Roboto',
                                          fontSize: 20,
                                          color: kblack)),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 8, right: 8),
                                child: TextField(
                                  controller: _isi,
                                  keyboardType: TextInputType.multiline,
                                  maxLines: 13,
                                  cursorColor: kblack,
                                  cursorWidth: 1,
                                  style: TextStyle(color: kblack, fontSize: 12),
                                  decoration: InputDecoration(
                                      hintText: 'Write your document here',
                                      hintStyle: TextStyle(
                                          fontSize: 12, fontFamily: 'Roboto'),
                                      border: InputBorder.none),
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 22),
                                    child: GestureDetector(
                                      onTap: () => Navigator.of(context,
                                              rootNavigator: true)
                                          .pop(context),
                                      child: Container(
                                        width: 71,
                                        height: 28,
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
                                    onTap: () {
                                      print(_fileName.text);
                                      print(_isi.text);
                                    },
                                    child: Padding(
                                      padding: const EdgeInsets.only(right: 21),
                                      child: Container(
                                        width: 117,
                                        height: 28,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.all(6),
                                              child: Icon(
                                                Icons.save,
                                                size: 16,
                                                color: kWhite,
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  right: 4),
                                              child: Text(
                                                "Save & publish",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 13),
                                              ),
                                            )
                                          ],
                                        ),
                                        decoration: BoxDecoration(
                                            color:
                                                Color.fromRGBO(44, 187, 32, 1),
                                            borderRadius:
                                                BorderRadius.circular(8)),
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ]),
                          ),
                        ),
                      );
                    });
              }),
          SpeedDialChild(
              child: Image.asset(
                "assets/images/addFolder.png",
                color: kWhite,
                height: 26,
                width: 26,
              ),
              backgroundColor: kColorAdd,
              label: "Add Folder",
              labelBackgroundColor: kblack,
              labelStyle: add,
              onTap: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      TextEditingController _folderName =
                          TextEditingController();
                      return addFolder(folderName: _folderName);
                    });
              }),
          SpeedDialChild(
              child: Image.asset(
                "assets/images/clouddd.png",
                color: kWhite,
                height: 26,
                width: 26,
              ),
              backgroundColor: kColorAdd,
              label: "Upload File",
              labelBackgroundColor: kblack,
              labelStyle: add,
              onTap: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return const UplodeFile();
                    });
              }),
          SpeedDialChild(
              child: Image.asset(
                "assets/images/drive.png",
                color: kWhite,
                height: 26,
                width: 29.69,
              ),
              backgroundColor: kColorAdd,
              label: "Google Drive",
              labelBackgroundColor: kblack,
              labelStyle: add,
              onTap: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      TextEditingController _untitled = TextEditingController();
                      return googleDrive(untitled: _untitled);
                    });
              }),
        ]);
  }
}
