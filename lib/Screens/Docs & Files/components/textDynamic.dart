import 'package:first_app_flutter/Components/appBarBack.dart';
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
            color: Color.fromARGB(0, 255, 255, 255),
            child: Column(
              children: [
                // jarak kotak nama file dan isinya dari atas / top
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.15,
                ),
                Row(
                  children: [
                    // jarak ke samping
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.13,
                    ),
                    //kotak utama yang berisi name file dan isi
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(5),
                          topRight: Radius.circular(5),
                          bottomLeft: Radius.circular(5),
                          bottomRight: Radius.circular(5),
                        ),
                        color: kWhite,
                      ),
                      child: Column(
                        children: <Widget>[
                          //kotak nama file dan silang (icon close)
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(color: kblack, width: 1),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(5),
                                  topRight: Radius.circular(5)),
                              color: Color.fromRGBO(208, 125, 0, 1),
                            ),
                            child: Stack(
                              children: <Widget>[
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 14, top: 12),
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
                                      onPressed: () => Navigator.of(context,
                                              rootNavigator: true)
                                          .pop(context),
                                      icon: Icon(
                                        Icons.close,
                                        color: kWhite,
                                      )),
                                ),
                              ],
                            ),
                            // lebar dari container nama File
                            width: MediaQuery.of(context).size.width * 0.73,
                            //tinggi dari container Nama file
                            height: MediaQuery.of(context).size.height * 0.05,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(color: kblack, width: 1),
                                  left: BorderSide(color: kblack, width: 1),
                                  right: BorderSide(color: kblack, width: 1)),
                              color: kWhite,
                            ),
                            // lebar dari container isi
                            width: MediaQuery.of(context).size.width * 0.73,
                            //tinggi dari container isi
                            height: MediaQuery.of(context).size.height * 0.65,
                            //container yang sudah ada jarak dari container isi
                            child: Container(
                                margin: EdgeInsets.all(14),
                                color: kWhite,
                                child: ListView(
                                  children: [
                                    Text(
                                      "$fileIsi",
                                      textAlign: TextAlign.start,
                                      style: TextStyle(fontSize: 13),
                                    ),
                                  ],
                                )),
                          ),
                        ],
                      ),
                    ),
                    // jarak samping kanan
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.13,
                    ),
                  ],
                ),
              ],
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
