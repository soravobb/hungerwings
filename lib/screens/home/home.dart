

import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:zumfle/MyOrder.dart';
import 'package:zumfle/constants/constants.dart';
import 'package:zumfle/products/ProductDescription.dart';
import 'package:zumfle/screens/home/body/mostpopular.dart';
import 'package:zumfle/screens/home/body/recentitems.dart';

import '../../products/productlist.dart';
import '../../widgets/widgets.dart';
import '../onboard/ThankYou.dart';
import 'body/cuisineslist.dart';
import 'body/popularrestaurents.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height *0.05,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: [
                  Row(children: [
                    Text("Welcome Hunger!",
                      style: FontConstant.normaltext.copyWith(
                        fontSize: 20,
                        fontWeight: FontWeight.w900,
                        color: Colors.black,),
                    ),
                    Spacer(flex: 5),
                    GestureDetector(
                        onTap: () {
                          Get.to(() =>  MyOrder());
                        },child: Icon(Icons.shopping_cart_rounded, size: 25.0)),],
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              child: ListView(
                shrinkWrap: true,
                 physics: const ScrollPhysics(),
                 children: [
                   Column(
                     children: [
                       Padding(
                         padding: const EdgeInsets.symmetric(horizontal: 20.0),
                         child: Row(
                           children: [
                             Column(crossAxisAlignment: CrossAxisAlignment.start,
                               children: [
                                 Text("Delivering to",
                                   style: FontConstant.lightText.copyWith(
                                       fontSize: 12,),
                                 ),
                                 Row(
                                   children: [
                                     Text("Current Location",
                                       style: FontConstant.lightText.copyWith(
                                         fontSize: 15,
                                       fontWeight: FontWeight.bold,
                                       color: Colors.grey[700]),
                                     ),
                                     SizedBox(width: 15,),
                                     Icon(Icons.keyboard_arrow_down_rounded, size: 20.0,
                                     color: Color(0xff911a1c),),
                                   ],
                                 ),
                               ],
                             )
                           ],
                         ),
                       ),
                     ],
                   ),
                   SizedBox(height: MediaQuery.of(context).size.height *0.03,),
                   Padding(padding: EdgeInsets.symmetric(horizontal: 20.0),child:searchfield(context, "Search food"),),
                   SizedBox(height: MediaQuery.of(context).size.height *0.04),
                   Cuisines(),
                   Padding(
                     padding: EdgeInsets.symmetric(horizontal: 20.0),
                     child: Row(children: [
                       Text("Popular Restaurents",
                         style: FontConstant.normaltext.copyWith(
                           fontSize: 20,
                           fontWeight: FontWeight.w900,
                           color: Colors.black,),
                       ),
                       Spacer(flex: 5),
                       Text(
                         "View all",
                         style: FontConstant.normaltext.copyWith(
                             fontWeight: FontWeight.bold,
                             fontSize: 12.0,
                             color: Color(0xff911a1c)
                         ),
                       ),
                     ],
                     ),
                   ),

                   SizedBox(height: MediaQuery.of(context).size.height *0.01,),
                   GestureDetector(
                     onTap: () {
                       Get.to(() => ProductDescription());
                     },

                     child: Column(
                       children: [
                         Container(
                             height: MediaQuery.of(context).size.height*0.32,
                             width: MediaQuery.of(context).size.width,
                             decoration: BoxDecoration(
                                 image: DecorationImage(
                                   image: AssetImage(
                                     'assets/images/pizza2.jpg',
                                   ),
                                 )
                             )
                         ),
                         Padding(
                           padding: const EdgeInsets.symmetric(horizontal: 15.0),
                           child: Column(
                             children: [
                               Align(
                                 alignment: Alignment.centerLeft,
                                 child: Text('Minute by tuk tuk',
                                     style:FontConstant.normaltext.copyWith(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black)),
                               ),
                               Row(
                                 mainAxisAlignment: MainAxisAlignment.start,
                                 children: [
                                   Container(
                                       height: 20,
                                       width:20,
                                       decoration: BoxDecoration(
                                           image: DecorationImage(
                                             image: AssetImage(
                                               'assets/images/Path 8560.png',
                                             ),
                                           )
                                       )
                                   ),
                                   Text(' 4.9  ',
                                     style:FontConstant.lightText.copyWith(fontSize: 15,color: ThemeColor.primaryRed),
                                   ),
                                   Text('(124 ratings) Cafe ',
                                       style: FontConstant.lightText.copyWith(fontSize: 15)),
                                   Icon(
                                     Icons.circle,
                                     color: ThemeColor.primaryRed,
                                     size: 5.0,
                                   ),
                                   Text(' Western',
                                       style: FontConstant.lightText.copyWith(fontSize: 15)),
                                 ],
                               ),



                       ],
                     )


                         ),
                         SizedBox(height: MediaQuery.of(context).size.height *0.03,),
                         Container(
                             height: MediaQuery.of(context).size.height*0.32,
                             width: MediaQuery.of(context).size.width,
                             decoration: BoxDecoration(
                                 image: DecorationImage(
                                   image: AssetImage(
                                     'assets/images/1654685127816.jpg',
                                   ),
                                 )
                             )
                         ),
                         Padding(
                             padding: const EdgeInsets.symmetric(horizontal: 15.0),
                             child: Column(
                               children: [
                                 Align(
                                   alignment: Alignment.centerLeft,
                                   child: Text('Minute by tuk tuk',
                                       style:FontConstant.normaltext.copyWith(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black)),
                                 ),
                                 Row(
                                   mainAxisAlignment: MainAxisAlignment.start,
                                   children: [
                                     Container(
                                         height: 20,
                                         width:20,
                                         decoration: BoxDecoration(
                                             image: DecorationImage(
                                               image: AssetImage(
                                                 'assets/images/Path 8560.png',
                                               ),
                                             )
                                         )
                                     ),
                                     Text(' 4.9  ',
                                       style:FontConstant.lightText.copyWith(fontSize: 15,color: ThemeColor.primaryRed),
                                     ),
                                     Text('(124 ratings) Cafe ',
                                         style: FontConstant.lightText.copyWith(fontSize: 15)),
                                     Icon(
                                       Icons.circle,
                                       color: ThemeColor.primaryRed,
                                       size: 5.0,
                                     ),
                                     Text(' Western',
                                         style: FontConstant.lightText.copyWith(fontSize: 15)),
                                   ],
                                 ),



                               ],
                             )


                         ),
                         SizedBox(height: MediaQuery.of(context).size.height *0.03,),
                         Container(
                             height: MediaQuery.of(context).size.height*0.32,
                             width: MediaQuery.of(context).size.width,
                             decoration: BoxDecoration(
                                 image: DecorationImage(
                                   image: AssetImage(
                                     'assets/images/1654685127797.jpg',
                                   ),
                                 )
                             )
                         ),
                         Padding(
                             padding: const EdgeInsets.symmetric(horizontal: 15.0),
                             child: Column(
                               children: [
                                 Align(
                                   alignment: Alignment.centerLeft,
                                   child: Text('Minute by tuk tuk',
                                       style:FontConstant.normaltext.copyWith(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black)),
                                 ),
                                 Row(
                                   mainAxisAlignment: MainAxisAlignment.start,
                                   children: [
                                     Container(
                                         height: 20,
                                         width:20,
                                         decoration: BoxDecoration(
                                             image: DecorationImage(
                                               image: AssetImage(
                                                 'assets/images/Path 8560.png',
                                               ),
                                             )
                                         )
                                     ),
                                     Text(' 4.9  ',
                                       style:FontConstant.lightText.copyWith(fontSize: 15,color: ThemeColor.primaryRed),
                                     ),
                                     Text('(124 ratings) Cafe ',
                                         style: FontConstant.lightText.copyWith(fontSize: 15)),
                                     Icon(
                                       Icons.circle,
                                       color: ThemeColor.primaryRed,
                                       size: 5.0,
                                     ),
                                     Text(' Western',
                                         style: FontConstant.lightText.copyWith(fontSize: 15)),
                                   ],
                                 ),



                               ],
                             )


                         ),
                         SizedBox(height: MediaQuery.of(context).size.height *0.05),
                         Column(
                           children: [
                             Container(
                               child: Padding(
                                 padding: EdgeInsets.symmetric(horizontal: 20.0),
                                 child: Row(children: [
                                   Text("Most Popular",
                                     style: FontConstant.normaltext.copyWith(
                                       fontSize: 20,
                                       fontWeight: FontWeight.w900,
                                       color: Colors.black,),
                                   ),
                                   Spacer(flex: 5),
                                   Text(
                                     "View all",
                                     style: FontConstant.normaltext.copyWith(
                                         fontWeight: FontWeight.bold,
                                         fontSize: 12.0,
                                         color: Color(0xff911a1c)
                                     ),
                                   ),
                                 ],
                                 ),
                               ),
                             ),
                             SizedBox(height: MediaQuery.of(context).size.height *0.03),
                             MOSTPOPULAR(),
                             Padding(
                               padding: EdgeInsets.symmetric(horizontal: 20.0),
                               child: Row(children: [
                                 Text("Recent items",
                                   style: FontConstant.normaltext.copyWith(
                                     fontSize: 20,
                                     fontWeight: FontWeight.w900,
                                     color: Colors.black,),
                                 ),
                                 Spacer(flex: 5),
                                 Text(
                                   "View all",
                                   style: FontConstant.normaltext.copyWith(
                                       fontWeight: FontWeight.bold,
                                       fontSize: 12.0,
                                       color: Color(0xff911a1c)
                                   ),
                                 ),
                               ],
                               ),
                             ),
                             SizedBox(height: MediaQuery.of(context).size.height *0.02),
                             Padding(
                               padding: const EdgeInsets.symmetric( horizontal: 10.0),
                               child: RECENTITEMS(),
                             ),
                           ],
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
