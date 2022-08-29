import 'package:flutter/material.dart';
import 'package:first_app_flutter/Screens/Register/Components/body.dart';
import '../../Utils/constants.dart';
import 'Components/Components/bodyForgot.dart';

class forgotPass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: BodyForgot(),
    );
  }
}
