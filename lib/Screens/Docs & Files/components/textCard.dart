import 'package:first_app_flutter/Utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class textCard extends StatelessWidget {
  final Color textColor;
  final Color spaceColor;
  final Color backgroundColor;
  final String text;

  textCard(
      {Key? key,
      required this.textColor,
      required this.backgroundColor,
      required this.text,
      required this.spaceColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 163,
      height: 163,
      decoration: BoxDecoration(color: backgroundColor),
      child: Column(
        children: [
          Image.asset(
            "assets/images/text.png",
            width: 78,
            height: 78,
          ),
          Text("$text"),
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
