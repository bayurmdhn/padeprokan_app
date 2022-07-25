import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import '../../../Utils/constants.dart';

class bodyDocsFiles extends StatefulWidget {
  const bodyDocsFiles({Key? key}) : super(key: key);

  @override
  State<bodyDocsFiles> createState() => _bodyDocsFiles();
}

class _bodyDocsFiles extends State<bodyDocsFiles> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: kBackGround,
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        child: Stack(alignment: Alignment.topCenter, children: <Widget>[
          Positioned(
              top: 50,
              right: 19,
              left: 19,
              child: Form(
                  child: TextFormField(
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
              ))),
          Positioned(
              top: 122,
              child: Center(
                child: Column(
                  children: [
                    Image.asset(
                      "assets/images/emptyDocs.png",
                      height: 157,
                      width: 220,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 40),
                      child: Text(
                        kDontHaveFile,
                        style: dontHave,
                      ),
                    )
                  ],
                ),
              )),
          // Positioned(
          //   bottom: 59,
          //   right: 34,
          //   child: Icon(
          //     Icons.add_circle,
          //     color: kColorAdd,
          //     size: 55,
          //   ),
          // ),
        ]),
      ),
      floatingActionButton: SpeedDial(
          icon: Icons.add_circle,
          buttonSize: const Size(55, 55),
          backgroundColor: kColorAdd,
          overlayColor: kBackGround,
          overlayOpacity: 0.2,
          children: [
            SpeedDialChild(
                child: Image.asset(
                  "assets/images/addFile.png",
                  color: kWhite,
                  height: 26,
                  width: 26,
                ),
                backgroundColor: kColorAdd,
                label: "New File TXT"),
            SpeedDialChild(
                child: Image.asset(
                  "assets/images/addFolder.png",
                  color: kWhite,
                  height: 26,
                  width: 26,
                ),
                backgroundColor: kColorAdd,
                label: "Add Folder"),
            // SpeedDialChild(
            //     child: Image.asset(
            //       "",
            //       color: kWhite,
            //       height: 26,
            //       width: 26,
            //     ),
            //     backgroundColor: kColorAdd,
            //     label: "Upload File")
          ]),
    );
  }
}
