

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zumfle/screens/onboard/signup_screen.dart';

import '../../constants/constants.dart';
import '../../widgets/widgets.dart';
import 'login_account.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height *0.40,
              width: MediaQuery.of(context).size.width ,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image:AssetImage("assets/images/Organe top shape.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              child: Column(
                children: [
                  SizedBox(height: MediaQuery.of(context).size.height *0.35,),
                  Center
                    (child: Image
                    (image: AssetImage("assets/images/l.png",),
                    height:MediaQuery.of(context).size.height *0.12,
                    width: MediaQuery.of(context).size.width,
                  )),
                  Center
                    (child: Image
                    (image: AssetImage("assets/images/logo.png",),
                    height: 100,
                    width: MediaQuery.of(context).size.width,
                  ),
                  ),
                  SizedBox(height: 10,),
                  Text("Lorem ipsum is simply dummy text of the\n        priting and typesetting industry,",
                    style: FontConstant.lightText.copyWith(
                      fontSize: 12,
                        color: Color(0xff7e807f)
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height *0.06,),
                  Container(
                    child: Column(
                      children: [
                        materialButton(context, () {
                          Get.to(() => LoginAccount());
                        },
                          "Login",),
                        SizedBox(height: MediaQuery.of(context).size.height *0.03,),
                        materialButton2(context, () {
                          Get.to(() => Signup());
                        },
                          "Create an Account",
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),


        ),
      );
  }
}
