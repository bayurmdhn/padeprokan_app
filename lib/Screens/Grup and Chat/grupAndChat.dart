import 'dart:html';

import 'package:first_app_flutter/Components/appBarBack.dart';
import 'package:first_app_flutter/Utils/constants.dart';
import 'package:flutter/foundation.dart';
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
      isSentByMe: true,
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
                padding: EdgeInsets.all(18),
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
                groupHeaderBuilder: (Message message) => SizedBox(
                  height: 15,
                  child: Center(
                    child: Text(
                      DateFormat.yMMMd().format(message.date),
                      style: TextStyle(color: kblack, fontSize: 11),
                    ),
                  ),
                ),
                itemBuilder: (context, Message message) => Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Align(
                      alignment: message.isSentByMe
                          ? Alignment.centerRight
                          : Alignment.centerLeft,
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: message.isSentByMe
                                ? BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    bottomRight: Radius.circular(10),
                                    bottomLeft: Radius.circular(10))
                                : BorderRadius.only(
                                    bottomRight: Radius.circular(10),
                                    bottomLeft: Radius.circular(10),
                                    topRight: Radius.circular(10)),
                            color: kWhite,
                            border: Border.all(color: kblack, width: 1)),
                        child: Padding(
                            padding: EdgeInsets.all(12),
                            child: Text(
                              message.text,
                              style: TextStyle(fontSize: 15),
                            )),
                      )),
                ),
              )),
              // Padding(
              //     padding: const EdgeInsets.only(top: 10),
              //     child: Row(
              //       mainAxisAlignment: message.isSentByMe
              //           ? MainAxisAlignment.end
              //           : MainAxisAlignment.start,
              //       children: [
              //         Container(
              //             decoration: BoxDecoration(
              //                 border: Border.all(color: kblack, width: 1),
              //                 color: kWhite,
              //                 borderRadius: message.isSentByMe
              //                     ? BorderRadius.only(
              //                         topLeft: Radius.circular(10),
              //                         bottomRight: Radius.circular(10),
              //                         bottomLeft: Radius.circular(10))
              //                     : BorderRadius.only(
              //                         bottomRight: Radius.circular(10),
              //                         bottomLeft: Radius.circular(10),
              //                         topRight: Radius.circular(10))),
              //             child: Padding(
              //               padding: const EdgeInsets.all(8.0),
              //               child: Row(
              //                 children: [
              //                   if (!message.isSentByMe) ...[
              //                     CircleAvatar(
              //                       radius: 12,
              //                     )
              //                   ],
              //                   Text(
              //                     message.text,
              //                     style: TextStyle(fontSize: 11, color: kblack),
              //                   ),
              //                 ],
              //               ),
              //             )),

              //         // Text(
              //         //   message.text,
              //         //   style: TextStyle(fontSize: 11, color: kWhite),
              //         // )

              //         // Align(
              //         //   alignment: message.isSentByMe
              //         //       ? Alignment.centerRight
              //         //       : Alignment.centerLeft,
              //         //   child: Card(
              //         //     color: Colors.pink,
              //         //     child: Padding(
              //         //         padding: EdgeInsets.all(12),
              //         //         child: Text(
              //         //           message.text,
              //         //           style: TextStyle(fontSize: 11),
              //         //         )),
              //         //   ),
              //         // ),
              //       ],
              //     ),
              //   ),

              Row(
                children: [
                  Container(
                    width: lebar * 0.8,
                    color: kWhite,
                    child: TextField(
                      decoration: InputDecoration(
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
                      onSubmitted: (text) {
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
                    width: lebar * 0.05,
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
                          size: lebar * 0.055,
                          color: kWhite,
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              // Container(
              //   height: tinggi * 0.1,
              //   width: lebar * 0.1,
              //   decoration: BoxDecoration(
              //       shape: BoxShape.circle,
              //       color: Color.fromRGBO(117, 17, 255, 1)),
              //   child: Center(
              //     child: Icon(
              //       Icons.send_rounded,
              //       size: lebar * 0.055,
              //       color: kWhite,
              //     ),
              //   ),
              // )
            ],
          ),
        ),
      ),
    );
  }
}
