import 'package:first_app_flutter/Screens/Docs%20&%20Files/components/addfolderCard.dart';
import 'package:first_app_flutter/Screens/Docs%20&%20Files/docs&Files.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class addFolerDynamic extends StatefulWidget {
  const addFolerDynamic({Key? key}) : super(key: key);

  @override
  State<addFolerDynamic> createState() => _addFolerDynamicState();
}

class _addFolerDynamicState extends State<addFolerDynamic> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: addFolderCard(
        textColor: Colors.black,
        backgroundColor: Color.fromARGB(255, 184, 3, 3),
        text: "$fileName",
      ),
    );
  }
}
