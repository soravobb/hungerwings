import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zumfle/widgets/widgets.dart';
import '../constants/constants.dart';

class Payment_details  extends StatelessWidget {
  const Payment_details ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title:Text('Payment Details',style:FontConstant.normaltext.copyWith(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black)),
        leading: GestureDetector(
          onTap:(){},
          child: Icon(
              Icons.arrow_back_ios
          ),),
        actions: [
          GestureDetector(
            onTap: () {},
            child: Icon(
              Icons.shopping_cart_rounded,
              size: 25.0,
            ),
          )
        ],
      ),
      body:ListView(

        children: [

          SizedBox(height:20),
          Center(
            child: Container(
              child: Text('Customize your payment method',style: FontConstant.normaltext.copyWith(fontSize: 20,fontWeight: FontWeight.w700,color: Colors.black54),),
            ),
          ),
          Divider(indent: 20,
            endIndent: 20,thickness: 4.0,height: 40,),
          Container(
            width: MediaQuery.of(context).size.width*0.8,
            height: MediaQuery.of(context).size.height*0.3,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                color:Colors.grey[100] ,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 25.0),
                          child: Container(
                            child: Text("Cash/Card on delivery",style: FontConstant.normaltext.copyWith(fontSize: 15,color: Colors.black,fontWeight: FontWeight.bold),),
                          ),
                        ),
                        SizedBox(width: 130),
                        Padding(
                          padding: const EdgeInsets.only(top: 25),
                          child: GestureDetector(
                            onTap: (){},
                            child: Container(
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                        'assets/images/Path 8612.png',

                                      ),
                                      scale: 1.0
                                  )
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    Divider(indent: 40,
                      endIndent: 40,thickness: 2.0,height: 40,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 20,
                          width: 40,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                    'assets/images/visa.png',

                                  ),
                                  scale: 1.0
                              )
                          ),

                        ),
                        SizedBox(width: 20),
                        Container(
                          child: Text("**** **** **** 2187",style: FontConstant.normaltext.copyWith(fontSize: 15,color: Colors.black,fontWeight: FontWeight.bold),),
                        ),
                        SizedBox(width: 20),
                        Container(
                            width: 100,
                            height: 20,
                            child:materialButton2(context, (){}, 'Delete Card')
                        )
                      ],
                    ),
                    Divider(indent: 40,
                      endIndent: 40,thickness: 2.0,height: 40,),
                    GestureDetector(
                      onTap: (){},
                      child: Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: const EdgeInsets.only(right: 190),
                          child: Container(
                            child: Text('Other Methods',style: FontConstant.normaltext.copyWith(fontSize: 15,color: Colors.black,fontWeight: FontWeight.bold)),
                          ),
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Container(
                color: ThemeColor.primaryRed,
                child:materialButton(context, (){},'+ Add Another Credit/Debit Card')
            ),
          )
         ],
      )
    );
  }
}
