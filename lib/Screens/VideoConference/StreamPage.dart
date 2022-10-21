import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:js';
import '../../Components/appBarBack.dart';

class streamPage extends StatefulWidget {
  const streamPage({Key? key}) : super(key: key);

  @override
  State<streamPage> createState() => _streamPageState();
}

class _streamPageState extends State<streamPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: Colors.black,
    );
  }
}
