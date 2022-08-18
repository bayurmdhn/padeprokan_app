import 'dart:html';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:first_app_flutter/Components/appBarBack.dart';
import 'package:first_app_flutter/Utils/constants.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:intl/intl.dart';

import 'components/Message.dart';

class grupChat extends StatefulWidget {
  const grupChat({Key? key}) : super(key: key);

  @override
  State<grupChat> createState() => _grupChatState();
}

class _grupChatState extends State<grupChat> {
  String chat = "";
  addDynamic() {
    messages.add(Message(
      text: chat,
      date: DateTime.now(),
      isSentByMe: true,
    ));
    setState(() {});
  }

  List<Message> messages = [
    Message(
      text: 'P',
      date: DateTime.now().subtract(Duration(days: 1, minutes: 1)),
      isSentByMe: false,
    ),
    Message(
      text: 'Kenapa?',
      date: DateTime.now().subtract(Duration(days: 1, minutes: 2)),
      isSentByMe: false,
    ),
    Message(
      text: 'Aku mo nanya sesuatu boleh gak?',
      date: DateTime.now().subtract(Duration(days: 1, minutes: 3)),
      isSentByMe: true,
    ),
    Message(
      text: 'boleh kok tanya aja',
      date: DateTime.now().subtract(Duration(days: 1, minutes: 4)),
      isSentByMe: false,
    ),
    Message(
      text: 'jadi gini, kamu punya bolpen berapa? ',
      date: DateTime.now().subtract(Duration(days: 1, minutes: 5)),
      isSentByMe: true,
    ),
    Message(
      text: 'aku punya tiga',
      date: DateTime.now().subtract(Duration(days: 1, minutes: 6)),
      isSentByMe: false,
    ),
    Message(
      text: 'wih, banyak ya. aku besok pinjem satu ya',
      date: DateTime.now().subtract(Duration(days: 1, minutes: 7)),
      isSentByMe: true,
    ),
    Message(
      text: 'okke, besok tak pinjemin satu kok...',
      date: DateTime.now().subtract(Duration(days: 1, minutes: 8)),
      isSentByMe: false,
    ),
    Message(
      text: 'Hehe, makasi ya...',
      date: DateTime.now().subtract(Duration(days: 1, minutes: 9)),
      isSentByMe: true,
    ),
    Message(
      text:
          'Iyaaa. sama samaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa',
      date: DateTime.now().subtract(Duration(days: 1, minutes: 10)),
      isSentByMe: false,
    ),
    // Message(
    //   text: 'Yes Sure!',
    //   date: DateTime.now().subtract(Duration(days: 1, minutes: 1)),
    //   isSentByMe: false,
    // ),
    // Message(
    //   text: 'Yes Sure!',
    //   date: DateTime.now().subtract(Duration(days: 1, minutes: 1)),
    //   isSentByMe: false,
    // ),
    // Message(
    //   text: 'Yes Sure!',
    //   date: DateTime.now().subtract(Duration(days: 1, minutes: 1)),
    //   isSentByMe: false,
    // ),
    // Message(
    //   text: 'Yes Sure!',
    //   date: DateTime.now().subtract(Duration(days: 1, minutes: 1)),
    //   isSentByMe: false,
    // ),
    // Message(
    //   text: 'Yes Sure!',
    //   date: DateTime.now().subtract(Duration(days: 1, minutes: 2)),
    //   isSentByMe: false,
    // ),
    // Message(
    //   text: 'fsfese!',
    //   date: DateTime.now().subtract(Duration(days: 2, minutes: 2)),
    //   isSentByMe: true,
    // ),
    // Message(
    //   text: 'fsfes!',
    //   date: DateTime.now().subtract(Duration(days: 2, minutes: 3)),
    //   isSentByMe: false,
    // ),
    // Message(
    //   text: 'dfsefs!',
    //   date: DateTime.now().subtract(Duration(days: 2, minutes: 4)),
    //   isSentByMe: true,
    // ),
  ].toList();
  @override
  Widget build(BuildContext context) {
    final lebar = MediaQuery.of(context).size.width;
    final tinggi = MediaQuery.of(context).size.height;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Roboto'),
      home: Scaffold(
        appBar: AppBar(
            title: appBarBack(
              judul: 'Chat',
            ),
            backgroundColor: Color.fromARGB(255, 255, 255, 255),
            centerTitle: true),
        body: Container(
          decoration: BoxDecoration(
              color: Color.fromRGBO(239, 239, 239, 1),
              border: Border.all(color: kblack, width: 1)),
          width: lebar * 1,
          height: tinggi * 1,
          child: Column(
            children: [
              Expanded(
                  child: GroupedListView<Message, DateTime>(
                reverse: true,
                order: GroupedListOrder.DESC,
                useStickyGroupSeparators: false,
                floatingHeader: true,
                elements: messages,
                groupBy: (message) => DateTime(
                  message.date.year,
                  message.date.month,
                  message.date.day,
                ),
                groupHeaderBuilder: (Message message) => Container(
                  width: lebar * 1,
                  //Tanggal Pesan dikirim
                  child: Column(
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 15, right: 15, top: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Container(
                                  width: lebar * 0.2,
                                  child: Divider(
                                    thickness: 1,
                                    color: kblack,
                                  ),
                                ),
                              ],
                            ),
                            //Tanggal
                            Container(
                              width: lebar * 0.45,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    DateFormat.EEEE().format(message.date),
                                    style: TextStyle(
                                      fontFamily: 'Roboto',
                                      color: kblack,
                                      fontSize: lebar * 0.035,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                  SizedBox(
                                    width: lebar * 0.01,
                                  ),
                                  Text(
                                    DateFormat.d().format(message.date),
                                    style: TextStyle(
                                      fontFamily: 'Roboto',
                                      color: kblack,
                                      fontSize: lebar * 0.035,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                  SizedBox(
                                    width: lebar * 0.01,
                                  ),
                                  Text(
                                    DateFormat.yMMM().format(message.date),
                                    style: TextStyle(
                                      fontFamily: 'Roboto',
                                      color: kblack,
                                      fontSize: lebar * 0.035,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ),
                            //Garis
                            Column(
                              children: [
                                Container(
                                  width: lebar * 0.2,
                                  child: Divider(
                                    thickness: 1,
                                    color: kblack,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                itemBuilder: (context, Message message) =>
                    //Pesan dan Desain nya
                    Padding(
                  padding: const EdgeInsets.only(top: 10, right: 20, left: 20),
                  child:
                      //Jika pesan dikirim orang lain dan jika kita mengirim pesan(posisi pesan)
                      Align(
                          alignment: message.isSentByMe
                              ? Alignment.centerRight
                              : Alignment.centerLeft,
                          //Container Pesan (Desain Pesan)
                          child: message.isSentByMe
                              ? Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(10),
                                          bottomRight: Radius.circular(10),
                                          bottomLeft: Radius.circular(10)),
                                      color: Color.fromRGBO(215, 204, 252, 1),
                                      border:
                                          Border.all(color: kblack, width: 1)),
                                  child: Stack(
                                    children: [
                                      Positioned.fill(
                                        child: Align(
                                          alignment: Alignment.topLeft,
                                          child: Padding(
                                            padding:
                                                const EdgeInsets.only(left: 1),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                  color: Color.fromRGBO(
                                                      215, 204, 252, 1),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10)),
                                              width: 24,
                                              height: 15,
                                              child: Center(
                                                child: PopupMenuButton(
                                                    shape: Border.all(
                                                        color: Color.fromRGBO(
                                                            216, 216, 216, 1),
                                                        width: 1),
                                                    padding: EdgeInsets.zero,
                                                    iconSize: 15,
                                                    icon: Icon(
                                                      Icons.more_horiz,
                                                      color: Color.fromRGBO(
                                                          127, 126, 126, 1),
                                                    ),
                                                    itemBuilder: (context) =>
                                                        []),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Column(
                                        children: [
                                          Padding(
                                              padding: EdgeInsets.fromLTRB(
                                                  11, 11, 10, 10),
                                              child: Container(
                                                child: Text(
                                                  message.text,
                                                  style: TextStyle(
                                                      fontSize: 13,
                                                      fontFamily: 'Roboto',
                                                      fontWeight:
                                                          FontWeight.w400),
                                                ),
                                              )),
                                        ],
                                      )
                                    ],
                                  ),
                                )
                              : Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(10),
                                          bottomRight: Radius.circular(10),
                                          bottomLeft: Radius.circular(10)),
                                      color: kWhite,
                                      border:
                                          Border.all(color: kblack, width: 1)),
                                  child: Stack(
                                    children: [
                                      Positioned.fill(
                                        child: Align(
                                          alignment: Alignment.topLeft,
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                top: 14, left: 8),
                                            child: Container(
                                              width: 29,
                                              height: 29,
                                              child: Center(
                                                child: CircleAvatar(
                                                  radius: 13,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Stack(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 44, top: 14, right: 19),
                                            child: Container(
                                                width: 150,
                                                child: Row(
                                                  children: [
                                                    Text(
                                                      "My Name",
                                                      maxLines: 1,
                                                      style: TextStyle(
                                                        fontSize: 11,
                                                        fontFamily: 'Roboto',
                                                        color: kblack,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      width: lebar * 0.02,
                                                    ),
                                                    Center(
                                                      child: Icon(
                                                        Icons.circle,
                                                        size: 5,
                                                        color: Color.fromRGBO(
                                                            125, 125, 125, 1),
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      width: lebar * 0.01,
                                                    ),
                                                    Text(
                                                      DateFormat.Hm().format(
                                                          DateTime.now()),
                                                      maxLines: 1,
                                                      style: TextStyle(
                                                        fontFamily: 'Roboto',
                                                        color: Color.fromRGBO(
                                                            125, 125, 125, 1),
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontSize: 11,
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      width: lebar * 0.01,
                                                    ),
                                                    // TextButton(
                                                    //     onPressed: () {},
                                                    //     child: Text(
                                                    //       'Reply',
                                                    //       style: TextStyle(
                                                    //           fontFamily:
                                                    //               'Roboto',
                                                    //           color: kblack,
                                                    //           fontSize: 9,
                                                    //           fontWeight:
                                                    //               FontWeight
                                                    //                   .w400),
                                                    //       maxLines: 1,
                                                    //     ))
                                                  ],
                                                )),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.fromLTRB(
                                                43, 36, 10, 10),
                                            child: Text(
                                              message.text,
                                              style: TextStyle(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 13,
                                                fontFamily: 'Roboto',
                                              ),
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                )),
                ),
              )),
              Row(
                children: [
                  SizedBox(
                    width: lebar * 0.01,
                  ),
                  Container(
                    width: lebar * 0.8,
                    color: kWhite,
                    child: TextFormField(
                      decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 2,
                                  color: Color.fromRGBO(140, 79, 225, 1))),
                          suffixIcon: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.camera_alt_outlined,
                              size: 23,
                              color: kblack,
                            ),
                          ),
                          border: OutlineInputBorder(),
                          contentPadding: EdgeInsets.all(12),
                          hintText: "Type your massage here"),
                      onChanged: (text) {
                        setState(() {});
                        chat = text;
                        final message = Message(
                          text: text,
                          date: DateTime.now(),
                          isSentByMe: true,
                        );
                      },
                      onFieldSubmitted: (text) {
                        setState(() {});

                        final message = Message(
                          text: text,
                          date: DateTime.now(),
                          isSentByMe: true,
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    width: lebar * 0.04,
                  ),
                  GestureDetector(
                    onTap: () {
                      addDynamic();
                    },
                    child: Container(
                      height: tinggi * 0.1,
                      width: lebar * 0.1,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color.fromRGBO(117, 17, 255, 1)),
                      child: Center(
                        child: Icon(
                          Icons.send_rounded,
                          size: lebar * 0.05,
                          color: kWhite,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: lebar * 0.04,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
