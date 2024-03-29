import 'dart:html';
import 'package:first_app_flutter/Components/appBar.dart';
import 'package:first_app_flutter/Components/appBarBack.dart';
import 'package:flutter/material.dart';
import 'package:first_app_flutter/Screens/Register/Components/body.dart';
import 'package:flutter/services.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import '../../Utils/constants.dart';
import '../HomePage/homePage.dart';
import '../Spaces/spaceScreen.dart';
import 'components/folderDynamic.dart';
import 'components/textCard.dart';
import 'components/textDynamic.dart';

String folderName = "";
String fileName = "";
String fileIsi = "";
TextEditingController _folderName = TextEditingController();
TextEditingController _fileName = TextEditingController();
TextEditingController _isi = TextEditingController();
TextEditingController _untitled = TextEditingController();
TextEditingController _fileGoogleDrive = TextEditingController();
GlobalKey<FormState> nameKey = GlobalKey<FormState>();

class docsFiles extends StatefulWidget {
  const docsFiles({Key? key}) : super(key: key);

  @override
  State<docsFiles> createState() => _docsFiles();
}

class _docsFiles extends State<docsFiles> {
  List<textDynamic> listDynamic = [];
  List<addFolerDynamic> folderDynamic = [];
  int indexx = 0;
  addDynamic() {
    listDynamic.add(textDynamic());
    setState(() {});
  }

