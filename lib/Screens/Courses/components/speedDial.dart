import 'dart:html';
import 'dart:ui';
import 'package:first_app_flutter/Screens/Courses/components/bodyCoursesPage.dart';
import 'package:first_app_flutter/Utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

import '../courseScreen.dart';
import 'bodyCoursesPage.dart';

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
          ),
                                
                              
                        
                      
                    
            
        ]);
  }
}
