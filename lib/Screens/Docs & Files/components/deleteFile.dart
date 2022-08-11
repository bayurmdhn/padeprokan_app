import 'package:first_app_flutter/Utils/constants.dart';
import 'package:flutter/material.dart';

class deleteFile extends StatefulWidget {
  const deleteFile({Key? key}) : super(key: key);

  @override
  State<deleteFile> createState() => _deleteFileState();
}

class _deleteFileState extends State<deleteFile> {
  @override
  Widget build(BuildContext context) {
    final Height = MediaQuery.of(context).size.height;
    final widht = MediaQuery.of(context).size.width;
    return Material(
      color: Color.fromARGB(0, 255, 255, 255),
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
                  borderRadius: BorderRadius.circular(8),
                  color: kWhite,
                ),
                child: Column(
                  children: <Widget>[
                    //kotak nama file dan silang (icon close)
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: Color.fromRGBO(148, 148, 148, 1), width: 2),
                        borderRadius: BorderRadius.circular(8),
                        color: kWhite,
                      ),
                      child: Column(children: [
                        Row(
                          children: [
                            Text(
                              "Delete Confirmation",
                              style: TextStyle(
                                  color: kblack,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'Roboto'),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              "Are you sure to delete 'NameFile.txt'? \nYour action cannot be undo",
                              style: TextStyle(
                                  color: Color.fromRGBO(174, 174, 174, 1),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'Roboto'),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            GestureDetector(
                              onTap: () =>
                                  Navigator.of(context, rootNavigator: true)
                                      .pop(context),
                              child: Container(
                                width: 71,
                                height: 28,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Cancel",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontFamily: 'Roboto',
                                          color: Color.fromARGB(
                                              255, 131, 131, 131),
                                          fontSize: 13),
                                    ),
                                  ],
                                ),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                        color:
                                            Color.fromARGB(255, 143, 143, 143)),
                                    borderRadius: BorderRadius.circular(8)),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: Container(
                                width: 71,
                                height: 28,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Ok",
                                      style: TextStyle(
                                          fontFamily: 'Roboto',
                                          fontWeight: FontWeight.w600,
                                          color: Colors.white,
                                          fontSize: 13),
                                    ),
                                  ],
                                ),
                                decoration: BoxDecoration(
                                    color: Color.fromRGBO(253, 64, 64, 1),
                                    borderRadius: BorderRadius.circular(8)),
                              ),
                            ),
                          ],
                        )
                      ]),
                      // lebar dari container nama File
                      width: widht * 0.9,
                      //tinggi dari container Nama file
                      height: Height * 0.15,
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
            height: Height * 0.5,
          )
        ],
      ),
    );
  }
}
