import 'package:first_app_flutter/Screens/Login/loginComponent.dart';
import 'package:first_app_flutter/Utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../size_config.dart';

class LoginScreen extends StatelessWidget {
  static String routeName = "/sign_in";

  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Color.fromRGBO(219, 223, 247, 1),
      // appBar: AppBar(
      //   backgroundColor: Color.fromRGBO(219, 223, 247, 1),
      //   automaticallyImplyLeading: false,
      // ),
      body: SignInComponent(),
    );
  }
}
