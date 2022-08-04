import 'package:first_app_flutter/Screens/Docs%20&%20Files/components/textCard.dart';
import 'package:first_app_flutter/Screens/Docs%20&%20Files/docs&Files.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class textDynamic extends StatefulWidget {
  const textDynamic({Key? key}) : super(key: key);

  @override
  State<textDynamic> createState() => _textDynamicState();
}

class _textDynamicState extends State<textDynamic> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: textCard(
        textColor: Colors.black,
        backgroundColor: Color.fromRGBO(230, 230, 230, 1),
        text: "$fileName",
      ),
    );
  }
}
