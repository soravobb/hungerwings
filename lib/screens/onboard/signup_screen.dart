

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zumfle/MyOrder.dart';
import 'package:zumfle/Payments/CardDetails.dart';
import 'package:zumfle/Payments/Checkout.dart';
import 'package:zumfle/Payments/Payment_details.dart';
import 'package:zumfle/constants/constants.dart';
import 'package:zumfle/products/Desserts.dart';
import 'package:zumfle/products/LatestOffers.dart';
import 'package:zumfle/products/ProductDescription.dart';
import 'package:zumfle/screens/onboard/ThankYou.dart';
import 'package:zumfle/screens/onboard/about_us.dart';
import 'package:zumfle/screens/onboard/more.dart';
import 'package:zumfle/screens/profile/profile.dart';
import 'package:zumfle/widgets/widgets.dart';

import '../../notifications.dart';
import 'login_account.dart';

class Signup extends StatelessWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Container(
            // height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Column(
                  children: [
              SizedBox(height: MediaQuery.of(context).size.height *0.05,),
           Center
          (child: Image
          (image: AssetImage("assets/images/logo.png",),
          height: 100,
          width: MediaQuery.of(context).size.width,
            ),
            ),
          Text("Sign Up",
          style: FontConstant.normaltext.copyWith(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.black,
          ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height *0.02,),
              Text("Add your details to sign up",
          style: FontConstant.lightText.copyWith(
              fontSize: 12,
              color: Color(0xff7e807f)
          ),
            ),
                    SizedBox(height: MediaQuery.of(context).size.height *0.03,),
                    textFormField(context,
                      "Name",),
                    SizedBox(height: MediaQuery.of(context).size.height *0.03,),
                    textFormField(context,
                      "Email",),
                    SizedBox(height: MediaQuery.of(context).size.height *0.03,),
                    textFormField(context,
                      "Mobile No",),
                    SizedBox(height: MediaQuery.of(context).size.height *0.03,),
                    textFormField(context,
                      "Address",),
                    SizedBox(height: MediaQuery.of(context).size.height *0.03,),
                    textFormField(context,
                      "Password",),
                    SizedBox(height: MediaQuery.of(context).size.height *0.03,),
                    textFormField(context,
                      "Confirm Password",),
                    SizedBox(height: MediaQuery.of(context).size.height *0.03,),
                    materialButton(context, () {
                    },
                      "Sign Up",),
                    SizedBox(height: MediaQuery.of(context).size.height *0.03,),
                    signupOption(),
                    SizedBox(height: 30),

            ],
          ),
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
          Get.to(() => const LoginAccount());

        },
        child: Text(" login",
          style: FontConstant.normaltext.copyWith(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: Color(0xff911a1c)),),
      ),],);

}

