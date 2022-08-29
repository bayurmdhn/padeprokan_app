import 'dart:html';
import 'package:first_app_flutter/Components/appBar.dart';
import 'package:first_app_flutter/Components/appBarBack.dart';
import 'package:flutter/material.dart';
import 'package:first_app_flutter/Screens/Register/Components/body.dart';
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
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Roboto'),
      home: Scaffold(
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
                height: 50,
              ),
              //GridView/Tempat File Dsn Folder
              Expanded(
                  child: Container(
                width: mediaQueryWidht * 0.9,
                height: mediaQueryHeight * 1,
                child: Column(
                  children: [
                    Flexible(
                      child: GridView.builder(
                        itemBuilder: (context, index) => folderDynamic[index],
                        itemCount: folderDynamic.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: mediaQueryWidht * 0.07,
                            mainAxisSpacing: 20,
                            childAspectRatio: 1 / 1),
                      ),
                    ),
                  ],
                ),
              )),
              //Gambar Tidak Ada File dan Folder
              indexx == 0
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
            ]),
          ),
          //Icon Add (tambah)
          floatingActionButton: SpeedDial(
              icon: Icons.add,
              backgroundColor: kColorAdd,
              overlayColor: kBackGround,
              overlayOpacity: 0.2,
              spacing: 5,
              spaceBetweenChildren: 5,
              children: [
                //Fitur Text File
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
                            return Material(
                              color: Color.fromARGB(0, 0, 0, 0),
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 14, right: 14, top: 100, bottom: 425),
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(8)),
                                    color: kWhite,
                                  ),
                                  //text form field nama file dan isinya
                                  child: Column(children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 8, right: 8, top: 5),
                                      child: Form(
                                        key: nameKey,
                                        child: TextFormField(
                                          maxLines: 1,
                                          cursorColor: kblack,
                                          cursorWidth: 1,
                                          maxLength: 16,
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
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 8, right: 8),
                                      child: TextFormField(
                                        onChanged: (String text) {
                                          setState(() {});
                                          fileIsi = text;
                                        },
                                        onFieldSubmitted: (String text) {
                                          setState(() {});
                                          fileIsi = text;
                                        },
                                        controller: _isi,
                                        keyboardType: TextInputType.multiline,
                                        maxLines: 12,
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
                                    //Tombol/Button
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(right: 22),
                                          //tombol cancel
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
                                        //tombol Save and Publish
                                        GestureDetector(
                                          onTap: () {
                                            addDynamic();
                                            indexx++;
                                            Navigator.pop(context);
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
                                                        const EdgeInsets.all(6),
                                                    child: Icon(
                                                      Icons.save,
                                                      size: 16,
                                                      color: kWhite,
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            right: 4),
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
                          });
                    }),
                //Fitur Add Folder
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
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                right: 12),
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
                          });
                    }),
                //Fitur Uplode File
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
                                          padding: EdgeInsets.only(
                                              left: 17, top: 21),
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
                                            padding: const EdgeInsets.only(
                                                left: 3.5),
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
                                            padding: const EdgeInsets.only(
                                                left: 3.5),
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
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                right: 12),
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
                                                        BorderRadius.circular(
                                                            8)),
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
              ])),
    );
  }
}
