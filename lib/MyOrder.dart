import 'package:flutter/material.dart';
import 'package:zumfle/widgets/widgets.dart';

import 'constants/constants.dart';

class MyOrder extends StatelessWidget {
  const MyOrder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor:Colors.white,
        title: Text('My Order',style:FontConstant.normaltext.copyWith(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black)),
        leading: Icon(
          Icons.arrow_back_ios
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(15.0,5.0,15.0,10.0),
            child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment:CrossAxisAlignment.start ,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                    image: AssetImage(
                      'assets/images/burger2.jpg',
      ),
                )
                  )
                ),
                SizedBox(height: 5.0),
                Container(
                  child:Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Text('King Burgers',style:FontConstant.normaltext.copyWith(fontSize: 25,fontWeight: FontWeight.bold,color:Colors.black54) ),

                        ),
                        Container(
                          child: Row(
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
                              RichText(text: TextSpan(
                                text: ' 4.9 ',
                                style: FontConstant.lightText.copyWith(fontSize: 15,color: ThemeColor.primaryRed),
                                children: <TextSpan>[
                                  TextSpan(text: '(124 ratings)',
                              style: FontConstant.lightText.copyWith(fontSize: 15,color:Colors.black54)
                              )
                                ]
                              )

                          ),
                        ]
                          )

                        ),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text('Burger  ',style: FontConstant.lightText.copyWith(fontSize:15,color: Colors.black54),),
                              Container(
                                child: Icon(
                                  Icons.circle,
                                  size: 5,
                                  color: ThemeColor.primaryRed,
                                ),
                              ),
                              Text('  Western Food',style: FontConstant.lightText.copyWith(fontSize: 15,color: Colors.black54),)
                            ],
                          ),
                        ),
                        Container(
                          child: Row(
                            children: [
                              Container(
                                  height: 20,
                                  width:20,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                          'assets/images/location-pin.png',
                                        ),
                                      )
                                  )

                                ),
                              Text('No.03,4th Lane,Newyork',style: FontConstant.lightText.copyWith(fontSize: 15,color: Colors.black54))
                            ],
                          ),
                        )
                      ],

                    ),
                  ) )
        ]
    ),
          ),
          Container(
            color: Colors.grey[100],
            child: Padding(
              padding: const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 15.0),
              child: Container(
                height: MediaQuery.of(context).size.height*0.35,
                width: MediaQuery.of(context).size.width*0.8,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(height: 20),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Text(
                              'Beef Burger x1',
                              style: FontConstant.lightText.copyWith(fontSize: 15, color: Colors.black54),
                            ),
                          ),
                          Container(
                            child: Text(
                              'S16',
                              style: FontConstant.lightText.copyWith(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black54),
                            ),
                          )
                        ],
                      ),
                    ),
                    Divider(height: 10,thickness: 2.0,indent: 20,endIndent: 20,),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Text(
                              'Classic Burger x1',
                              style: FontConstant.lightText.copyWith(fontSize: 15, color: Colors.black54),
                            ),
                          ),
                          Container(
                            child: Text(
                              'S14',
                              style: FontConstant.lightText.copyWith(fontSize: 15,color: Colors.black54,fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      ),
                    ),
                    Divider(height: 10,thickness: 2.0,indent: 20,endIndent: 20,),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Text(
                              'Cheese Chicken Burger x1',
                              style: FontConstant.lightText.copyWith(fontSize: 15, color: Colors.black54),
                            ),
                          ),
                          Container(
                            child: Text(
                              'S17',
                              style: FontConstant.lightText.copyWith(fontSize: 15,color: Colors.black54,fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      ),
                    ),
                    Divider(height: 10,thickness: 2.0,indent: 20,endIndent: 20,),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Text(
                              'Chicken Legs Basket x1',
                              style: FontConstant.lightText.copyWith(fontSize: 15, color: Colors.black54),
                            ),
                          ),
                          Container(
                            child: Text(
                              'S15',
                              style: FontConstant.lightText.copyWith(fontSize: 15,color: Colors.black54,fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      ),
                    ),
                    Divider(height: 10,thickness: 2.0,indent: 20,endIndent: 20,),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Text(
                              'French Fries x1',
                              style: FontConstant.lightText.copyWith(fontSize: 15, color: Colors.black54),
                            ),
                          ),
                          Container(
                            child: Text(
                              'S6',
                              style: FontConstant.lightText.copyWith(fontSize: 15,color: Colors.black54,fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      ),
                    ),

    ],
                ),
              ),
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.fromLTRB(10,0 , 10, 0),
            child: Container(
              width: MediaQuery.of(context).size.width*0.8,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Delivery Instructions',
                        style: FontConstant.lightText.copyWith(fontSize: 15,fontWeight: FontWeight.bold, color: Colors.black54
                        )),
                        GestureDetector(
                          onTap: (){},
                          child: Text('+Add Notes',
                              style: FontConstant.lightText.copyWith(fontSize: 15,fontWeight: FontWeight.bold, color:ThemeColor.primaryRed
                              )),
                        )
                      ],
                    ),
                  ),
                  Divider(height: 30,thickness: 2.0,indent: 20,endIndent: 20,),

                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Container(
              width: MediaQuery.of(context).size.width*0.8,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Sub Total',
                      style: FontConstant.lightText.copyWith(fontSize: 15,fontWeight: FontWeight.bold, color: Colors.black54),

                        ),
                        SizedBox(height: 10,),
                        Text('S68',
                          style: FontConstant.lightText.copyWith(fontSize: 15,fontWeight: FontWeight.bold, color:ThemeColor.primaryRed,)
                          ),
                        ],
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Delivery Cost',
                        style: FontConstant.lightText.copyWith(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black54),),
                           Text('S2',
                              style: FontConstant.lightText.copyWith(fontSize: 15,fontWeight: FontWeight.bold, color:ThemeColor.primaryRed,)
                          ),

                      ],
                    ),
                  ),
                  Divider(height: 20,thickness: 2.0,indent: 20,endIndent: 20,),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Total',
                          style: FontConstant.lightText.copyWith(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black54),),
                        Text('S70',
                            style: FontConstant.lightText.copyWith(fontSize: 25,fontWeight: FontWeight.bold, color:ThemeColor.primaryRed,)
                        ),

                      ],


                    ),
                  ),
                  SizedBox(height: 20,),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                    child:materialButton(context, (){}, 'Checkout')),
                  )
                ],

              ),
            ),
          ),


    ]));


  }
}
