import 'package:first_app_flutter/Components/Login/loginForm.dart';
import 'package:first_app_flutter/Utils/constants.dart';
import 'package:first_app_flutter/size_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:simple_shadow/simple_shadow.dart';

class SignInComponent extends StatefulWidget {
  const SignInComponent({Key? key}) : super(key: key);

  @override
  State<SignInComponent> createState() => _SignInComponentState();
}

class _SignInComponentState extends State<SignInComponent> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
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
                    width: MediaQuery.of(context).size.width * 0.15,
                    child: FittedBox(
                      child: Text(
                        "Login",
                        style: new TextStyle(
                            color: Colors.black,
                            fontSize: 24.0,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.bold),
                        // style: mTitleStyle,
                      ),
                    ),
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
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: FittedBox(
                      child: Text(
                        "Login and Start Manage Your Learning \nProcess!",
                        style: new TextStyle(
                          color: Color.fromARGB(255, 137, 137, 137),
                          fontSize: 14.0,
                          fontFamily: 'Roboto',
                        ),
                        // style: mTitleStyle,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.04,
              ),
              SignInForm()
            ],
          ),
        ),
      ),
    );
  }
}
