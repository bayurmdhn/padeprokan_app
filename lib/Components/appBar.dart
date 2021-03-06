import 'package:flutter/material.dart';

class appBarClass extends StatelessWidget {
  const appBarClass({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        new Image.asset('assets/images/Logo padeprokan.png'),
        new Text(
          "Spaces",
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.grey,
              fontSize: 18,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.bold),
        ),

        //Profile Picture button and Notification button
        Row(
          children: [
            Padding(
                padding: const EdgeInsets.only(right: 17),
                child: IconButton(
                  icon: Icon(
                    Icons.notifications,
                    color: Color.fromARGB(255, 138, 138, 138),
                  ),
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) => Padding(
                              padding:
                                  const EdgeInsets.only(right: 54, top: 30),
                              child: AlertDialog(
                                alignment: Alignment.topRight,
                                content: Container(
                                  width: 227,
                                  height: 256,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset('assets/images/Vector.png'),
                                      Text(
                                        "No Data",
                                        style: TextStyle(
                                            fontSize: 18,
                                            color: Color.fromARGB(
                                                255, 138, 138, 138)),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ));
                  },
                )),

            //Account Button
            IconButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) => Padding(
                            padding: const EdgeInsets.fromLTRB(12, 23, 24, 34),
                            child: AlertDialog(
                              alignment: Alignment.topRight,
                              content: Container(
                                height: 100,
                                width: 200,
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.circle_rounded,
                                          color: Color.fromARGB(
                                              255, 138, 138, 138),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 13),
                                          child: Text(
                                            "My Account",
                                            style: TextStyle(fontSize: 14),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Divider(
                                      color: Color.fromARGB(255, 138, 138, 138),
                                      thickness: 1,
                                    ),
                                    Row(
                                      children: [
                                        Text("Change Password",
                                            style: TextStyle(fontSize: 14)),
                                      ],
                                    ),
                                    Divider(
                                      color: Color.fromARGB(255, 138, 138, 138),
                                      thickness: 1,
                                    ),
                                    Row(
                                      children: [
                                        Text("Logout",
                                            style: TextStyle(fontSize: 14))
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ));
                },
                icon: Icon(
                  Icons.circle_rounded,
                  color: Color.fromARGB(255, 138, 138, 138),
                ))
          ],
        ),
      ],
    );
  }
}
