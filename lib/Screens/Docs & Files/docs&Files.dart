import 'package:first_app_flutter/Components/appBar.dart';
import 'package:first_app_flutter/Components/appBarBack.dart';
import 'package:flutter/material.dart';
import 'package:first_app_flutter/Screens/Register/Components/body.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import '../../Utils/constants.dart';
import '../HomePage/homePage.dart';
import '../Spaces/spaceScreen.dart';
import 'components/bodyDocsFiles.dart';
import 'components/googleDrive.dart';
import 'components/textCard.dart';
import 'components/uplodeFile.dart';

String folderName = "";
String fileName = "";

class docsFiles extends StatefulWidget {
  const docsFiles({Key? key}) : super(key: key);

  @override
  State<docsFiles> createState() => _docsFiles();
}

class _docsFiles extends State<docsFiles> {
  List<DynamicWidget> listDynamic = [];
  int index = 0;
  addDynamic() {
    listDynamic.add(DynamicWidget());
    setState(() {});
  }

  void noSpace() {
    setState(() {
      if (index == 0) {
        print("no space");
      } else {
        print("there are space");
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final mediaQueryHeight = MediaQuery.of(context).size.height;
    final mediaQueryWidht = MediaQuery.of(context).size.width;
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: kWhite,
          title: appBarBack(
            judul: 'Docs & file',
          ),
        ),
        body: Scaffold(
            body: Container(
              color: kBackGround,
              width: mediaQueryWidht * 1,
              height: mediaQueryHeight * 1,
              child: Column(children: <Widget>[
                SizedBox(
                  height: 51,
                ),
                Container(
                  width: mediaQueryWidht * 0.9,
                  height: 34,
                  child: Form(
                      child: TextFormField(
                    textAlignVertical: TextAlignVertical.bottom,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(9)),
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 255, 255, 255))),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              width: 2,
                              color: Color.fromRGBO(140, 79, 225, 1))),
                      hintText: "Search files or folder",
                      suffixIcon: IconButton(
                        icon: Icon(
                          Icons.search,
                          color: Color.fromRGBO(199, 196, 196, 1),
                        ),
                        onPressed: () {},
                      ),
                      hintStyle: text2,
                      filled: true,
                      fillColor: Colors.white,
                    ),
                  )),
                ),
                SizedBox(
                  height: 50,
                ),
                Expanded(
                    child: Container(
                  width: mediaQueryWidht * 0.9,
                  height: mediaQueryHeight * 1,
                  child: Column(
                    children: [
                      Flexible(
                        child: GridView.builder(
                          itemBuilder: (_, index) => listDynamic[index],
                          itemCount: listDynamic.length,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  crossAxisSpacing: mediaQueryWidht * 0.07,
                                  mainAxisSpacing: 20,
                                  childAspectRatio: 1 / 1),
                        ),
                      ),
                    ],
                  ),
                )),
                index == 0
                    ? Container(
                        width: mediaQueryWidht * 1,
                        height: mediaQueryHeight * 0.75,
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/images/emptyDocs.png',
                              width: 220,
                              height: 157,
                            ),
                            SizedBox(
                              height: 40,
                            ),
                            Text(
                              "You don't have any file!",
                              style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 73, 73, 73)),
                            ),
                          ],
                        ),
                      )
                    : SizedBox(
                        height: 20,
                      )
                // Positioned(
                //     top: 122,
                //     child: Center(
                //       child: Column(
                //         children: [
                //           Image.asset(
                //             "assets/images/emptyDocs.png",
                //             height: 157,
                //             width: 220,
                //           ),
                //           Padding(
                //             padding: const EdgeInsets.only(top: 40),
                //             child: Text(
                //               kDontHaveFile,
                //               style: dontHave,
                //             ),
                //           ),
                //         ],
                //       ),
                //     )),
              ]),
            ),
            floatingActionButton: SpeedDial(
                icon: Icons.add,
                backgroundColor: kColorAdd,
                overlayColor: kBackGround,
                overlayOpacity: 0.2,
                spacing: 5,
                spaceBetweenChildren: 5,
                children: [
                  SpeedDialChild(
                      child: Image.asset(
                        "assets/images/addFile.png",
                        color: kWhite,
                        height: 26,
                        width: 26,
                      ),
                      backgroundColor: kColorAdd,
                      label: "New File TXT",
                      labelBackgroundColor: kblack,
                      labelStyle: add,
                      onTap: () {
                        showDialog(
                            context: context,
                            builder: (context) {
                              TextEditingController _fileName =
                                  TextEditingController();
                              TextEditingController _isi =
                                  TextEditingController();
                              return Material(
                                color: Color.fromARGB(0, 0, 0, 0),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 14,
                                      right: 14,
                                      top: 100,
                                      bottom: 430),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(8)),
                                      color: kWhite,
                                    ),
                                    child: Column(children: [
                                      // Material(
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 8, right: 8, top: 5),
                                        child: TextFormField(
                                          maxLines: 1,
                                          cursorColor: kblack,
                                          controller: _fileName,
                                          cursorWidth: 1,
                                          style: TextStyle(
                                              color: kblack, fontSize: 20),
                                          onChanged: (String text) {
                                            setState(() {});
                                            fileName = text;
                                          },
                                          onFieldSubmitted: (String text) {
                                            setState(() {});
                                            fileName = text;
                                          },
                                          decoration: InputDecoration(
                                              hintText: 'File Name',
                                              hintStyle: TextStyle(
                                                  fontFamily: 'Roboto',
                                                  fontSize: 20,
                                                  color: kblack)),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 8, right: 8),
                                        child: TextFormField(
                                          controller: _isi,
                                          keyboardType: TextInputType.multiline,
                                          maxLines: 13,
                                          cursorColor: kblack,
                                          cursorWidth: 1,
                                          style: TextStyle(
                                              color: kblack, fontSize: 12),
                                          decoration: InputDecoration(
                                              hintText:
                                                  'Write your document here',
                                              hintStyle: TextStyle(
                                                  fontSize: 12,
                                                  fontFamily: 'Roboto'),
                                              border: InputBorder.none),
                                        ),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                right: 22),
                                            child: GestureDetector(
                                              onTap: () => Navigator.of(context,
                                                      rootNavigator: true)
                                                  .pop(context),
                                              child: Container(
                                                width: 71,
                                                height: 28,
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Text(
                                                      "Cancel",
                                                      style: TextStyle(
                                                          color: Color.fromARGB(
                                                              255,
                                                              131,
                                                              131,
                                                              131),
                                                          fontSize: 13),
                                                    ),
                                                  ],
                                                ),
                                                decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    border: Border.all(
                                                        color: Color.fromARGB(
                                                            255,
                                                            143,
                                                            143,
                                                            143)),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8)),
                                              ),
                                            ),
                                          ),
                                          GestureDetector(
                                            onTap: () {
                                              addDynamic();
                                              index++;
                                            },
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  right: 21),
                                              child: Container(
                                                width: 117,
                                                height: 28,
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              6),
                                                      child: Icon(
                                                        Icons.save,
                                                        size: 16,
                                                        color: kWhite,
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: const EdgeInsets
                                                          .only(),
                                                      child: Text(
                                                        "Save & publish",
                                                        style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 13),
                                                      ),
                                                    )
                                                  ],
                                                ),
                                                decoration: BoxDecoration(
                                                    color: Color.fromRGBO(
                                                        44, 187, 32, 1),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8)),
                                              ),
                                            ),
                                          ),
                                        ],
                                      )
                                    ]),
                                  ),
                                ),
                              );
                            });
                      }),
                  SpeedDialChild(
                      child: Image.asset(
                        "assets/images/addFolder.png",
                        color: kWhite,
                        height: 26,
                        width: 26,
                      ),
                      backgroundColor: kColorAdd,
                      label: "Add Folder",
                      labelBackgroundColor: kblack,
                      labelStyle: add,
                      onTap: () {
                        showDialog(
                            context: context,
                            builder: (context) {
                              TextEditingController _folderName =
                                  TextEditingController();
                              return Material(
                                color: Color.fromARGB(0, 0, 0, 0),
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      left: 14,
                                      right: 14,
                                      top: 183,
                                      bottom: 430),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: kWhite,
                                        borderRadius: BorderRadius.circular(8)),
                                    child: Column(
                                      children: <Widget>[
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.only(
                                                  left: 17, top: 21),
                                              child: Text(
                                                "Add Folder",
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    fontFamily: 'Roboto',
                                                    color: kblack),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 21, right: 21),
                                              child: IconButton(
                                                onPressed: () => Navigator.of(
                                                        context,
                                                        rootNavigator: true)
                                                    .pop(context),
                                                icon: Icon(Icons.close),
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
                                          padding: const EdgeInsets.only(
                                              left: 19, top: 24),
                                          child: Row(
                                            children: [
                                              Text(
                                                "Folder Name",
                                                style: TextStyle(
                                                    color: kgrey,
                                                    fontFamily: 'Roboto',
                                                    fontSize: 12),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 19, top: 15, right: 20),
                                          child: SizedBox(
                                            height: 29,
                                            width: 346,
                                            child: TextFormField(
                                              controller: _folderName,
                                              cursorColor: kblack,
                                              cursorWidth: 1,
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontFamily: 'Roboto'),
                                              textAlignVertical:
                                                  TextAlignVertical.bottom,
                                              decoration: InputDecoration(
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius.all(
                                                                Radius.circular(
                                                                    5)),
                                                        borderSide: BorderSide(
                                                            color:
                                                                Color.fromRGBO(
                                                                    140,
                                                                    79,
                                                                    225,
                                                                    1))),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                            width: 2,
                                                            color:
                                                                Color.fromRGBO(
                                                                    140,
                                                                    79,
                                                                    225,
                                                                    1))),
                                                hintText: "New folder name",
                                                hintStyle: TextStyle(
                                                    fontFamily: 'Roboto',
                                                    fontSize: 12,
                                                    color: Color.fromRGBO(
                                                        194, 194, 194, 1)),
                                                prefixIcon: Icon(
                                                  Icons.folder,
                                                  size: 16,
                                                  color: kblack,
                                                ),
                                              ),
                                              onChanged: (String text) {
                                                setState(() {});
                                                folderName = text;
                                              },
                                              onFieldSubmitted: (String text) {
                                                setState(() {});
                                                folderName = text;
                                              },
                                            ),
                                          ),
                                        ),
                                        Divider(
                                          height: 27,
                                          thickness: 1,
                                          color: kdivider,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  right: 12),
                                              child: GestureDetector(
                                                onTap: () => Navigator.of(
                                                        context,
                                                        rootNavigator: true)
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
                                                            color:
                                                                Color.fromARGB(
                                                                    255,
                                                                    131,
                                                                    131,
                                                                    131),
                                                            fontSize: 13),
                                                      ),
                                                    ],
                                                  ),
                                                  decoration: BoxDecoration(
                                                      color: Colors.white,
                                                      border: Border.all(
                                                          color: Color.fromARGB(
                                                              255,
                                                              143,
                                                              143,
                                                              143)),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8)),
                                                ),
                                              ),
                                            ),
                                            GestureDetector(
                                              onTap: () {},
                                              child: Padding(
                                                padding: const EdgeInsets.only(
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
                                                            color: Colors.white,
                                                            fontSize: 13),
                                                      )
                                                    ],
                                                  ),
                                                  decoration: BoxDecoration(
                                                      color: Color.fromARGB(
                                                          255, 177, 17, 255),
                                                      borderRadius:
                                                          BorderRadius.circular(
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
                              ;
                            });
                      }),
                  SpeedDialChild(
                      child: Image.asset(
                        "assets/images/clouddd.png",
                        color: kWhite,
                        height: 26,
                        width: 26,
                      ),
                      backgroundColor: kColorAdd,
                      label: "Upload File",
                      labelBackgroundColor: kblack,
                      labelStyle: add,
                      onTap: () {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return const UplodeFile();
                            });
                      }),
                  SpeedDialChild(
                      child: Image.asset(
                        "assets/images/drive.png",
                        color: kWhite,
                        height: 26,
                        width: 29.69,
                      ),
                      backgroundColor: kColorAdd,
                      label: "Google Drive",
                      labelBackgroundColor: kblack,
                      labelStyle: add,
                      onTap: () {
                        showDialog(
                            context: context,
                            builder: (context) {
                              TextEditingController _untitled =
                                  TextEditingController();
                              return googleDrive(untitled: _untitled);
                            });
                      }),
                ])));
  }
}

class DynamicWidget extends StatelessWidget {
  const DynamicWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: textCard(
          textColor: Colors.black,
          backgroundColor: Color.fromRGBO(230, 230, 230, 1),
          text: "$fileName",
          spaceColor: Color.fromRGBO(230, 230, 230, 1)),
    );
  }
}
