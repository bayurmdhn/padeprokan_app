import 'package:first_app_flutter/Screens/Docs%20&%20Files/components/textCard.dart';
import 'package:first_app_flutter/Screens/Docs%20&%20Files/docs&Files.dart';
import 'package:first_app_flutter/Utils/constants.dart';
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
      onTap: () {
        showDialog(
          context: context,
          builder: (BuildContext) => Material(
            color: Colors.transparent,
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: kblack, width: 1),
                borderRadius: BorderRadius.circular(5),
                color: kWhite,
              ),
              margin:
                  EdgeInsets.only(top: 155, bottom: 229, left: 54, right: 54),
              child: Column(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(208, 125, 0, 1),
                    ),
                    child: Stack(
                      children: <Widget>[
                        Align(
                          alignment: Alignment.topLeft,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 14, top: 12),
                            child: Text(
                              "$fileName",
                              style: TextStyle(
                                color: kWhite,
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Roboto',
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          right: 0,
                          child: IconButton(
                              onPressed: () =>
                                  Navigator.of(context, rootNavigator: true)
                                      .pop(context),
                              icon: Icon(
                                Icons.close,
                                color: kWhite,
                              )),
                        ),
                      ],
                    ),
                    width: MediaQuery.of(context).size.width * 1,
                    height: 37,
                  ),
                  Container(
                    child: Row(
                      children: [
                        Text(
                          "$fileIsi",
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
      child: textCard(
        textColor: Colors.black,
        backgroundColor: Color.fromRGBO(230, 230, 230, 1),
        text: "$fileName",
      ),
    );
  }
}
