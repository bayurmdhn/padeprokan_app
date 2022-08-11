import 'dart:html';

import 'package:first_app_flutter/Screens/Docs%20&%20Files/components/deleteFile.dart';
import 'package:first_app_flutter/Screens/Docs%20&%20Files/components/renameFile.dart';
import 'package:first_app_flutter/Screens/Docs%20&%20Files/docs&Files.dart';
import 'package:first_app_flutter/Utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:set_state/set_state.dart';

class textCard extends StatelessWidget {
  final Color textColor;

  final Color backgroundColor;
  final String text;

  textCard({
    Key? key,
    required this.textColor,
    required this.backgroundColor,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQueryHeight = MediaQuery.of(context).size.height;
    final mediaQueryWidht = MediaQuery.of(context).size.width;
    //container utama
    return Container(
      width: mediaQueryWidht * 1,
      height: mediaQueryHeight * 1,
      decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(2),
          border: Border.all(color: Color.fromRGBO(177, 177, 177, 1))),
      // Stack untuk menaruh icon titik 3 di kanan atas
      child: Stack(
        children: [
          Positioned.fill(
              child: Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 3, right: 3),

                    //container icon titik tiga
                    child: Container(
                      decoration: BoxDecoration(
                          color: kWhite,
                          borderRadius: BorderRadius.circular(3)),
                      width: 30,
                      height: 20,
                      child: Center(
                        child: PopupMenuButton(
                          shape: Border.all(
                              color: Color.fromRGBO(216, 216, 216, 1),
                              width: 1),
                          iconSize: 13,
                          padding: EdgeInsets.zero,
                          icon: Icon(Icons.more_horiz),
                          itemBuilder: (context) => [
                            //pop up menu Edit
                            PopupMenuItem(
                                onTap: () {
                                  showDialog(
                                      context: context,
                                      builder: (BuildContext) {
                                        return renameFIle();
                                      });
                                },
                                padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
                                height: 20,
                                child: Column(
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        Icon(Icons.edit_outlined,
                                            size: 20,
                                            color:
                                                Color.fromRGBO(89, 89, 89, 1)),
                                        SizedBox(
                                          width: 9,
                                        ),
                                        Text(
                                          "edit",
                                          style: TextStyle(
                                              fontSize: 15,
                                              color:
                                                  Color.fromRGBO(89, 89, 89, 1),
                                              fontWeight: FontWeight.w400),
                                        )
                                      ],
                                    ),
                                  ],
                                )),
                            //pop up menu Delete
                            PopupMenuItem(
                                onTap: () {
                                  showDialog(
                                      context: context,
                                      builder: (BuildContext) {
                                        return deleteFile();
                                      });
                                },
                                padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
                                height: 20,
                                child: Column(
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        Icon(
                                          Icons.delete_outlined,
                                          size: 20,
                                          color: Color.fromRGBO(89, 89, 89, 1),
                                        ),
                                        SizedBox(
                                          width: 9,
                                        ),
                                        Text(
                                          "delete",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 15,
                                              color: Color.fromRGBO(
                                                  89, 89, 89, 1)),
                                        )
                                      ],
                                    )
                                  ],
                                ))
                          ],
                        ),
                      ),
                    ),
                  ))),
          Column(
            children: [
              Container(
                width: mediaQueryWidht * 1,
                height: mediaQueryHeight * 0.156,
                child: Padding(
                  padding: const EdgeInsets.only(top: 30, bottom: 24),
                  child: Image.asset(
                    "assets/images/fileTxt.png",
                    width: 78,
                    height: 78,
                  ),
                ),
              ),
              //container nama file a
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(2),
                      bottomRight: Radius.circular(2)),
                  color: kWhite,
                ),
                width: mediaQueryWidht * 1,
                height: mediaQueryHeight * 0.033,
                child: Padding(
                  padding: const EdgeInsets.only(left: 6),
                  // row agar tulisan berada di tengah vertikal
                  child: Row(
                    children: [
                      Text(
                        "$text",
                        style: TextStyle(
                            fontSize: 12, color: kblack, fontFamily: 'Roboto'),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
