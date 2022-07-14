import 'package:first_app_flutter/Screens/Login/loginscreen.dart';
import 'package:splash_screen_view/SplashScreenView.dart';
import 'package:first_app_flutter/routes.dart';
import 'package:first_app_flutter/theme.dart';
import 'package:flutter/material.dart';
import 'Profil/Profil.dart';

void main() async {
  runApp(MaterialApp(
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
      navigateRoute: LoginScreen(),
      duration: 3000,
      imageSize: 90,
      imageSrc: "assets/images/Logo.png",
      backgroundColor: Colors.white,
      // text: "",
      // textStyle: TextStyle(
      //    fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black),
    );
  }
}
