import 'package:first_app_flutter/Utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

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
    return Container(
      width: 163,
      height: 163,
      decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(2),
          border: Border.all(color: Color.fromRGBO(177, 177, 177, 1))),
      child: Stack(
        children: [
          Positioned.fill(
              child: Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 3, right: 3),
                    child: GestureDetector(
                      onTap: () {},
                      child: Container(
                          decoration: BoxDecoration(
                              color: kWhite,
                              borderRadius: BorderRadius.circular(3)),
                          width: 30,
                          height: 20,
                          child: Center(
                              child: Icon(
                            Icons.more_horiz,
                            size: 13,
                          ))),
                    ),
                  ))),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 30, bottom: 24),
                child: Image.asset(
                  "assets/images/text.png",
                  width: 78,
                  height: 78,
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(2),
                  color: kWhite,
                ),
                width: MediaQuery.of(context).size.width * 1,
                height: 28,
                child: Padding(
                  padding: const EdgeInsets.only(left: 6, top: 8),
                  child: Text(
                    "$text",
                    style: TextStyle(
                        fontSize: 12, color: kblack, fontFamily: 'Roboto'),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),

      // child: Column(
      //   children: [
      //     Container(
      //       width: 163,
      //       height: 129,
      //       decoration: BoxDecoration(color: spaceColor),
      //     ),
      //     Row(
      //       children: [
      //         SizedBox(
      //           width: 10,
      //         ),
      //         Padding(
      //           padding: const EdgeInsets.only(top: 7),
      //           child: Text(
      //             text,
      //             style:
      //                 TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      //           ),
      //         ),
      //       ],
      //     )
      //   ],
      // )
    );
  }
}
