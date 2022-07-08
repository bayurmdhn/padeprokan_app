import 'package:first_app_flutter/Screens/Login/loginscreen.dart';
import 'package:first_app_flutter/main.dart';
import 'package:flutter/cupertino.dart';

final Map<String, WidgetBuilder> routes = {
  LoginScreen.routeName: (context) => LoginScreen(),
  SplashScreen.routeName: (context) => SplashScreen()
};
