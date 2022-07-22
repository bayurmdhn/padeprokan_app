import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class spaceCard extends StatefulWidget {
  const spaceCard({Key? key}) : super(key: key);

  @override
  State<spaceCard> createState() => _spaceCardState();
}

class _spaceCardState extends State<spaceCard> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Container(
      width: 380,
      height: 188,
      child: Row(children: [Text("Create new Space")]),
    ));
  }
}
