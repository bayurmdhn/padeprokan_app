import 'package:first_app_flutter/Components/appBarBack.dart';
import 'package:first_app_flutter/Utils/constants.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class grupChat extends StatefulWidget {
  const grupChat({Key? key}) : super(key: key);

  @override
  State<grupChat> createState() => _grupChatState();
}

class _grupChatState extends State<grupChat> {
  @override
  Widget build(BuildContext context) {
    final lebar = MediaQuery.of(context).size.width;
    final tinggi = MediaQuery.of(context).size.height;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Roboto'),
      home: Scaffold(
        appBar: AppBar(
            title: appBarBack(
              judul: 'Chat',
            ),
            backgroundColor: Color.fromARGB(255, 255, 255, 255),
            centerTitle: true),
        body: Container(
          decoration: BoxDecoration(
              color: Color.fromRGBO(239, 239, 239, 1),
              border: Border.all(color: kblack, width: 1)),
          width: lebar * 1,
          height: tinggi * 1,
        ),
      ),
    );
  }
}
