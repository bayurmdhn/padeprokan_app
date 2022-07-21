import 'package:flutter/material.dart';
import '../../../Utils/constants.dart';
import '../../Login/loginScreen.dart';
import 'Components/background.dart';
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
    return BackgroundForgotPass(
        child: Container(
      width: double.infinity,
      height: size.height,
      child: Stack(alignment: Alignment.center, children: <Widget>[
        Positioned(
          top: 94,
          child: Image.asset(
            "assets/images/logo.png",
            height: 128.0,
            width: 124.0,
          ),
        ),
        Positioned(
          left: 34,
          top: 249,
          child: Text("Forgot password", style: text1),
        ),
        Positioned(
          left: 34,
          top: 285,
          child: Text("Please Enter The Email You Used \nWhen You Registered",
              style: text2),
        ),
        Column(
          children: [
            Container(
              padding: EdgeInsets.only(left: 34, right: 34, top: 355),
              child: Form(
                key: forgotKey,
                child: new TextFormField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(6)),
                        borderSide: BorderSide(
                            color: Color.fromARGB(255, 255, 255, 255))),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 2, color: Color.fromRGBO(140, 79, 225, 1))),
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
            Padding(
              padding: const EdgeInsets.only(top: 34),
              child: ElevatedButton(
                onPressed: () {
                  if (forgotKey.currentState!.validate()) {
                    return;
                  }
                },
                child: Text(
                  "Submit",
                  style: text3,
                ),
                style: elevated1,
              ),
            ),
            SizedBox(
              height: 64,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Back To",
                    style: signIn,
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (BuildContext context) => LoginScreen()));
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(left: 3),
                        child: Text(
                          "Sign In Here",
                          style: text5,
                        ),
                      ))
                ],
              ),
            ),
          ],
        ),
      ]),
    ));
  }
}
