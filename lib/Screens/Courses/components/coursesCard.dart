import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import '../../Courses/courseScreen.dart';
import '../../Courses/components/bodyCoursesPage.dart';
import 'package:first_app_flutter/Screens/Courses/components/bodyCoursesPage.dart';

class coursesCard extends StatelessWidget {
  final Color textColor;
  final Color spaceColor;
  final Color backgroundColor;
  final String text;

  coursesCard(
      {Key? key,
      required this.textColor,
      required this.backgroundColor,
      required this.text,
      required this.spaceColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 18),
      child: Container(
          width: 162,
          height: 163,
          decoration: BoxDecoration(
              color: backgroundColor, borderRadius: BorderRadius.circular(8)),
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 1,
                height: 108,
                decoration: BoxDecoration(color: spaceColor),
              ),
              Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 7),
                    child: Text(
                      text,
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              )
            ],
          )),
    );
  }
}
