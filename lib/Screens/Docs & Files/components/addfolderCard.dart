import 'package:first_app_flutter/Utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import '../docs&Files.dart';

class addFolderCard extends StatelessWidget {
  final Color textColor;

  final Color backgroundColor;
  final String text;

  addFolderCard({
    Key? key,
    required this.textColor,
    required this.backgroundColor,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final lebar = MediaQuery.of(context).size.width;
    final tinggi = MediaQuery.of(context).size.height;
    return Container(
      width: lebar * 1,
      height: tinggi * 1,
      child: Stack(
        children: [
          Positioned.fill(
              child: Align(
            alignment: Alignment.center,
            child: Image.asset(
              "assets/images/Add docs.png",
              width: lebar * 1,
              height: tinggi * 1,
            ),
          )),
          Positioned.fill(
              child: Align(
            alignment: Alignment.center,
            child: Text(
              "$folderName",
              style: TextStyle(
                  fontSize: 14,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w600),
            ),
          )),
          Positioned.fill(
              child: Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 4, right: 4),

                    //container icon titik tiga
                    child: Container(
                      decoration: BoxDecoration(
                          color: kWhite,
                          borderRadius: BorderRadius.circular(3)),
                      width: 30,
                      height: 20,
                      child: Center(
                        child: PopupMenuButton(
                          shape: Border.all(
                              color: Color.fromRGBO(216, 216, 216, 1),
                              width: 1),
                          iconSize: 13,
                          padding: EdgeInsets.zero,
                          icon: Icon(Icons.more_horiz),
                          itemBuilder: (context) => [
                            //pop up menu Edit
                            PopupMenuItem(
                                onTap: () {
                                  showDialog(
                                      context: context,
                                      builder: (BuildContext) {
                                        return Material(
                                          color: Color.fromARGB(0, 0, 0, 0),
                                          child: Padding(
                                            padding: EdgeInsets.only(
                                                left: 14,
                                                right: 14,
                                                top: 183,
                                                bottom: 430),
                                            //container utama untuk rename file
                                            child: Container(
                                              decoration: BoxDecoration(
                                                  color: kWhite,
                                                  borderRadius:
                                                      BorderRadius.circular(8)),
                                              child: Column(
                                                children: <Widget>[
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 17,
                                                                top: 21),
                                                        child: Text(
                                                          "Rename Folder",
                                                          style: TextStyle(
                                                              fontSize: 16,
                                                              fontFamily:
                                                                  'Roboto',
                                                              color: kblack),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .only(
                                                                top: 21,
                                                                right: 21),
                                                        //tombol silang
                                                        child: IconButton(
                                                          onPressed: () =>
                                                              Navigator.of(
                                                                      context,
                                                                      rootNavigator:
                                                                          true)
                                                                  .pop(context),
                                                          icon:
                                                              Icon(Icons.close),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Divider(
                                                    thickness: 1,
                                                    height: 20,
                                                    color: kdivider,
                                                  ),

                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 19, top: 24),
                                                    child: Row(
                                                      children: [
                                                        Text(
                                                          "File Folder ",
                                                          style: TextStyle(
                                                              color: kgrey,
                                                              fontFamily:
                                                                  'Roboto',
                                                              fontSize: 12,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400),
                                                        ),
                                                        Text("*",
                                                            style: TextStyle(
                                                              color: Color
                                                                  .fromRGBO(255,
                                                                      0, 0, 1),
                                                              fontFamily:
                                                                  'Roboto',
                                                            ))
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 19,
                                                            top: 15,
                                                            right: 20),
                                                    child: SizedBox(
                                                      height: 29,
                                                      width: 346,
                                                      //tempat Form atau untuk mengisi
                                                      child: TextFormField(
                                                        cursorColor: kblack,
                                                        cursorWidth: 1,
                                                        style: TextStyle(
                                                            fontSize: 12,
                                                            fontFamily:
                                                                'Roboto'),
                                                        textAlignVertical:
                                                            TextAlignVertical
                                                                .bottom,
                                                        decoration:
                                                            InputDecoration(
                                                          enabledBorder: OutlineInputBorder(
                                                              borderRadius: BorderRadius
                                                                  .all(Radius
                                                                      .circular(
                                                                          5)),
                                                              borderSide: BorderSide(
                                                                  color: Color
                                                                      .fromRGBO(
                                                                          140,
                                                                          79,
                                                                          225,
                                                                          1))),
                                                          focusedBorder: OutlineInputBorder(
                                                              borderSide: BorderSide(
                                                                  width: 2,
                                                                  color: Color
                                                                      .fromRGBO(
                                                                          140,
                                                                          79,
                                                                          225,
                                                                          1))),
                                                          hintText:
                                                              "$folderName",
                                                          hintStyle: TextStyle(
                                                              fontFamily:
                                                                  'Roboto',
                                                              fontSize: 12,
                                                              color: Color
                                                                  .fromRGBO(
                                                                      194,
                                                                      194,
                                                                      194,
                                                                      1)),
                                                          prefixIcon: Icon(
                                                            Icons.folder,
                                                            size: 16,
                                                            color: kblack,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Divider(
                                                    height: 27,
                                                    thickness: 1,
                                                    color: kdivider,
                                                  ),
                                                  //Tombol/Button
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.end,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .only(
                                                                right: 12),
                                                        child: GestureDetector(
                                                          onTap: () => Navigator.of(
                                                                  context,
                                                                  rootNavigator:
                                                                      true)
                                                              .pop(context),
                                                          child: Container(
                                                            width: 71,
                                                            height: 27,
                                                            child: Column(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Text(
                                                                  "Cancel",
                                                                  style: TextStyle(
                                                                      color: Color.fromARGB(
                                                                          255,
                                                                          131,
                                                                          131,
                                                                          131),
                                                                      fontSize:
                                                                          13),
                                                                ),
                                                              ],
                                                            ),
                                                            decoration: BoxDecoration(
                                                                color: Colors
                                                                    .white,
                                                                border: Border.all(
                                                                    color: Color
                                                                        .fromARGB(
                                                                            255,
                                                                            143,
                                                                            143,
                                                                            143)),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            8)),
                                                          ),
                                                        ),
                                                      ),
                                                      GestureDetector(
                                                        onTap: () {},
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                      .only(
                                                                  right: 21),
                                                          child: Container(
                                                            width: 71,
                                                            height: 27,
                                                            child: Column(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Text(
                                                                  "Submit",
                                                                  style: TextStyle(
                                                                      color: Colors
                                                                          .white,
                                                                      fontSize:
                                                                          13),
                                                                )
                                                              ],
                                                            ),
                                                            decoration: BoxDecoration(
                                                                color: Color
                                                                    .fromARGB(
                                                                        255,
                                                                        177,
                                                                        17,
                                                                        255),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            8)),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                        );
                                      });
                                },
                                padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
                                height: 20,
                                child: Column(
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        Icon(Icons.edit_outlined,
                                            size: 20,
                                            color:
                                                Color.fromRGBO(89, 89, 89, 1)),
                                        SizedBox(
                                          width: 9,
                                        ),
                                        Text(
                                          "edit",
                                          style: TextStyle(
                                              fontSize: 15,
                                              color:
                                                  Color.fromRGBO(89, 89, 89, 1),
                                              fontWeight: FontWeight.w400),
                                        )
                                      ],
                                    ),
                                  ],
                                )),
                            //pop up menu Delete
                            PopupMenuItem(
                                onTap: () {
                                  showDialog(
                                      context: context,
                                      builder: (BuildContext) {
                                        final Height =
                                            MediaQuery.of(context).size.height;
                                        final widht =
                                            MediaQuery.of(context).size.width;
                                        return Material(
                                          color:
                                              Color.fromARGB(0, 255, 255, 255),
                                          child: Column(
                                            children: [
                                              // jarak kotak nama file dan isinya dari atas / top
                                              SizedBox(
                                                height: Height * 0.35,
                                              ),
                                              Row(
                                                children: [
                                                  // jarak ke samping
                                                  SizedBox(
                                                    width: widht * 0.05,
                                                  ),
                                                  //kotak utama yang berisi name file dan isi
                                                  Container(
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8),
                                                      color: kWhite,
                                                    ),
                                                    child: Column(
                                                      children: <Widget>[
                                                        //kotak nama file dan silang (icon close)
                                                        Container(
                                                          decoration:
                                                              BoxDecoration(
                                                            border: Border.all(
                                                                color: Color
                                                                    .fromRGBO(
                                                                        148,
                                                                        148,
                                                                        148,
                                                                        1),
                                                                width: 2),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8),
                                                            color: kWhite,
                                                          ),
                                                          child: Column(
                                                              children: [
                                                                SizedBox(
                                                                  height:
                                                                      Height *
                                                                          0.03,
                                                                ),
                                                                Row(
                                                                  children: [
                                                                    SizedBox(
                                                                      width: widht *
                                                                          0.05,
                                                                    ),
                                                                    Icon(
                                                                      Icons
                                                                          .help_outline,
                                                                      size: 24,
                                                                      color: Color
                                                                          .fromRGBO(
                                                                              255,
                                                                              165,
                                                                              2,
                                                                              1),
                                                                    ),
                                                                    SizedBox(
                                                                      width: widht *
                                                                          0.05,
                                                                    ),
                                                                    Text(
                                                                      "Delete Confirmation",
                                                                      style: TextStyle(
                                                                          color:
                                                                              kblack,
                                                                          fontSize:
                                                                              16,
                                                                          fontWeight: FontWeight
                                                                              .w400,
                                                                          fontFamily:
                                                                              'Roboto'),
                                                                    ),
                                                                  ],
                                                                ),
                                                                Row(
                                                                  children: [
                                                                    SizedBox(
                                                                      width: widht *
                                                                          0.16,
                                                                    ),
                                                                    Container(
                                                                      width: widht *
                                                                          0.48,
                                                                      height:
                                                                          Height *
                                                                              0.07,
                                                                      child:
                                                                          Text(
                                                                        "Are you sure to delete" +
                                                                            ' "$folderName"'
                                                                                "?\nYour action cannot be undo",
                                                                        style: TextStyle(
                                                                            color: Color.fromRGBO(
                                                                                174,
                                                                                174,
                                                                                174,
                                                                                1),
                                                                            fontSize:
                                                                                14,
                                                                            fontWeight:
                                                                                FontWeight.w400,
                                                                            fontFamily: 'Roboto'),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                                SizedBox(
                                                                  height:
                                                                      Height *
                                                                          0.01,
                                                                ),
                                                                Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .end,
                                                                  children: [
                                                                    GestureDetector(
                                                                      onTap: () => Navigator.of(
                                                                              context,
                                                                              rootNavigator: true)
                                                                          .pop(context),
                                                                      child:
                                                                          Container(
                                                                        width:
                                                                            71,
                                                                        height:
                                                                            28,
                                                                        child:
                                                                            Column(
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.center,
                                                                          children: [
                                                                            Text(
                                                                              "Cancel",
                                                                              style: TextStyle(fontWeight: FontWeight.w600, fontFamily: 'Roboto', color: Color.fromARGB(255, 131, 131, 131), fontSize: 13),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                        decoration: BoxDecoration(
                                                                            color:
                                                                                Colors.white,
                                                                            border: Border.all(color: Color.fromARGB(255, 143, 143, 143)),
                                                                            borderRadius: BorderRadius.circular(8)),
                                                                      ),
                                                                    ),
                                                                    SizedBox(
                                                                      width: widht *
                                                                          0.01,
                                                                    ),
                                                                    GestureDetector(
                                                                      onTap:
                                                                          () {},
                                                                      child:
                                                                          Container(
                                                                        width:
                                                                            71,
                                                                        height:
                                                                            28,
                                                                        child:
                                                                            Row(
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.center,
                                                                          children: [
                                                                            Text(
                                                                              "Ok",
                                                                              style: TextStyle(fontFamily: 'Roboto', fontWeight: FontWeight.w600, color: Colors.white, fontSize: 13),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                        decoration: BoxDecoration(
                                                                            color: Color.fromRGBO(
                                                                                253,
                                                                                64,
                                                                                64,
                                                                                1),
                                                                            borderRadius:
                                                                                BorderRadius.circular(8)),
                                                                      ),
                                                                    ),
                                                                    SizedBox(
                                                                      width: widht *
                                                                          0.06,
                                                                    )
                                                                  ],
                                                                )
                                                              ]),
                                                          // lebar dari container nama File
                                                          width: widht * 0.9,
                                                          //tinggi dari container Nama file
                                                          height: Height * 0.2,
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  // jarak samping kanan
                                                  SizedBox(
                                                    width: widht * 0.05,
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                height: Height * 0.45,
                                              )
                                            ],
                                          ),
                                        );
                                      });
                                },
                                padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
                                height: 20,
                                child: Column(
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        Icon(
                                          Icons.delete_outlined,
                                          size: 20,
                                          color: Color.fromRGBO(89, 89, 89, 1),
                                        ),
                                        SizedBox(
                                          width: 9,
                                        ),
                                        Text(
                                          "delete",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 15,
                                              color: Color.fromRGBO(
                                                  89, 89, 89, 1)),
                                        )
                                      ],
                                    )
                                  ],
                                ))
                          ],
                        ),
                      ),
                    ),
                  ))),
        ],
      ),
    );
  }
}
