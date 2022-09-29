import 'package:first_app_flutter/Reverensi/login.dart';
import 'package:first_app_flutter/Screens/AutomaticCheckIn/checkIn.dart';
import 'package:first_app_flutter/Screens/Courses/courseScreen.dart';
import 'package:first_app_flutter/Screens/Courses/courseScreen.dart';
import 'package:first_app_flutter/Screens/Docs%20&%20Files/docs&Files.dart';
import 'package:first_app_flutter/Screens/Grup%20and%20Chat/grupAndChat.dart';
import 'package:first_app_flutter/Screens/HomePage/homePage.dart';
import 'package:first_app_flutter/Screens/Login/loginscreen.dart';
import 'package:first_app_flutter/Screens/Register/registerr.dart';
import 'package:first_app_flutter/Reverensi/register.dart';
import 'package:first_app_flutter/Screens/Schedule/schedule.dart';
import 'package:first_app_flutter/Screens/Spaces/spaceScreen.dart';
import 'package:first_app_flutter/Screens/VideoConference/videoConference.dart';
import 'package:flutter/foundation.dart';
import 'package:splash_screen_view/SplashScreenView.dart';
import 'package:first_app_flutter/routes.dart';
import 'package:first_app_flutter/theme.dart';
import 'package:flutter/material.dart';
import 'package:first_app_flutter/Screens/Profil/Profil.dart';
import 'package:first_app_flutter/Screens/Register/registerr.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Belajar',
    theme: theme(),
    initialRoute: SplashScreen.routeName,
    routes: routes,
  ));
}

class SplashScreen extends StatefulWidget {
  static String routeName = "/splash_screen";

  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return SplashScreenView(
<<<<<<< HEAD
      navigateRoute: videoConference(),
=======
      navigateRoute: LoginScreen(),
>>>>>>> c8882589ffbca5638cb9180e12684bed8af3e4a3
      duration: 3000,
      imageSize: 100,
      imageSrc: "assets/images/logo.png",
      backgroundColor: Colors.white,
    );
  }
}
