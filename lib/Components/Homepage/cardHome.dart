import 'package:flutter/cupertino.dart';
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
    return Container(
      color: Colors.red,
      width: 346,
      height: 160,
      child: Column(
        children: [
          Container(
            width: 346,
            height: 108,
            decoration: BoxDecoration(color: Colors.blue),
          ),
          Row(
            children: [
              Text(
                "PKL Class",
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
            ],
          )
        ],
      ),
    );
  }
}
