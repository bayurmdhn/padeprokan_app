import 'package:flutter/material.dart';
import 'package:simple_shadow/simple_shadow.dart';
import '../../../../Utils/constants.dart';
import '../../../Login/loginScreen.dart';
import 'background.dart';

class BodyForgot extends StatefulWidget {
  @override
  State<BodyForgot> createState() => _BodyForgot();
}

class _BodyForgot extends State<BodyForgot> {
  String _email = '';
  GlobalKey<FormState> forgotKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final tinggi = MediaQuery.of(context).size.height;
    final lebar = MediaQuery.of(context).size.width;
    return BackgroundForgotPass(
        child: Container(
      width: lebar * 1,
      height: tinggi * 1,
      child: Column(children: <Widget>[
        SizedBox(
          height: tinggi * 0.1,
        ),
        Container(
          alignment: Alignment.center,
          width: MediaQuery.of(context).size.width * 0.35,
          height: MediaQuery.of(context).size.height * 0.16,

          child: Image.asset(
            "assets/images/logoRil.png",
          ),

          // opacity: 0.5,
          // color: kSecondaryColor,
          // offset: Offset(5, 5),
          // sigma: 2,
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.03,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.1,
            ),
            Container(
              width: lebar * 0.42,
              child: FittedBox(child: Text("Forgot password", style: text1)),
            ),
          ],
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.01,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.1,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.5,
              child: FittedBox(
                child: Text(
                    "Please Enter The Email You Used \nWhen You Registered",
                    style: text2),
              ),
            ),
          ],
        ),
        SizedBox(
          height: tinggi * 0.04,
        ),
        Container(
          width: lebar * 0.8,
          child: Form(
            key: forgotKey,
            child: new TextFormField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(6),
                  borderSide: BorderSide(
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(6),
                  borderSide: BorderSide(
                    width: 2,
                    color: Color.fromRGBO(140, 79, 225, 1),
                  ),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(6),
                  borderSide: BorderSide(
                    color: Color.fromRGBO(140, 79, 225, 1),
                  ),
                ),
                // enabledBorder: OutlineInputBorder(
                //     borderRadius: BorderRadius.all(Radius.circular(6)),
                //     borderSide: BorderSide(
                //         color: Color.fromARGB(255, 255, 255, 255))),
                // focusedBorder: OutlineInputBorder(
                //     borderSide: BorderSide(
                //         width: 2, color: Color.fromRGBO(140, 79, 225, 1))),
                hintText: "Email",
                hintStyle: text2,
                filled: true,
                fillColor: Colors.white,
              ),
              validator: (Value) {
                if (Value!.isNotEmpty && Value.length > 3) {
                  return null;
                } else if (Value.length < 4 && Value.isNotEmpty) {
                  return kValidEmail;
                } else {
                  return kForgotinput;
                }
              },
              onSaved: (email) {
                _email = email!;
              },
            ),
          ),
        ),
        SizedBox(
          height: tinggi * 0.04,
        ),
        Container(
          width: MediaQuery.of(context).size.width * 0.8,
          height: MediaQuery.of(context).size.height * 0.05,
          child: ElevatedButton(
            onPressed: () {
              if (forgotKey.currentState!.validate()) {
                return;
              }
            },
            child: Container(
              width: lebar * 0.13,
              child: FittedBox(
                child: Text(
                  "Submit",
                  style: text3,
                ),
              ),
            ),
            style: elevated1,
          ),
        ),
        SizedBox(
          height: tinggi * 0.05,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: lebar * 0.13,
              child: FittedBox(
                child: Text(
                  "Back To",
                  style: signIn,
                ),
              ),
            ),
            SizedBox(
              width: lebar * 0.015,
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (BuildContext context) => LoginScreen()));
              },
              child: Container(
                width: lebar * 0.2,
                child: FittedBox(
                  child: Text(
                    "Sign In Here",
                    style: text5,
                  ),
                ),
              ),
            )
          ],
        ),
      ]),
    ));
  }
}
