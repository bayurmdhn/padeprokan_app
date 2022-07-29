import 'dart:html';
import 'dart:ui';
import 'package:first_app_flutter/Screens/Docs%20&%20Files/components/uplodeFile.dart';
import 'package:first_app_flutter/Utils/constants.dart';
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
                      return Material(
                        color: Color.fromARGB(0, 0, 0, 0),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 14, right: 14),
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
                                    top: 30, left: 8, right: 8),
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: 'File Name',
                                  ),
                                ),
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
              labelStyle: add),
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
