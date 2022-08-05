import 'package:first_app_flutter/Components/appBarBack.dart';
import 'package:flutter/material.dart';
import '../../Screens/AutomaticCheckIn/automaticCheckIn.dart';

class checkInPage extends StatefulWidget {
  const checkInPage({Key? key}) : super(key: key);

  @override
  State<checkInPage> createState() => _checkInPageState();
}

class _checkInPageState extends State<checkInPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Roboto'),
      home: Scaffold(
        appBar: AppBar(
          title: appBarBack(judul: 'Check in'),
          backgroundColor: Colors.white,
          centerTitle: true,
        ),
        body: ListView(children: [Container()]),
      ),
    );
  }
}
