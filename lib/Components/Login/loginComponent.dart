import 'package:first_app_flutter/Components/Login/loginForm.dart';
import 'package:first_app_flutter/Utils/constants.dart';
import 'package:first_app_flutter/size_config.dart';
import 'package:flutter/cupertino.dart';
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
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: getProportionateScreenHeight(20)),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: SizeConfig.screenHeight * 0.04,
                ),
                SizedBox(
                  height: SizeConfig.screenHeight * 0.04,
                ),
                SimpleShadow(
                  child: Image.asset("assets/images/logo.png",
                      height: 128, width: 124),
                  opacity: 0.5,
                  color: kSecondaryColor,
                  offset: Offset(5, 5),
                  sigma: 2,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Login",
                        // style: mTitleStyle,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                SignInForm()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
