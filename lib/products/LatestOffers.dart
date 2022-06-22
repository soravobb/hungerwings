import 'package:flutter/material.dart';
import 'package:zumfle/widgets/widgets.dart';

import '../constants/constants.dart';

class LatestOffers extends StatelessWidget {
  const LatestOffers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Text('Latest Offers', style:FontConstant.normaltext.copyWith(fontSize: 25,fontWeight: FontWeight.bold,color:ThemeColor.primaryRed)),
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
      body: ListView (
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start ,
                children: [
                  Text('Find discounts,Offers special\n meals and more!',
                    style: FontConstant.lightText.copyWith(fontSize: 15),),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        width: MediaQuery.of(context).size.width*0.4,
                        height: MediaQuery.of(context).size.height*0.05,
                        child: materialButton(context, (){}, 'Check Offers'),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: 20),
          Container(
              height: MediaQuery.of(context).size.height*0.32,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/images/1654685127836.jpg',
                    ),
                  )
              )
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(left:20),
            child: Container(
              width: MediaQuery.of(context).size.width*0.8,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text('Cafe de Noires',
                        style:FontConstant.normaltext.copyWith(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black)),
                  ),
                  SizedBox(height: 10,),
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
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: 20),
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
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Container(
              width: MediaQuery.of(context).size.width*0.8,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text('Isso',
                        style:FontConstant.normaltext.copyWith(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black)),
                  ),
                  SizedBox(height: 10,),
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
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: 20),
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
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Container(
              width: MediaQuery.of(context).size.width*0.8,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text('Cafe Beans',
                        style:FontConstant.normaltext.copyWith(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black)),
                  ),
                  SizedBox(height: 10),
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
                  SizedBox(height: 20),
                ],
              ),
            ),
          )
        ],
      ),
      );
  }
}
