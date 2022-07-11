import 'package:first_app_flutter/Components/custom_surfix_icons.dart';
import 'package:first_app_flutter/Components/default_button_custome_color.dart';
import 'package:first_app_flutter/Screens/HomePage/homePage.dart';
import 'package:first_app_flutter/Utils/constants.dart';
import 'package:first_app_flutter/size_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class SignInForm extends StatefulWidget {
  const SignInForm({Key? key}) : super(key: key);

  @override
  State<SignInForm> createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  final _formKey = GlobalKey<FormState>();
  String? email;
  String? password;
  bool? remeber = false;

  TextEditingController txtEmail = TextEditingController(),
      txtPassword = TextEditingController();

  FocusNode focusNode = new FocusNode();

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
      children: [
        buildEmail(),
        SizedBox(height: getProportionateScreenHeight(30)),
        buildPassword(),
        SizedBox(height: getProportionateScreenHeight(30)),
        Row(
          children: [
            Checkbox(
                value: remeber,
                onChanged: (value) {
                  setState(() {
                    remeber = value;
                  });
                }),
            Text('Remembering'),
            Spacer(),
            GestureDetector(
              onTap: () {},
              child: Text(
                "Forgot Password?",
                style: new TextStyle(
                  color: Color.fromRGBO(84, 66, 187, 1),
                  fontSize: 14.0,
                ),
                // style: TextStyle(decoration: TextDecoration.underline),
              ),
            )
          ],
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (BuildContext context) => HomePage()));
          },
          child: Text("Login"),
          style: ElevatedButton.styleFrom(
              primary: Color.fromRGBO(247, 183, 49, 1),
              onPrimary: Colors.white,
              minimumSize: Size(335, 1),
              padding: EdgeInsets.only(top: 20, bottom: 20)),
        ),
        SizedBox(height: 20),
        GestureDetector(
          onTap: () {},
          child: Container(
              padding: EdgeInsets.only(left: 75),
              child: Row(children: <Widget>[
                Text(
                  "Don't have account?",
                  style: new TextStyle(
                    color: Color.fromRGBO(141, 126, 224, 1),
                    fontSize: 14.0,
                  ),
                  // style: TextStyle(decoration: TextDecoration.underline),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    padding: EdgeInsets.only(left: 5),
                    child: Row(children: <Widget>[
                      Text(
                        "Register here!",
                        style: new TextStyle(
                          color: Color.fromRGBO(84, 66, 187, 1),
                          fontSize: 14.0,
                        ),
                      )
                    ]),
                  ),
                )
              ])),
          // child: Text(
          //   "Don't have account?",
          //   style: TextStyle(decoration: TextDecoration.underline),
          // ),
        ),
        // SizedBox(height: 20),
        // GestureDetector(
        //     onTap: () {},
        //     child: Container(
        //       child: Row(children: <Widget>[
        //         Text(
        //           "Register here!",
        //         )
        //       ]),
        //     )
        //     // Text(
        //     //   "Register here!",
        //     //   style: TextStyle(decoration: TextDecoration.underline),
        //     // ),
        //     )
      ],
    ));
  }

  TextFormField buildEmail() {
    return TextFormField(
      controller: txtEmail,
      keyboardType: TextInputType.text,
      // style: mTitleStyle,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(6)),
            borderSide: BorderSide(color: Color.fromARGB(255, 255, 255, 255))),
        focusedBorder: OutlineInputBorder(
            borderSide:
                BorderSide(width: 3, color: Color.fromRGBO(140, 79, 225, 1))),
        hintText: "Email",
        filled: true,
        fillColor: Colors.white,
      ),
      // decoration: InputDecoration(
      //     border:
      //         new OutlineInputBorder(borderRadius: BorderRadius.circular(6)),
      //     labelText: 'Email',
      //     hintText: 'Your Email',
      //     labelStyle: TextStyle(
      //         color: focusNode.hasFocus ? mSubtitleColor : kPrimaryColor),
      //     floatingLabelBehavior: FloatingLabelBehavior.always,
      //     suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/User.svg")),
    );
  }

  TextFormField buildPassword() {
    return TextFormField(
      controller: txtPassword,
      obscureText: true,
      // style: mTitleStyle,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(6)),
            borderSide: BorderSide(color: Colors.white)),
        focusedBorder: OutlineInputBorder(
            borderSide:
                BorderSide(width: 3, color: Color.fromRGBO(140, 79, 225, 1))),
        hintText: "Password",
        filled: true,
        fillColor: Colors.white,
      ),
      // decoration: InputDecoration(
      //     labelText: 'Password',
      //     hintText: 'Your Password',
      //     labelStyle: TextStyle(
      //         color: focusNode.hasFocus ? mSubtitleColor : kPrimaryColor),
      //     floatingLabelBehavior: FloatingLabelBehavior.always,
      //     suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Lock.svg")),
    );
  }
}
