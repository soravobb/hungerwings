import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:zumfle/constants/constants.dart';
import 'package:zumfle/screens/onboard/ThankYou.dart';
import 'package:zumfle/widgets/widgets.dart';

import '../MyOrder.dart';
import 'CardDetails.dart';

class Checkout extends StatelessWidget {
  const Checkout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor:Colors.white,
        title: Text('Checkout',style:FontConstant.normaltext.copyWith(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black)),
        leading: GestureDetector(
          onTap: () {
            Get.to(() =>  MyOrder());
          },
          child: Icon(
              Icons.arrow_back_ios
          ),
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              color: Colors.white,
              height: MediaQuery.of(context).size.height*0.12,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      child: Text('Delivery address',
                      style: FontConstant.lightText.copyWith(fontSize: 15),),
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('653 Nostrand Ave.,\n'
                          'Brooklyn, NY 11216',
                      style: FontConstant.normaltext.copyWith(fontSize: 15, fontWeight: FontWeight.bold,color: Colors.black,),),
                      GestureDetector(
                        onTap: (){},

                        child: Text('Change',
                        style: FontConstant.normaltext.copyWith(fontSize: 15,color: ThemeColor.primaryRed),),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: 10),
          Container(
            height: MediaQuery.of(context).size.height*0.30,
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Text('Payment Method',
                        style: FontConstant.lightText.copyWith(fontSize: 15),),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: GestureDetector(
                          onTap: () {
                            cardsDetails(context);
                          },
                          child: Text('+ Add Card',
                          style:FontConstant.normaltext.copyWith(fontSize: 15,color: ThemeColor.primaryRed) ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),

                  child: SizedBox(
                    height: 40,
                    width: MediaQuery.of(context).size.width*0.9,
                    child: Container(
                      color: Colors.grey[100],
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Cash on delivery',
                            style: FontConstant.normaltext.copyWith(fontSize: 15,color: Colors.black)),

                            Container(
                              height: 20,
                                width: 20,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(
                                        'assets/images/emptycircle.png',
                                      ),
                                    )
                                )
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: SizedBox(
                    height: 40,
                    width: MediaQuery.of(context).size.width*0.9,
                    child: GestureDetector(
                      onTap: () {cardsDetails(context);},
                      child: Container(
                        color: Colors.grey[100],
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 20,
                                  width: 40,
                                  decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                      'assets/images/visa.png',
                                    ),
                                  )
                              )
                              ),
                              Text('**** **** **** 2187',
                                  style: FontConstant.normaltext.copyWith(fontSize: 15,color: Colors.black)),

                              Container(
                                height: 20,
                                  width:20,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                          'assets/images/emptycircle.png',
                                        ),
                                      )
                                  )
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),

                  child: SizedBox(
                    height: 40,
                    width: MediaQuery.of(context).size.width*0.9,
                    child: Container(
                      color: Colors.grey[100],
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                                height: 20,
                                width: 40,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(
                                        'assets/images/paypal.jpg',
                                      ),
                                    )
                                )
                            ),
                            Text('johndoe@email.com',
                                style: FontConstant.normaltext.copyWith(fontSize: 15,color: Colors.black)),

                            Container(
                                height: 20,
                                width:20,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(
                                        'assets/images/emptycircle.png',
                                      ),
                                    )
                                )
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Container(
            height: MediaQuery.of(context).size.height*0.2,
            color: Colors.white,
            child:Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    child:Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Sub Total',
                        style: FontConstant.normaltext.copyWith(fontSize: 15,color: Colors.black)),
                        Text('S68',
                        style: FontConstant.normaltext.copyWith(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black),)
                      ],
                    )
                  ),
                  SizedBox(height: 10),
                  Container(
                      child:Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Delivery Cost',
                              style: FontConstant.normaltext.copyWith(fontSize: 15,color: Colors.black)),
                          Text('S2',
                            style: FontConstant.normaltext.copyWith(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black),)
                        ],
                      )
                  ),
                  SizedBox(height: 10),
                  Container(
                      child:Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Discount',
                              style: FontConstant.normaltext.copyWith(fontSize: 15,color: Colors.black)),
                          Text('-S4',
                            style: FontConstant.normaltext.copyWith(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black),),
                        ],
                      )
                  ),
                  Divider(height: 10,thickness: 2.0,indent: 20,endIndent: 20,),
                  Container(
                      child:Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Total',
                              style: FontConstant.normaltext.copyWith(fontSize: 15,color: Colors.black)),
                          Text('S66',
                            style: FontConstant.normaltext.copyWith(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black),),
                        ],
                      )
                  ),
                ],

              ),
            )
          ),
          SizedBox(height: 10),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0, ),
            child: materialButton(context, () {
              Get.to(() =>  ThankYou());
            }, 'Send Order'),
          )
        ],

      ),
    );
  }
}
