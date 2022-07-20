import 'package:first_app_flutter/Reverensi/register.dart';
import 'package:flutter/material.dart';
import 'package:first_app_flutter/Screens/Register/Components/body.dart';

class regis extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Body(),
    );
  }
}
