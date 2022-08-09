// import 'package:first_app_flutter/Screens/Docs%20&%20Files/components/googleDrive.dart';
// import 'package:first_app_flutter/Screens/Docs%20&%20Files/components/speedDial.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_speed_dial/flutter_speed_dial.dart';
// import '../../../Utils/constants.dart';
// import 'uplodeFile.dart';

// class bodyDocsFiles extends StatefulWidget {
//   const bodyDocsFiles({Key? key}) : super(key: key);

//   @override
//   State<bodyDocsFiles> createState() => _bodyDocsFiles();
// }

// class _bodyDocsFiles extends State<bodyDocsFiles> {
//   @override
//   Widget build(BuildContext context) {
//     final mediaQueryHeight = MediaQuery.of(context).size.height;
//     final mediaQueryWidht = MediaQuery.of(context).size.width;
//     return Scaffold(
//         body: Container(
//           color: kBackGround,
//           width: mediaQueryWidht * 1,
//           height: mediaQueryHeight * 1,
//           child: Stack(alignment: Alignment.topCenter, children: <Widget>[
//             Positioned(
//                 top: 50,
//                 right: 19,
//                 left: 19,
//                 child: Form(
//                     child: TextFormField(
//                   decoration: InputDecoration(
//                     enabledBorder: OutlineInputBorder(
//                         borderRadius: BorderRadius.all(Radius.circular(9)),
//                         borderSide: BorderSide(
//                             color: Color.fromARGB(255, 255, 255, 255))),
//                     focusedBorder: OutlineInputBorder(
//                         borderSide: BorderSide(
//                             width: 2, color: Color.fromRGBO(140, 79, 225, 1))),
//                     hintText: "Search files or folder",
//                     suffixIcon: IconButton(
//                       icon: Icon(
//                         Icons.search,
//                         color: Color.fromRGBO(199, 196, 196, 1),
//                       ),
//                       onPressed: () {},
//                     ),
//                     hintStyle: text2,
//                     filled: true,
//                     fillColor: Colors.white,
//                   ),
//                 ))),
//             Positioned(
//                 top: 122,
//                 child: Center(
//                   child: Column(
//                     children: [
//                       Image.asset(
//                         "assets/images/emptyDocs.png",
//                         height: 157,
//                         width: 220,
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.only(top: 40),
//                         child: Text(
//                           kDontHaveFile,
//                           style: dontHave,
//                         ),
//                       ),
//                     ],
//                   ),
//                 )),
//             // Positioned(
//             //   bottom: 59,
//             //   right: 34,
//             //   child: Icon(
//             //     Icons.add_circle,
//             //     color: kColorAdd,
//             //     size: 55,
//             //   ),
//             // ),
//           ]),
//         ),
//         floatingActionButton: SpeedDial(
//             icon: Icons.add,
//             backgroundColor: kColorAdd,
//             overlayColor: kBackGround,
//             overlayOpacity: 0.2,
//             spacing: 5,
//             spaceBetweenChildren: 5,
//             children: [
//               SpeedDialChild(
//                   child: Image.asset(
//                     "assets/images/addFile.png",
//                     color: kWhite,
//                     height: 26,
//                     width: 26,
//                   ),
//                   backgroundColor: kColorAdd,
//                   label: "New File TXT",
//                   labelBackgroundColor: kblack,
//                   labelStyle: add,
//                   onTap: () {
//                     showDialog(
//                         context: context,
//                         builder: (context) {
//                           TextEditingController _fileName =
//                               TextEditingController();
//                           TextEditingController _isi = TextEditingController();
//                           return Material(
//                             color: Color.fromARGB(0, 0, 0, 0),
//                             child: Padding(
//                               padding: const EdgeInsets.only(
//                                   left: 14, right: 14, top: 100, bottom: 430),
//                               child: Container(
//                                 decoration: BoxDecoration(
//                                   borderRadius:
//                                       BorderRadius.all(Radius.circular(8)),
//                                   color: kWhite,
//                                 ),
//                                 child: Column(children: [
//                                   // Material(
//                                   Padding(
//                                     padding: const EdgeInsets.only(
//                                         left: 8, right: 8, top: 5),
//                                     child: TextField(
//                                       maxLines: 1,
//                                       cursorColor: kblack,
//                                       controller: _fileName,
//                                       cursorWidth: 1,
//                                       style: TextStyle(
//                                           color: kblack, fontSize: 20),
//                                       decoration: InputDecoration(
//                                           hintText: 'File Name',
//                                           hintStyle: TextStyle(
//                                               fontFamily: 'Roboto',
//                                               fontSize: 20,
//                                               color: kblack)),
//                                     ),
//                                   ),
//                                   Padding(
//                                     padding: const EdgeInsets.only(
//                                         left: 8, right: 8),
//                                     child: TextField(
//                                       controller: _isi,
//                                       keyboardType: TextInputType.multiline,
//                                       maxLines: 13,
//                                       cursorColor: kblack,
//                                       cursorWidth: 1,
//                                       style: TextStyle(
//                                           color: kblack, fontSize: 12),
//                                       decoration: InputDecoration(
//                                           hintText: 'Write your document here',
//                                           hintStyle: TextStyle(
//                                               fontSize: 12,
//                                               fontFamily: 'Roboto'),
//                                           border: InputBorder.none),
//                                     ),
//                                   ),
//                                   Row(
//                                     mainAxisAlignment: MainAxisAlignment.end,
//                                     children: [
//                                       Padding(
//                                         padding:
//                                             const EdgeInsets.only(right: 22),
//                                         child: GestureDetector(
//                                           onTap: () => Navigator.of(context,
//                                                   rootNavigator: true)
//                                               .pop(context),
//                                           child: Container(
//                                             width: 71,
//                                             height: 28,
//                                             child: Column(
//                                               mainAxisAlignment:
//                                                   MainAxisAlignment.center,
//                                               children: [
//                                                 Text(
//                                                   "Cancel",
//                                                   style: TextStyle(
//                                                       color: Color.fromARGB(
//                                                           255, 131, 131, 131),
//                                                       fontSize: 13),
//                                                 ),
//                                               ],
//                                             ),
//                                             decoration: BoxDecoration(
//                                                 color: Colors.white,
//                                                 border: Border.all(
//                                                     color: Color.fromARGB(
//                                                         255, 143, 143, 143)),
//                                                 borderRadius:
//                                                     BorderRadius.circular(8)),
//                                           ),
//                                         ),
//                                       ),
//                                       GestureDetector(
//                                         onTap: () {
//                                           print(_fileName.text);
//                                           print(_isi.text);
//                                         },
//                                         child: Padding(
//                                           padding:
//                                               const EdgeInsets.only(right: 21),
//                                           child: Container(
//                                             width: 117,
//                                             height: 28,
//                                             child: Row(
//                                               mainAxisAlignment:
//                                                   MainAxisAlignment.center,
//                                               children: [
//                                                 Padding(
//                                                   padding:
//                                                       const EdgeInsets.all(6),
//                                                   child: Icon(
//                                                     Icons.save,
//                                                     size: 16,
//                                                     color: kWhite,
//                                                   ),
//                                                 ),
//                                                 Padding(
//                                                   padding:
//                                                       const EdgeInsets.only(
//                                                           right: 4),
//                                                   child: Text(
//                                                     "Save & publish",
//                                                     style: TextStyle(
//                                                         color: Colors.white,
//                                                         fontSize: 13),
//                                                   ),
//                                                 )
//                                               ],
//                                             ),
//                                             decoration: BoxDecoration(
//                                                 color: Color.fromRGBO(
//                                                     44, 187, 32, 1),
//                                                 borderRadius:
//                                                     BorderRadius.circular(8)),
//                                           ),
//                                         ),
//                                       ),
//                                     ],
//                                   )
//                                 ]),
//                               ),
//                             ),
//                           );
//                         });
//                   }),
//               SpeedDialChild(
//                   child: Image.asset(
//                     "assets/images/addFolder.png",
//                     color: kWhite,
//                     height: 26,
//                     width: 26,
//                   ),
//                   backgroundColor: kColorAdd,
//                   label: "Add Folder",
//                   labelBackgroundColor: kblack,
//                   labelStyle: add,
//                   onTap: () {
//                     showDialog(
//                         context: context,
//                         builder: (context) {
//                           TextEditingController _folderName =
//                               TextEditingController();
//                           return Material(
//                             color: Color.fromARGB(0, 0, 0, 0),
//                             child: Padding(
//                               padding: EdgeInsets.only(
//                                   left: 14, right: 14, top: 183, bottom: 430),
//                               child: Container(
//                                 decoration: BoxDecoration(
//                                     color: kWhite,
//                                     borderRadius: BorderRadius.circular(8)),
//                                 child: Column(
//                                   children: <Widget>[
//                                     Row(
//                                       mainAxisAlignment:
//                                           MainAxisAlignment.spaceBetween,
//                                       children: [
//                                         Padding(
//                                           padding: EdgeInsets.only(
//                                               left: 17, top: 21),
//                                           child: Text(
//                                             "Add Folder",
//                                             style: TextStyle(
//                                                 fontSize: 16,
//                                                 fontFamily: 'Roboto',
//                                                 color: kblack),
//                                           ),
//                                         ),
//                                         Padding(
//                                           padding: const EdgeInsets.only(
//                                               top: 21, right: 21),
//                                           child: IconButton(
//                                             onPressed: () => Navigator.of(
//                                                     context,
//                                                     rootNavigator: true)
//                                                 .pop(context),
//                                             icon: Icon(Icons.close),
//                                           ),
//                                         ),
//                                       ],
//                                     ),
//                                     Divider(
//                                       thickness: 1,
//                                       height: 20,
//                                       color: kdivider,
//                                     ),
//                                     Padding(
//                                       padding: const EdgeInsets.only(
//                                           left: 19, top: 24),
//                                       child: Row(
//                                         children: [
//                                           Text(
//                                             "Folder Name",
//                                             style: TextStyle(
//                                                 color: kgrey,
//                                                 fontFamily: 'Roboto',
//                                                 fontSize: 12),
//                                           ),
//                                         ],
//                                       ),
//                                     ),
//                                     Padding(
//                                       padding: const EdgeInsets.only(
//                                           left: 19, top: 15, right: 20),
//                                       child: SizedBox(
//                                         height: 29,
//                                         width: 346,
//                                         child: TextField(
//                                           controller: _folderName,
//                                           cursorColor: kblack,
//                                           cursorWidth: 1,
//                                           style: TextStyle(
//                                               fontSize: 12,
//                                               fontFamily: 'Roboto'),
//                                           textAlignVertical:
//                                               TextAlignVertical.bottom,
//                                           decoration: InputDecoration(
//                                             enabledBorder: OutlineInputBorder(
//                                                 borderRadius: BorderRadius.all(
//                                                     Radius.circular(5)),
//                                                 borderSide: BorderSide(
//                                                     color: Color.fromRGBO(
//                                                         140, 79, 225, 1))),
//                                             focusedBorder: OutlineInputBorder(
//                                                 borderSide: BorderSide(
//                                                     width: 2,
//                                                     color: Color.fromRGBO(
//                                                         140, 79, 225, 1))),
//                                             hintText: "New folder name",
//                                             hintStyle: TextStyle(
//                                                 fontFamily: 'Roboto',
//                                                 fontSize: 12,
//                                                 color: Color.fromRGBO(
//                                                     194, 194, 194, 1)),
//                                             prefixIcon: Icon(
//                                               Icons.folder,
//                                               size: 16,
//                                               color: kblack,
//                                             ),
//                                           ),
//                                         ),
//                                       ),
//                                     ),
//                                     Divider(
//                                       height: 27,
//                                       thickness: 1,
//                                       color: kdivider,
//                                     ),
//                                     Row(
//                                       mainAxisAlignment: MainAxisAlignment.end,
//                                       children: [
//                                         Padding(
//                                           padding:
//                                               const EdgeInsets.only(right: 12),
//                                           child: GestureDetector(
//                                             onTap: () => Navigator.of(context,
//                                                     rootNavigator: true)
//                                                 .pop(context),
//                                             child: Container(
//                                               width: 71,
//                                               height: 27,
//                                               child: Column(
//                                                 mainAxisAlignment:
//                                                     MainAxisAlignment.center,
//                                                 children: [
//                                                   Text(
//                                                     "Cancel",
//                                                     style: TextStyle(
//                                                         color: Color.fromARGB(
//                                                             255, 131, 131, 131),
//                                                         fontSize: 13),
//                                                   ),
//                                                 ],
//                                               ),
//                                               decoration: BoxDecoration(
//                                                   color: Colors.white,
//                                                   border: Border.all(
//                                                       color: Color.fromARGB(
//                                                           255, 143, 143, 143)),
//                                                   borderRadius:
//                                                       BorderRadius.circular(8)),
//                                             ),
//                                           ),
//                                         ),
//                                         GestureDetector(
//                                           onTap: () {
//                                             print(_folderName.text);
//                                           },
//                                           child: Padding(
//                                             padding: const EdgeInsets.only(
//                                                 right: 21),
//                                             child: Container(
//                                               width: 71,
//                                               height: 27,
//                                               child: Column(
//                                                 mainAxisAlignment:
//                                                     MainAxisAlignment.center,
//                                                 children: [
//                                                   Text(
//                                                     "Submit",
//                                                     style: TextStyle(
//                                                         color: Colors.white,
//                                                         fontSize: 13),
//                                                   )
//                                                 ],
//                                               ),
//                                               decoration: BoxDecoration(
//                                                   color: Color.fromARGB(
//                                                       255, 177, 17, 255),
//                                                   borderRadius:
//                                                       BorderRadius.circular(8)),
//                                             ),
//                                           ),
//                                         ),
//                                       ],
//                                     )
//                                   ],
//                                 ),
//                               ),
//                             ),
//                           );
//                           ;
//                         });
//                   }),
//               SpeedDialChild(
//                   child: Image.asset(
//                     "assets/images/clouddd.png",
//                     color: kWhite,
//                     height: 26,
//                     width: 26,
//                   ),
//                   backgroundColor: kColorAdd,
//                   label: "Upload File",
//                   labelBackgroundColor: kblack,
//                   labelStyle: add,
//                   onTap: () {
//                     showDialog(
//                         context: context,
//                         builder: (context) {
//                           return const UplodeFile();
//                         });
//                   }),
//               SpeedDialChild(
//                   child: Image.asset(
//                     "assets/images/drive.png",
//                     color: kWhite,
//                     height: 26,
//                     width: 29.69,
//                   ),
//                   backgroundColor: kColorAdd,
//                   label: "Google Drive",
//                   labelBackgroundColor: kblack,
//                   labelStyle: add,
//                   onTap: () {
//                     showDialog(
//                         context: context,
//                         builder: (context) {
//                           TextEditingController _untitled =
//                               TextEditingController();
//                           return googleDrive(untitled: _untitled);
//                         });
//                   }),
//             ]));
//   }
// }
