

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:zumfle/constants/constants.dart';
import 'package:zumfle/screens/onboard/signup_screen.dart';
import 'package:zumfle/screens/onboard/verification_screen.dart';
import 'package:zumfle/widgets/widgets.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
             body: SingleChildScrollView(
               child: Container(
                 // height: MediaQuery.of(context).size.height,
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
               Container(
                 child: Column(
                   children: [
                     Text("Forgot Password",
                       style: FontConstant.normaltext.copyWith(
                         fontSize: 25,
                         fontWeight: FontWeight.w900,
                         color: Colors.black,
                       ),
                     ),
                     SizedBox(height: MediaQuery.of(context).size.height *0.02,),
                     Text("    Please enter your email to receive a\n"
                         "link to create a new password via email"
                       ,
                       style: FontConstant.lightText.copyWith(
                         fontSize: 12,
                         color: Color(0xff7e807f),
                       ),
                     ),
                   ],
                 ),
               ),

                       SizedBox(height: MediaQuery.of(context).size.height *0.08,),
                       Container(
                         child: Column(
                           children: [
                             textFormField(context,
                               "Password",),
                             SizedBox(height: MediaQuery.of(context).size.height *0.04,),
                             materialButton(context, () {
                               Get.to(() => Verification());
                             },
                               "Send",),
                           ],
                         ),
                       ),


               ],
               ),
             )
    ),
    );
  }
}
