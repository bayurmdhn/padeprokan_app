import 'package:first_app_flutter/Components/appBar.dart';
import 'package:first_app_flutter/Components/appBarBack.dart';
import 'package:first_app_flutter/Screens/Courses/components/bodyCoursesPage.dart';
import 'package:flutter/material.dart';
import 'package:first_app_flutter/Screens/Register/Components/body.dart';

import '../../Utils/constants.dart';
import 'components/bodyCoursesPage.dart';

class docsFiles extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: appBarBack(
          judul: 'Courses',
        ),
      ),
      body: bodyCoursesPage(),
    );
  }
}
