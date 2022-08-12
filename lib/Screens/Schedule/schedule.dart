import 'package:first_app_flutter/Components/appBarBack.dart';
import 'package:flutter/material.dart';

class SchedulePage extends StatelessWidget {
  const SchedulePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Roboto'),
      home: Scaffold(
        appBar: AppBar(
            title: appBarBack(judul: 'Schedule'),
            backgroundColor: Color.fromARGB(255, 255, 255, 255),
            centerTitle: true),
        body: ListView(
          children: [
            Container(
              decoration:
                  new BoxDecoration(color: Color.fromARGB(255, 219, 223, 247)),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Column(),
            )
          ],
        ),
      ),
    );
  }
}
