import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:zumfle/bottombar/navigationbar.dart';
import 'package:zumfle/constants/constants.dart';
import 'package:zumfle/widgets/widgets.dart';

import '../home/home.dart';

class ThankYou extends StatelessWidget {
  const ThankYou({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          color:Colors.white,
          height: MediaQuery.of(context).size.height*0.8,
          width: MediaQuery.of(context).size.width,
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 250,
                  width: 250,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          'assets/images/Group 8168.png',
                        ),
                      )
                  )
              ),
              SizedBox(height: 20),
              Text('Thank You!',
              style: FontConstant.normaltext.copyWith(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.black)),
              SizedBox(height: 10,),
              Text('for your order',
              style: FontConstant.normaltext.copyWith(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black)),
              SizedBox(height: 10,),
              Text('Your order is now being processed. We will let you' ,
              style: FontConstant.normaltext.copyWith(fontSize:15,color: Colors.black),),
              Text('you know once the order is picked from the outlet.' ,
                style: FontConstant.normaltext.copyWith(fontSize:15,color: Colors.black),),
              Text('Check the staus of your Order.' ,
                style: FontConstant.normaltext.copyWith(fontSize:15,color: Colors.black),),
              SizedBox(height: 20,),
              Container(
                child: materialButton(context,(){} , 'Track My Order'),
              ),
              SizedBox(height: 20,),
              GestureDetector(
                onTap: () {
                  Get.to(() =>  Bottombar());
                },
                child: Text('Back To Home',
                    style: FontConstant.normaltext.copyWith(fontSize: 20 ,fontWeight: FontWeight.bold,color: Colors.black)),
              ),



            ],
          )
        ),
      )
    );
  }
}
