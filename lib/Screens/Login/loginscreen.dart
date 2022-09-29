import 'package:firebase_core/firebase_core.dart';
import 'package:first_app_flutter/Utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:http/http.dart';

import '../../size_config.dart';
import 'SignInComponent.dart';

class LoginScreen extends StatefulWidget {
  static String routeName = "/sign_in";

  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  Future<FirebaseApp> _initializeFirebase() async {
    FirebaseApp firebaseApp = await Firebase.initializeApp();
    return firebaseApp;
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
        backgroundColor: Color.fromRGBO(219, 223, 247, 1),
        // appBar: AppBar(
        //   backgroundColor: Color.fromRGBO(219, 223, 247, 1),
        //   automaticallyImplyLeading: false,
        // ),
        body: SignInComponent());
  }
}
