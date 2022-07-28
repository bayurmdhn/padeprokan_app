import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Space extends StatefulWidget {
  const Space({Key? key}) : super(key: key);

  @override
  State<Space> createState() => _SpaceState();
}

class _SpaceState extends State<Space> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(fontFamily: 'Roboto'),
        home: Scaffold(
            appBar: AppBar(
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    new Image.asset('assets/images/Logo padeprokan.png'),
                    Padding(
                      padding: const EdgeInsets.only(left: 17),
                      child: new Text(
                        "PKL/CLASS",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 18,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 17),
                          child: Image.asset(
                              'assets/images/clarity_notification-solid.png'),
                        ),
                        Image.asset('assets/images/Akun.png'),
                      ],
                    ),
                  ],
                ),
                backgroundColor: Color.fromARGB(255, 255, 255, 255),
                centerTitle: true),
            body: Container(
              child: GridView.count(
                primary: false,
                padding: const EdgeInsets.all(20),
                crossAxisSpacing: 12,
                mainAxisSpacing: 20,
                crossAxisCount: 2,
                childAspectRatio: 181/223,
                children: <Widget>[
                  Card(
                    child: InkWell(
                      onTap: (){},
                      splashColor: Colors.black,
                      child: Column(
                        children: [
                          Image.asset('assets/images/Video Conference logo.png'),
                          Text("Video Conference",
                          textAlign: null,
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),),
                          Column(children: [
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text('Meet Your Team Online',
                              textAlign: TextAlign.end,
                              style: TextStyle(
                                color: Color.fromARGB(255, 217, 212, 197),
                                fontFamily: 'Roboto',
                                fontSize: 12,
                                fontWeight: FontWeight.normal,                              
                              ),),
                            )
                            
                          ],)
                        ],                        
                      ),
                    ),
                  ),
                  Card(
                    child: InkWell(
                      onTap: (){},
                      splashColor: Colors.black,
                      child: Column(
                        children: [
                          Image.asset('assets/images/Courses logo.png'),
                          Text("Courses",
                          textAlign: null,
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),),
                          Column(children: [
                            Padding(
                              padding: const EdgeInsets.all(3),
                              child: Text('Collection of our learning material on any format such as Video, Ebook, Doc, Etc',
                              textAlign: TextAlign.end,
                              style: TextStyle(
                                color: Color.fromARGB(255, 217, 212, 197),
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.normal,
                                fontSize: 10,
                              ),),
                            )
                          ],)
                        ],
                        
                      ),

                    ),
                    
                  ),
                  Card(
                    child: InkWell(
                      onTap: (){},
                      splashColor: Colors.black,
                      child: Column(
                        children: [
                          Image.asset('assets/images/Docs & files.png'),
                          Text("Docs & Files",
                          textAlign: null,
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),),
                        ],
                        
                      ),

                    ),
                    
                  ),
                  Card(
                    child: InkWell(
                      onTap: (){},
                      splashColor: Colors.black,
                      child: Column(
                        children: [
                          Image.asset('assets/images/Schedule logo.png'),
                          Text("Schedule",
                          textAlign: null,
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),),
                        ],
                        
                      ),

                    ),
                    
                  ),
                  Card(
                    child: InkWell(
                      onTap: (){},
                      splashColor: Colors.black,
                      child: Column(
                        children: [
                          Image.asset('assets/images/Automatic check-in logo.png'),
                          Text("Automatic Check-in",
                          textAlign: null,
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),),
                        ],
                        
                      ),

                    ),
                    
                  ),
                  Card(
                    child: InkWell(
                      onTap: (){},
                      splashColor: Colors.black,
                      child: Column(
                        children: [
                          Image.asset('assets/images/Group chat logo.png'),
                          Text("Group Chat",
                          textAlign: null,
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),),
                        ],
                        
                      ),

                    ),
                    
                  ),
                  Card(
                    child: InkWell(
                      onTap: (){},
                      splashColor: Colors.black,
                      child: Column(
                        children: [
                          Image.asset('assets/images/Info Board logo.png'),
                          Text("Info Board",
                          textAlign: null,
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),),
                        ],
                        
                      ),

                    ),
                    
                  ),
                  Card(
                    child: InkWell(
                      onTap: (){},
                      splashColor: Colors.black,
                      child: Column(
                        children: [
                          Image.asset('assets/images/Tasks logo.png'),
                          Text("Tasks",
                          textAlign: null,
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),),
                        ],
                        
                      ),

                    ),
                    
                  ),
                ],
              ),
            )));
  }
}