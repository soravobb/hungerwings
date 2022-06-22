import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:zumfle/MyOrder.dart';
import 'package:zumfle/products/Desserts.dart';

import '../constants/constants.dart';

class Menu extends StatelessWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Text('Menu', style:FontConstant.normaltext.copyWith(fontSize: 25,fontWeight: FontWeight.bold,color:ThemeColor.primaryRed)),
        actions: [
          GestureDetector(
            onTap: () {},
            child: GestureDetector(
              onTap: () {
                Get.to(() =>  MyOrder());
              },
              child: Icon(
                Icons.shopping_cart_rounded,
                size: 25.0,
              ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20,20,20,0),
                child: Center(
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: const OutlineInputBorder(
                        borderRadius: const BorderRadius.all(
                          const Radius.circular(30.0),
                        ),
                      ),
                      prefixIcon: Icon(Icons.search,size: 30,),
                      labelText : 'Search Food',
                    ),

                  ),
                ),
              ),
              Container(
                height: 650,
                child: Stack(
                  children: [
                    Positioned(
                        top: 20,
                        left: 0,
                        child: Image.asset('assets/images/Side bar orange.png'),
                        height: 600),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Column(
                        children: [
                          SizedBox(height: 80),
                          Stack(
                            children: [
                              Center(
                                child: GestureDetector(
                                  onTap: () {
                                    Get.to(() =>  Desserts());
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black12,
                                          blurRadius: 20.0,
                                        ), //BoxShadow
                                      ],
                                      color: Colors.white,
                                      borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(10.0),
                                          bottomRight: Radius.circular(10.0),
                                          topLeft: Radius.circular(30.0),
                                          bottomLeft: Radius.circular(30.0)


                                      ),
                                    ),
                                    width: MediaQuery.of(context).size.width*0.7,
                                    height: 100,
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 80,vertical: 30),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,

                                        children: [
                                          Text('Food',style: FontConstant.normaltext.copyWith(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.black),),
                                          Text('120 items')
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(child:Image.asset('assets/images/b.png',height: 100,width: 100,),
                                top:0,left: 0,),
                              Positioned(child: Icon(Icons.circle,color: Colors.white,size: 40,
                                //shadows: [
                                //Shadow(color: Colors.black12,blurRadius: 10.0)
                                //],
                              ),
                                top:35,right: 30,),
                              Positioned(child: Image.asset('assets/images/roup 6836.png',height: 20,width: 20,),
                                top:45,right:40,)
                            ],
                          ),
                          SizedBox(height: 30),
                          Stack(
                            children: [
                              Center(
                                child: Container(
                                  decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black12,
                                        blurRadius: 20.0,
                                      ), //BoxShadow
                                    ],
                                    color: Colors.white,
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(10.0),
                                        bottomRight: Radius.circular(10.0),
                                        topLeft: Radius.circular(30.0),
                                        bottomLeft: Radius.circular(30.0)


                                    ),
                                  ),
                                  width: MediaQuery.of(context).size.width*0.7,
                                  height: 100,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 80,vertical: 30),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,

                                      children: [
                                        Text('Beverages',style: FontConstant.normaltext.copyWith(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.black),),
                                        Text('220 items')
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(child:Image.asset('assets/images/a.png',height: 100,width: 100,),
                                top:0,left: 0,),
                              Positioned(child: Icon(Icons.circle,color: Colors.white,size: 40,
                                //shadows: [
                                // Shadow(color: Colors.black12,blurRadius: 10.0)
                                //]
                              ),
                                top:35,right: 30,),
                              Positioned(child: Image.asset('assets/images/roup 6836.png',height: 20,width: 20,),
                                top:45,right:40,)
                            ],
                          ),
                          SizedBox(height: 30),
                          GestureDetector(
                            onTap: () {
                              Get.to(() => Desserts());
                            } ,
                            child: Stack(
                              children: [
                                Center(
                                  child: Container(
                                    decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black12,
                                          blurRadius: 20.0,
                                        ), //BoxShadow
                                      ],
                                      color: Colors.white,
                                      borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(10.0),
                                          bottomRight: Radius.circular(10.0),
                                          topLeft: Radius.circular(30.0),
                                          bottomLeft: Radius.circular(30.0)


                                      ),
                                    ),
                                    width: MediaQuery.of(context).size.width*0.7,
                                    height: 100,
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 80,vertical: 30),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,

                                        children: [
                                          Text('Desserts',style: FontConstant.normaltext.copyWith(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.black),),
                                          Text('155 items')
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(child:Image.asset('assets/images/Group 6844.png',height: 100,width: 100,),
                                  top:0,left: 0,),

                                Positioned(child: Icon(Icons.circle,color: Colors.white,size: 40,
                                  //shadows: [
                                  // Shadow(color: Colors.black12,blurRadius: 10.0)
                                  // ]
                                ),
                                  top:35,right: 30,),
                                Positioned(child: Image.asset('assets/images/roup 6836.png',height: 20,width: 20,),
                                  top:45,right:40,)
                              ],
                            ),
                          ),
                          SizedBox(height: 30),
                          Stack(
                            children: [
                              Center(
                                child: Container(
                                  decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black12,
                                        blurRadius: 20.0,
                                      ), //BoxShadow
                                    ],
                                    color: Colors.white,
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(10.0),
                                        bottomRight: Radius.circular(10.0),
                                        topLeft: Radius.circular(30.0),
                                        bottomLeft: Radius.circular(30.0)


                                    ),
                                  ),

                                  width: MediaQuery.of(context).size.width*0.7,
                                  height: 100,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 80,vertical: 30),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,

                                      children: [
                                        Text('Promotions',style: FontConstant.normaltext.copyWith(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.black),),
                                        Text('25 items')
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(child:Image.asset('assets/images/Group 6845.png',height: 100,width: 100,),
                                top:0,left: 0,),

                              Positioned(child: Icon(Icons.circle,color: Colors.white,size: 40,
                                //shadows: [
                                // Shadow(color: Colors.black12,blurRadius: 10.0)
                                //]
                              ),
                                top:35,right: 30,),
                              Positioned(child: Image.asset('assets/images/roup 6836.png',height: 20,width: 20,),
                                top:45,right:40,)
                            ],
                          ),

                        ],
                      ),
                    )

                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
