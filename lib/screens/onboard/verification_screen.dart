

import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:zumfle/constants/constants.dart';
import 'package:zumfle/screens/onboard/signup_screen.dart';

import '../../widgets/widgets.dart';
import 'newpassword_screen.dart';

class Verification extends StatelessWidget {
  const Verification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Colors.white,
          child: Column(
              children: [
          SizedBox(height: MediaQuery.of(context).size.height *0.07,),
        Center
          (child: Image
          (image: AssetImage("assets/images/logo.png",),
          height: 100,
          width: MediaQuery.of(context).size.width,
        ),
        ),
        SizedBox(height: MediaQuery.of(context).size.height *0.01,),
        Text("We have sent an OTP to\n your Email",
          textAlign: TextAlign.center,
          style: FontConstant.normaltext.copyWith(
            fontSize: 25,
            fontWeight: FontWeight.w900,
            color: Colors.black,
          ),
        ),

         SizedBox(height: MediaQuery.of(context).size.height *0.03,),
        Text("Please check your email\ncontinue to reset your password",
          textAlign: TextAlign.center,
          style: FontConstant.lightText.copyWith(
            fontSize: 12,
              color: Color(0xff7e807f)
          ),
        ),
                SizedBox(height: MediaQuery.of(context).size.height *0.04,),
                Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    otpBox(context, "*",),
                    otpBox(context, "*",),
                    otpBox(context, "*",),
                    otpBox(context, "*",),
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height *0.05,),
                materialButton(context, () {
                  Get.to(() => NewPassword());
                },
                  "Verify",),
                SizedBox(height: MediaQuery.of(context).size.height *0.03,),
                signupOption2(),

        ],
        ),
    ),
      ),
    );
  }
}
Row signupOption2 () {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text("Didn't Receive?",
        style: FontConstant.lightText.copyWith(
          fontSize: 12,),),
      GestureDetector(
        onTap: () {
        },
        child: Text(" Click Here",
          style: FontConstant.normaltext.copyWith(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: Color(0xff911a1c)),),
      ),],);

}