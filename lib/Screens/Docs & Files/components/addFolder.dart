import 'package:flutter/material.dart';

import '../../../Utils/constants.dart';

class addFolder extends StatelessWidget {
  const addFolder({
    Key? key,
    required TextEditingController folderName,
  })  : _folderName = folderName,
        super(key: key);

  final TextEditingController _folderName;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Color.fromARGB(0, 0, 0, 0),
      child: Padding(
        padding: EdgeInsets.only(left: 14, right: 14, top: 183, bottom: 430),
        child: Container(
          decoration: BoxDecoration(
              color: kWhite, borderRadius: BorderRadius.circular(8)),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 17, top: 21),
                    child: Text(
                      "Add Folder",
                      style: TextStyle(
                          fontSize: 16, fontFamily: 'Roboto', color: kblack),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 21, right: 21),
                    child: IconButton(
                      onPressed: () =>
                          Navigator.of(context, rootNavigator: true)
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
                padding: const EdgeInsets.only(left: 19, top: 24),
                child: Row(
                  children: [
                    Text(
                      "Folder Name",
                      style: TextStyle(
                          color: kgrey, fontFamily: 'Roboto', fontSize: 12),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 19, top: 15, right: 20),
                child: SizedBox(
                  height: 29,
                  width: 346,
                  child: TextField(
                    controller: _folderName,
                    cursorColor: kblack,
                    cursorWidth: 1,
                    style: TextStyle(fontSize: 12, fontFamily: 'Roboto'),
                    textAlignVertical: TextAlignVertical.bottom,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                          borderSide: BorderSide(
                              color: Color.fromRGBO(140, 79, 225, 1))),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              width: 2,
                              color: Color.fromRGBO(140, 79, 225, 1))),
                      hintText: "New folder name",
                      hintStyle: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 12,
                          color: Color.fromRGBO(194, 194, 194, 1)),
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
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 12),
                    child: GestureDetector(
                      onTap: () => Navigator.of(context, rootNavigator: true)
                          .pop(context),
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
                    onTap: () {
                      print(_folderName.text);
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(right: 21),
                      child: Container(
                        width: 71,
                        height: 27,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Submit",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 13),
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
            ],
          ),
        ),
      ),
    );
  }
}
