import 'package:flutter/material.dart';

import '../../../Utils/constants.dart';

class UplodeFile extends StatelessWidget {
  const UplodeFile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Color.fromARGB(0, 0, 0, 0),
      child: Padding(
        padding:
            const EdgeInsets.only(top: 183, left: 16, right: 16, bottom: 365),
        child: Container(
          decoration: BoxDecoration(
              color: kWhite, borderRadius: BorderRadius.circular(8)),
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 17, top: 21),
                  child: Text(
                    "Uplode Files",
                    style: TextStyle(
                        fontSize: 16, fontFamily: 'Roboto', color: kblack),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 21, right: 21),
                  child: IconButton(
                    onPressed: () =>
                        Navigator.of(context, rootNavigator: true).pop(context),
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
            GestureDetector(
              onTap: () {},
              child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Color.fromRGBO(140, 79, 225, 1),
                        width: 1,
                      ),
                      color: kfile,
                      borderRadius: BorderRadius.circular(8)),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 28),
                        child: Image.asset(
                          "assets/images/Group.png",
                          width: 36,
                          height: 36,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Text(
                          "Click or drag file to this area to upload",
                          style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 12,
                              color: Color.fromRGBO(91, 91, 91, 1)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 9, left: 18, right: 18, bottom: 23),
                        child: Text(
                          "Support for a singel or bulk upload. Strictly prohibit\nfrom uploading company data or other band files",
                          style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 12,
                              color: Color.fromRGBO(134, 134, 134, 1)),
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
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 12),
                  child: GestureDetector(
                    onTap: () =>
                        Navigator.of(context, rootNavigator: true).pop(context),
                    child: Container(
                      width: 71,
                      height: 27,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Cancel",
                            style: TextStyle(
                                color: Color.fromARGB(255, 131, 131, 131),
                                fontSize: 13),
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                              color: Color.fromARGB(255, 143, 143, 143)),
                          borderRadius: BorderRadius.circular(8)),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Padding(
                    padding: const EdgeInsets.only(right: 21),
                    child: Container(
                      width: 71,
                      height: 27,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Uplode",
                            style: TextStyle(color: Colors.white, fontSize: 13),
                          )
                        ],
                      ),
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 177, 17, 255),
                          borderRadius: BorderRadius.circular(8)),
                    ),
                  ),
                ),
              ],
            )
          ]),
        ),
      ),
    );
  }
}