  newDynamic() {
    folderDynamic.add(addFolerDynamic());
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final mediaQueryHeight = MediaQuery.of(context).size.height;
    final mediaQueryWidht = MediaQuery.of(context).size.width;
    Size size = MediaQuery.of(context).size;
    return Scaffold(

        //AppBar
        appBar: AppBar(
            title: appBarBack(
              judul: 'Docs & Files',
            ),
            backgroundColor: Color.fromARGB(255, 255, 255, 255),
            centerTitle: true),
        body:
            //Bagian Utama (Body)
            Container(
          color: kBackGround,
          width: mediaQueryWidht * 1,
          height: mediaQueryHeight * 1,
          child: Column(children: <Widget>[
            SizedBox(
              height: 51,
            ),
            //Search Files (blom ada fitur nya)
            Container(
              width: mediaQueryWidht * 0.9,
              height: mediaQueryHeight * 0.05,
              child: Form(
                  child: TextFormField(
                textAlignVertical: TextAlignVertical.center,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(9)),
                      borderSide: BorderSide(
                          color: Color.fromARGB(255, 255, 255, 255))),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 2, color: Color.fromRGBO(140, 79, 225, 1))),
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
              height: mediaQueryHeight * 0.05,
            ),

            //Gambar Tidak Ada File dan Folder
            indexx == 0
                ? Column(
                    children: [
                      Container(
                        width: mediaQueryWidht * 0.5,
                        height: mediaQueryWidht * 0.35,
                        child: FittedBox(
                          child: Image.asset(
                            'assets/images/emptyDocs.png',
                          ),
                        ),
                      ),
                      SizedBox(
                        height: mediaQueryHeight * 0.03,
                      ),
                      Container(
                        width: mediaQueryWidht * 0.6,
                        height: mediaQueryWidht * 0.07,
                        child: FittedBox(
                          child: Text(
                            "You don't have any file!",
                            style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 73, 73, 73)),
                          ),
                        ),
                      ),
                    ],
                  )
                : Expanded(
                    child: Container(
                    width: mediaQueryWidht * 0.9,
                    height: mediaQueryHeight * 1,
                    child: Column(
                      children: [
                        Flexible(
                          child: GridView.builder(
                            itemBuilder: (context, index) => listDynamic[index],
                            itemCount: listDynamic.length,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 2,
                                    crossAxisSpacing: mediaQueryWidht * 0.07,
                                    mainAxisSpacing: mediaQueryHeight * 0.025,
                                    childAspectRatio: 1 / 1),
                          ),
                        ),
                      ],
                    ),
                  )),
          ]),
        ),
        //Icon Add (tambah)
        floatingActionButton: SpeedDial(
            childrenButtonSize:
                Size(mediaQueryHeight * 0.0575, mediaQueryHeight * 0.0575),
            icon: Icons.add,
            buttonSize:
                Size(mediaQueryHeight * 0.055, mediaQueryHeight * 0.055),
            backgroundColor: kColorAdd,
            overlayColor: kBackGround,
            overlayOpacity: 0.2,
            spacing: mediaQueryHeight * 0.01,
            spaceBetweenChildren: mediaQueryHeight * 0.01,
            children: [
              //Fitur Text File
              SpeedDialChild(
                  child: Image.asset(
                    "assets/images/addFile.png",
                    color: kWhite,
                    height: mediaQueryHeight * 0.03,
                    width: mediaQueryHeight * 0.03,
                  ),
                  backgroundColor: kColorAdd,
                  label: "New File TXT",
                  labelBackgroundColor: kblack,
                  labelStyle: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: mediaQueryHeight * 0.01,
                      color: Colors.white,
                      fontWeight: FontWeight.normal),
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return Material(
                            color: Color.fromARGB(0, 0, 0, 0),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: mediaQueryHeight * 0.1,
                                ),
                                Container(
                                  width: mediaQueryWidht * 0.9,
                                  height: mediaQueryHeight * 0.37,
                                  decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(8)),
                                    color: kWhite,
                                  ),
                                  //text form field nama file dan isinya
                                  child: Column(children: [
                                    SizedBox(
                                      height: mediaQueryHeight * 0.01,
                                    ),
                                    Form(
                                        key: nameKey,
                                        child: SizedBox(
                                          width: mediaQueryWidht * 0.85,
                                          height: mediaQueryHeight * 0.035,
                                          child: TextFormField(
                                            textAlignVertical:
                                                TextAlignVertical.center,
                                            cursorColor:
                                                Color.fromRGBO(117, 17, 255, 1),
                                            maxLines: 1,
                                            cursorHeight:
                                                mediaQueryHeight * 0.025,
                                            cursorWidth: 1,
                                            decoration: InputDecoration(
                                              border: InputBorder.none,
                                              hintText: "File Name",
                                              hintStyle: TextStyle(
                                                  fontSize:
                                                      mediaQueryHeight * 0.023,
                                                  fontWeight: FontWeight.w400,
                                                  fontFamily: 'Roboto',
                                                  color: Color.fromRGBO(
                                                      53, 53, 53, 1)),
                                            ),
                                            onChanged: (String text) {
                                              setState(() {});
                                              fileName = text;
                                            },
                                            onFieldSubmitted: (String text) {
                                              setState(() {});
                                              fileName = text;
                                            },
                                          ),
                                        )),
                                    SizedBox(
                                      height: mediaQueryHeight * 0.01,
                                    ),
                                    SizedBox(
                                      width: mediaQueryWidht * 0.85,
                                      child: Divider(
                                        height: 0,
                                        color: Color.fromRGBO(159, 159, 159, 1),
                                        thickness: 1,
                                      ),
                                    ),
                                    SizedBox(
                                      height: mediaQueryHeight * 0.01,
                                    ),
                                    Container(
                                      width: mediaQueryWidht * 0.85,
                                      height: mediaQueryHeight * 0.24,
                                      child: TextFormField(
                                        cursorColor:
                                            Color.fromRGBO(117, 17, 255, 1),
                                        onChanged: (String text) {
                                          setState(() {});
                                          fileIsi = text;
                                        },
                                        onFieldSubmitted: (String text) {
                                          setState(() {});
                                          fileIsi = text;
                                        },
                                        maxLines: 10,
                                        decoration: InputDecoration(
                                            border: InputBorder.none,
                                            hintText:
                                                "Write your document here",
                                            hintStyle: TextStyle(
                                                fontSize:
                                                    mediaQueryHeight * 0.015,
                                                fontWeight: FontWeight.w400,
                                                fontFamily: 'Roboto',
                                                color: Color.fromRGBO(
                                                    91, 91, 91, 1))),
                                      ),
                                    ),
                                    SizedBox(
                                      height: mediaQueryHeight * 0.015,
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        GestureDetector(
                                          onTap: () => Navigator.of(context,
                                                  rootNavigator: true)
                                              .pop(context),
                                          child: Container(
                                            width: mediaQueryWidht * 0.145, //71
                                            height:
                                                mediaQueryHeight * 0.03, //28
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Container(
                                                  width:
                                                      mediaQueryWidht * 0.115,
                                                  height:
                                                      mediaQueryHeight * 0.018,
                                                  child: FittedBox(
                                                    child: Text(
                                                      "Cancel",
                                                      style: TextStyle(
                                                          color: Color.fromARGB(
                                                              255,
                                                              131,
                                                              131,
                                                              131),
                                                          fontSize: 13),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                border: Border.all(
                                                    color: Color.fromARGB(
                                                        255, 143, 143, 143)),
                                                borderRadius:
                                                    BorderRadius.circular(8)),
                                          ),
                                        ),
                                        SizedBox(
                                          width: mediaQueryWidht * 0.025,
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            addDynamic();
                                            indexx++;
                                            Navigator.pop(context);
                                          },
                                          child: Container(
                                            width:
                                                mediaQueryWidht * 0.325, // 117
                                            height:
                                                mediaQueryHeight * 0.03, //28
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Container(
                                                  width:
                                                      mediaQueryWidht * 0.045,
                                                  height:
                                                      mediaQueryHeight * 0.02,
                                                  child: FittedBox(
                                                    child: Icon(
                                                      Icons.save,
                                                      size: 16,
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(
                                                  width:
                                                      mediaQueryWidht * 0.015,
                                                ),
                                                Container(
                                                  width: mediaQueryWidht * 0.21,
                                                  height:
                                                      mediaQueryHeight * 0.02,
                                                  child: FittedBox(
                                                    child: Text(
                                                      "Save & publish",
                                                      style: TextStyle(
                                                          fontFamily: 'Roboto',
                                                          color: Colors.white,
                                                          fontSize: 13),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            decoration: BoxDecoration(
                                                color: Color.fromRGBO(
                                                    44, 187, 32, 1),
                                                borderRadius:
                                                    BorderRadius.circular(8)),
                                          ),
                                        ),
                                        SizedBox(
                                          width: mediaQueryWidht * 0.05,
                                        )
                                      ],
                                    ),

                                    // Row(
                                    //   children: [

                                    //     SizedBox(
                                    //       width: mediaQueryWidht * 0.025,
                                    //     ),
                                    //     GestureDetector(
                                    //       onTap: () {
                                    //         addDynamic();
                                    //         indexx++;
                                    //         Navigator.pop(context);
                                    //       },
                                    //       // child: Container(
                                    //       //   width:
                                    //       //       117, // mediaQueryWidht * 0.325
                                    //       //   height:
                                    //       //       28, //mediaQueryHeight * 0.035
                                    //       //   child: Row(
                                    //       //     mainAxisAlignment:
                                    //       //         MainAxisAlignment.center,
                                    //       //     children: [
                                    //       //       Icon(
                                    //       //         Icons.save,
                                    //       //         size: 16,
                                    //       //         color: Colors.white,
                                    //       //       ),
                                    //       //       SizedBox(
                                    //       //         width: 5,
                                    //       //       ),
                                    //       //       Text(
                                    //       //         "Save & publish",
                                    //       //         style: TextStyle(
                                    //       //             fontFamily: 'Roboto',
                                    //       //             color: Colors.white,
                                    //       //             fontSize: 13),
                                    //       //       ),
                                    //       //     ],
                                    //       //   ),
                                    //       //   decoration: BoxDecoration(
                                    //       //       color: Color.fromRGBO(
                                    //       //           44, 187, 32, 1),
                                    //       //       borderRadius:
                                    //       //           BorderRadius.circular(8)),
                                    //       // ),
                                    //     ),
                                    //     SizedBox(
                                    //       width: mediaQueryWidht * 0.05,
                                    //     )
                                    //   ],
                                    // )
                                    SizedBox(
                                      height: mediaQueryHeight * 0.01,
                                    ),
                                  ]),
                                ),
                              ],
                            ),
                          );
                        });
                  }),
              //Fitur Add Folder
              SpeedDialChild(
                  child: Image.asset(
                    "assets/images/addFolder.png",
                    color: kWhite,
                    height: mediaQueryHeight * 0.03,
                    width: mediaQueryHeight * 0.03,
                  ),
                  backgroundColor: kColorAdd,
                  label: "Add Folder",
                  labelBackgroundColor: kblack,
                  labelStyle: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: mediaQueryHeight * 0.01,
                      color: Colors.white,
                      fontWeight: FontWeight.normal),
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return Material(
                            color: Color.fromARGB(0, 0, 0, 0),
                            child: Padding(
                              padding: EdgeInsets.only(
                                  left: 14, right: 14, top: 183, bottom: 430),
                              child: Container(
                                decoration: BoxDecoration(
                                    color: kWhite,
                                    borderRadius: BorderRadius.circular(8)),
                                child: Column(
                                  children: <Widget>[
                                    // text add folder
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
                                        //icon close
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
                                    //text Folder name
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
                                    // Text Form Field new Folder
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 19, top: 15, right: 20),
                                      child: SizedBox(
                                        height: 29,
                                        width: 346,
                                        child: TextFormField(
                                          cursorColor: kblack,
                                          cursorWidth: 1,
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontFamily: 'Roboto'),
                                          textAlignVertical:
                                              TextAlignVertical.bottom,
                                          decoration: InputDecoration(
                                            enabledBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(5)),
                                                borderSide: BorderSide(
                                                    color: Color.fromRGBO(
                                                        140, 79, 225, 1))),
                                            focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    width: 2,
                                                    color: Color.fromRGBO(
                                                        140, 79, 225, 1))),
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
                                    //Tombol/Button
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(right: 12),
                                          //tombol Cancel
                                          child: GestureDetector(
                                            onTap: () => Navigator.of(context,
                                                    rootNavigator: true)
                                                .pop(context),
                                            child: Container(
                                              width: 71,
                                              height: 27,
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    "Cancel",
                                                    style: TextStyle(
                                                        color: Color.fromARGB(
                                                            255, 131, 131, 131),
                                                        fontSize: 13),
                                                  ),
                                                ],
                                              ),
                                              decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  border: Border.all(
                                                      color: Color.fromARGB(
                                                          255, 143, 143, 143)),
                                                  borderRadius:
                                                      BorderRadius.circular(8)),
                                            ),
                                          ),
                                        ),
                                        // tombol Submit
                                        GestureDetector(
                                          onTap: () {
                                            newDynamic();
                                            Navigator.pop(context);
                                            indexx++;
                                          },
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                right: 21),
                                            child: Container(
                                              width: 71,
                                              height: 27,
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
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
                                                      BorderRadius.circular(8)),
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
                  }),
              //Fitur Uplode File
              SpeedDialChild(
                  child: Image.asset(
                    "assets/images/clouddd.png",
                    color: kWhite,
                    height: mediaQueryHeight * 0.03,
                    width: mediaQueryHeight * 0.03,
                  ),
                  backgroundColor: kColorAdd,
                  label: "Upload File",
                  labelBackgroundColor: kblack,
                  labelStyle: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: mediaQueryHeight * 0.01,
                      color: Colors.white,
                      fontWeight: FontWeight.normal),
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return Material(
                            color: Color.fromARGB(0, 0, 0, 0),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 183, left: 16, right: 16, bottom: 365),
                              child: Container(
                                decoration: BoxDecoration(
                                    color: kWhite,
                                    borderRadius: BorderRadius.circular(8)),
                                child: Column(children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding:
                                            EdgeInsets.only(left: 17, top: 21),
                                        child: Text(
                                          "Uplode Files",
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
                                          onPressed: () => Navigator.of(context,
                                                  rootNavigator: true)
                                              .pop(context),
                                          icon: Icon(Icons.close),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Divider(
                                    height: 16,
                                    color: kdivider,
                                    thickness: 1,
                                  ),
                                  SizedBox(
                                    height: 6,
                                  ),
                                  //ketika di klik
                                  GestureDetector(
                                    onTap: () {},
                                    child: Container(
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Color.fromRGBO(
                                                  140, 79, 225, 1),
                                              width: 1,
                                            ),
                                            color: kfile,
                                            borderRadius:
                                                BorderRadius.circular(8)),
                                        //tempat upLode
                                        child: Column(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 28),
                                              child: Image.asset(
                                                "assets/images/Group.png",
                                                width: 36,
                                                height: 36,
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 15),
                                              child: Text(
                                                "Click or drag file to this area to upload",
                                                style: TextStyle(
                                                    fontFamily: 'Roboto',
                                                    fontSize: 12,
                                                    color: Color.fromRGBO(
                                                        91, 91, 91, 1)),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 9,
                                                  left: 18,
                                                  right: 18,
                                                  bottom: 23),
                                              child: Text(
                                                "Support for a singel or bulk upload. Strictly prohibit\nfrom uploading company data or other band files",
                                                style: TextStyle(
                                                    fontFamily: 'Roboto',
                                                    fontSize: 12,
                                                    color: Color.fromRGBO(
                                                        134, 134, 134, 1)),
                                                textAlign: TextAlign.center,
                                              ),
                                            )
                                          ],
                                        )),
                                  ),
                                  Divider(
                                    height: 23,
                                    color: kdivider,
                                    thickness: 1,
                                  ),
                                  //Tombol/Button
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 12),
                                        child: GestureDetector(
                                          onTap: () => Navigator.of(context,
                                                  rootNavigator: true)
                                              .pop(context),
                                          child: Container(
                                            width: 71,
                                            height: 27,
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  "Cancel",
                                                  style: TextStyle(
                                                      color: Color.fromARGB(
                                                          255, 131, 131, 131),
                                                      fontSize: 13),
                                                ),
                                              ],
                                            ),
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                border: Border.all(
                                                    color: Color.fromARGB(
                                                        255, 143, 143, 143)),
                                                borderRadius:
                                                    BorderRadius.circular(8)),
                                          ),
                                        ),
                                      ),
                                      //tombol Uplode
                                      GestureDetector(
                                        onTap: () {},
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(right: 21),
                                          child: Container(
                                            width: 71,
                                            height: 27,
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  "Uplode",
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
                                                    BorderRadius.circular(8)),
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                                ]),
                              ),
                            ),
                          );
                          ;
                        });
                  }),
              // Fitur Google Drive
              SpeedDialChild(
                  child: Image.asset(
                    "assets/images/drive.png",
                    color: kWhite,
                    height: mediaQueryHeight * 0.03,
                    width: mediaQueryHeight * 0.03,
                  ),
                  backgroundColor: kColorAdd,
                  label: "Google Drive",
                  labelBackgroundColor: kblack,
                  labelStyle: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: mediaQueryHeight * 0.01,
                      color: Colors.white,
                      fontWeight: FontWeight.normal),
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return Material(
                            color: Color.fromARGB(0, 0, 0, 0),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 183, left: 16, right: 16, bottom: 375),
                              child: Container(
                                  decoration: BoxDecoration(
                                      color: kWhite,
                                      borderRadius: BorderRadius.circular(8)),
                                  child: Column(children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(
                                              left: 17, top: 21),
                                          child: Text(
                                            "Embed Link From google drive",
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontFamily: 'Roboto',
                                                color: kblack),
                                          ),
                                        ),
                                        //icon close
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
                                      height: 16,
                                      color: kdivider,
                                      thickness: 1,
                                    ),
                                    SizedBox(
                                      height: 6,
                                    ),
                                    //Text file name
                                    Row(
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 17),
                                          child: Text(
                                            "File name",
                                            style: embedLink,
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 3.5),
                                          child: Text(
                                            "*",
                                            style: embedLink2,
                                          ),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    //text Form Field
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 18, right: 22),
                                      child: Form(
                                        child: SizedBox(
                                          height: 29,
                                          child: TextFormField(
                                            textAlignVertical:
                                                TextAlignVertical.bottom,
                                            cursorColor: kblack,
                                            cursorWidth: 1,
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontFamily: 'Roboto'),
                                            controller: _untitled,
                                            decoration: InputDecoration(
                                              enabledBorder: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(5)),
                                                  borderSide: BorderSide(
                                                      color: Color.fromRGBO(
                                                          140, 79, 225, 1))),
                                              focusedBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      width: 2,
                                                      color: Color.fromRGBO(
                                                          140, 79, 225, 1))),
                                              hintText: "Untitled",
                                              hintStyle: searchFiles,
                                              filled: true,
                                              fillColor: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 12,
                                    ),
                                    Row(
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 17),
                                          child: Text(
                                            "Embed link",
                                            style: embedLink,
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 3.5),
                                          child: Text(
                                            "*",
                                            style: embedLink2,
                                          ),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 18, right: 22),
                                      child: Form(
                                        child: SizedBox(
                                          height: 29,
                                          //text form field
                                          child: TextFormField(
                                            textAlignVertical:
                                                TextAlignVertical.bottom,
                                            cursorColor: kblack,
                                            cursorWidth: 1,
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontFamily: 'Roboto'),
                                            decoration: InputDecoration(
                                              enabledBorder: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(5)),
                                                  borderSide: BorderSide(
                                                      color: Color.fromRGBO(
                                                          140, 79, 225, 1))),
                                              focusedBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      width: 2,
                                                      color: Color.fromRGBO(
                                                          140, 79, 225, 1))),
                                              hintText:
                                                  "e.g.https://drive.google.com/open?id=1cMc-qT_W......",
                                              hintStyle: searchFiles,
                                              filled: true,
                                              fillColor: Colors.white,
                                            ),
                                            controller: _fileGoogleDrive,
                                          ),
                                        ),
                                      ),
                                    ),
                                    //garis
                                    Divider(
                                      height: 25,
                                      color: kdivider,
                                      thickness: 1,
                                    ),
                                    //Tombol/Button
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(right: 12),
                                          // tombol Cancel
                                          child: GestureDetector(
                                            onTap: () => Navigator.of(context,
                                                    rootNavigator: true)
                                                .pop(context),
                                            child: Container(
                                              width: 71,
                                              height: 27,
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    "Cancel",
                                                    style: TextStyle(
                                                        color: Color.fromARGB(
                                                            255, 131, 131, 131),
                                                        fontSize: 13),
                                                  ),
                                                ],
                                              ),
                                              decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  border: Border.all(
                                                      color: Color.fromARGB(
                                                          255, 143, 143, 143)),
                                                  borderRadius:
                                                      BorderRadius.circular(8)),
                                            ),
                                          ),
                                        ),
                                        //tombol Submit
                                        GestureDetector(
                                          onTap: () {
                                            print(_untitled.text);
                                            print(_fileGoogleDrive.text);
                                            Navigator.pop(context);
                                          },
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                right: 21),
                                            child: Container(
                                              width: 71,
                                              height: 27,
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
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
                                                      BorderRadius.circular(8)),
                                            ),
                                          ),
                                        ),
                                      ],
                                    )
                                  ])),
                            ),
                          );
                        });
                  }),
            ]));
  }
}
