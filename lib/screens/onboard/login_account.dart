

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:zumfle/constants/constants.dart';
import 'package:zumfle/screens/onboard/signup_screen.dart';

import '../../widgets/widgets.dart';
import '../home/home.dart';
import 'forgotpassword_screen.dart';


class LoginAccount extends StatelessWidget {
  const LoginAccount({Key? key}) : super(key: key);

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
              SizedBox(height: MediaQuery.of(context).size.height *0.05,),
              Text("Login",
                style: FontConstant.normaltext.copyWith(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height *0.01,),
              Text("Add your details to login",
                style: FontConstant.lightText.copyWith(
                  fontSize: 12,
                  color: Color(0xff7e807f)
                ),
              ),
              Padding(
                padding:EdgeInsets.symmetric(vertical: 25.0),
                child: Container(
                  child: Column(
                    children: [
                      textFormField(context,
                          "Your Email",),
                      SizedBox(height: 20,),
                      textFormField(context,
                        "Password",),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40.0),
                        child: Align(
                            alignment: Alignment.topRight,
                            child: GestureDetector(
                              child: TextButton(
                                onPressed: () {
                                  Get.to(() => ForgotPassword());

                                },
                                child: Text(
                                  "Forgot Password?",
                                  style: FontConstant.normaltext.copyWith(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14.0,
                                      color: Color(0xff911a1c)
                                  ),
                                ),
                              ),
                            )),
                      ),
                    ],
                  ),
                ),
              ),
               SizedBox(height: 10),
               materialButton(context, () {
                 Get.to(() => Home());
              },
                "Login",),
              Padding(padding: EdgeInsets.symmetric(vertical: 30.0),child:signupOption(),



              ),
            ],
          ),
        ),
      ),
    );
  }
}
Row signupOption () {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text("Don't Have an Account?",
    style: FontConstant.lightText.copyWith(
      fontSize: 12,),),
      GestureDetector(
        onTap: () {
          Get.to(() => Signup());
        },
        child: Text(" Sign up",
  style: FontConstant.normaltext.copyWith(
  fontSize: 12,
  fontWeight: FontWeight.bold,
  color: Color(0xff911a1c)),),
          ),],);

}

