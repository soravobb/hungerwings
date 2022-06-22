

import 'package:flutter/material.dart';
import 'package:zumfle/constants/constants.dart';
import 'package:zumfle/widgets/widgets.dart';

class NewPassword extends StatelessWidget {
  const NewPassword({Key? key}) : super(key: key);

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
        Text("New Password",
          textAlign: TextAlign.center,
          style: FontConstant.normaltext.copyWith(
            fontSize: 25,
            fontWeight: FontWeight.w900,
            color: Colors.black,
          ),
        ),

        SizedBox(height: MediaQuery.of(context).size.height *0.03,),
        Text("Please check your email to receive a\nlink to create a new password via email",
          textAlign: TextAlign.center,
          style: FontConstant.lightText.copyWith(
            fontSize: 12,
              color: Color(0xff7e807f)
          ),
        ),
                SizedBox(height: MediaQuery.of(context).size.height *0.05,),
                Container(
                  child: Column(
                    children: [
                      textFormField(context,
                        "New Password",),
                      SizedBox(height: MediaQuery.of(context).size.height *0.03,),

                      textFormField(context,
                        "Confirm Password",),
                      SizedBox(height: MediaQuery.of(context).size.height *0.04,),
                      materialButton(context, () {
                      },
                        "Update",),
                    ],
                  ),
                )

  ],
        ),
    ),
      ),);
  }
}
