import 'package:first_app_flutter/Utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class addFolderCard extends StatelessWidget {
  final Color textColor;

  final Color backgroundColor;
  final String text;

  addFolderCard({
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
      child: Stack(
        children: [
          Image.asset(
            "assets/images/Add docs.png",
            width: 163,
            height: 163,
          ),
          Positioned.fill(
              child: Align(
            alignment: Alignment.center,
            child: Text(
              text,
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                  fontFamily: 'Roboto',
                  color: kWhite),
            ),
          ))
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
