import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:zumfle/MyOrder.dart';
import 'package:zumfle/notifications.dart';

import '../../Payments/Payment_details.dart';
import '../../constants/constants.dart';
import 'about_us.dart';

class more extends StatelessWidget {
  const more({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Text('More',style:FontConstant.normaltext.copyWith(fontSize: 25,fontWeight: FontWeight.bold,color:ThemeColor.primaryRed)),
      actions: [
        GestureDetector(
          onTap: () {
            Get.to(() =>  MyOrder());
          },
          child: Icon(
            Icons.shopping_cart_rounded,
            size: 25.0,
          ),
        )
      ],
      ),
      body: ListView(
        padding: EdgeInsets.all(20.0),
        children: <Widget>[
          GestureDetector(
            onTap: (){},

            child: GestureDetector(
              onTap: () {

              },
              child: GestureDetector(
                onTap:  () {
                  Get.to(() =>  const Payment_details());
                } ,
                child: Stack(
                  children: [
                    Container(
                      height: 80,
                      width: 340,
                      color: Colors.grey[100],

                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            margin: const EdgeInsets.all(10.0),
                            height: 50.0,
                            width: 70.0,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                    'assets/images/002income.png',

                                ),
                                scale: 1.25,

                                // fit: BoxFit.fitHeight,
                              ),
                              shape: BoxShape.circle,
                              color: Colors.grey[400],
                            ),
                          ),
                          Container(
                            child: Text('Payment Details',style: FontConstant.normaltext.copyWith(fontSize:20,fontWeight: FontWeight.bold,color:Colors.black )),
                          ),

                        ],
                      ),

                    ),
                    Positioned(child: Icon(Icons.circle,color: Colors.white,size: 40,
                      //shadows: [
                      // Shadow(color: Colors.black12,blurRadius: 10.0)
                      //]
                    ),
                      top:20,left: 320,),
                    Positioned(child: Image.asset('assets/images/roup 6836.png',
                      color: Colors.grey[400],
                      height: 20,width: 20,),
                      top:30,right:1,),

                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          GestureDetector(
            onTap: () {
              Get.to(() =>  MyOrder());

            },
            child: Stack(
              children: [
                Container(
                  height: 80,
                  width: 350,
                  color: Colors.grey[100],

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.all(10.0),
                        height: 50.0,
                        width: 70.0,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                                'assets/images/shoppibag.png'),
                            scale: 1.25,
                          ),
                          shape: BoxShape.circle,
                          color: Colors.grey[400],
                        ),
                      ),
                      Container(
                        child: Text('My Orders',style: FontConstant.normaltext.copyWith(fontSize:20,fontWeight: FontWeight.bold,color:Colors.black )),
                      )
                    ],
                  ),

                ),
                Positioned(child: Icon(Icons.circle,color: Colors.white,size: 40,
                  //shadows: [
                  // Shadow(color: Colors.black12,blurRadius: 10.0)
                  //]
                ),
                  top:20,left: 320,),
                Positioned(child: Image.asset('assets/images/roup 6836.png',
                  color: Colors.grey[400],
                  height: 20,width: 20,),
                  top:30,right:1,),
              ],
            ),
          ),
          SizedBox(height: 20,),
          GestureDetector(
            onTap: () {
              Get.to(() =>  notifications());
            },
            child: Stack(
              children: [
                Container(
                  height: 80,
                  width: 350,
                  color: Colors.grey[100],

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.all(10.0),
                        height: 50.0,
                        width: 70.0,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                                'assets/images/Group 8081.png'),
                            scale: 1.25,

                            // fit: BoxFit.fitHeight,
                          ),
                          shape: BoxShape.circle,
                          color: Colors.grey[400],
                        ),
                      ),
                      Container(
                        child: Text('Notifications',style: FontConstant.normaltext.copyWith(fontSize:20,fontWeight: FontWeight.bold,color:Colors.black )),
                      )
                    ],
                  ),

                ),
                Positioned(child: Icon(Icons.circle,color: Colors.white,size: 40,
                  //shadows: [
                  // Shadow(color: Colors.black12,blurRadius: 10.0)
                  //]
                ),
                  top:20,left: 320,),
                Positioned(child: Image.asset('assets/images/roup 6836.png',
                  color: Colors.grey[400],
                  height: 20,width: 20,),
                  top:30,right:1,),
              ],
            ),
          ),
          SizedBox(height: 20,),
          GestureDetector(
            onTap: () {
              Get.to(() =>  about_us());
            },
            child: Stack(
              children: [
                Container(
                  height: 80,
                  width: 350,
                  color: Colors.grey[100],

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.all(10.0),
                        height: 50.0,
                        width: 70.0,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                                'assets/images/Path 10157.png'),
                            scale: 1.25,

                            // fit: BoxFit.fitHeight,
                          ),
                          shape: BoxShape.circle,
                          color: Colors.grey[400],
                        ),
                      ),
                      Container(
                        child: Text('About Us',style: FontConstant.normaltext.copyWith(fontSize:20,fontWeight: FontWeight.bold,color:Colors.black )),
                      )
                    ],
                  ),

                ),
                Positioned(child: Icon(Icons.circle,color: Colors.white,size: 40,
                  //shadows: [
                  // Shadow(color: Colors.black12,blurRadius: 10.0)
                  //]
                ),
                  top:20,left: 320,),
                Positioned(child: Image.asset('assets/images/roup 6836.png',
                  color: Colors.grey[400],
                  height: 20,width: 20,),
                  top:30,right:1,),
              ],
            ),
          ),


        ],

      )
    );
  }
}
