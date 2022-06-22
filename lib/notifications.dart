import 'package:flutter/material.dart';

import 'constants/constants.dart';

class notifications extends StatelessWidget {
  const notifications({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title:Text('Notifications',style:FontConstant.normaltext.copyWith(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black)),
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
      body:Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: <Widget>[
                    SizedBox(height: 10,
                      child: const DecoratedBox(
                        decoration: const BoxDecoration(
                            color: Colors.white70
                        ),
                      ),),
                    Container(
                      child: Icon(
                        Icons.circle,
                        size: 10,
                        color: ThemeColor.primaryRed,
                      ),
                    ),
                    SizedBox(width: 20),
                    RichText(
                      text: TextSpan(
                          text:'Your orders has been picked up\n',
                        style: FontConstant.normaltext.copyWith(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black),
                        children: [
                          TextSpan(
                            text: "Now",
                            style: FontConstant.normaltext.copyWith(fontSize: 15,color: Colors.black )
                          )
                        ]
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 5,
              child: const DecoratedBox(
                decoration: const BoxDecoration(
                    color: Colors.white70
                ),
              ),),
            SizedBox(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: <Widget>[
                    SizedBox(height: 10),
                    Container(
                      child: Icon(
                        Icons.circle,
                        size: 10,
                        color: ThemeColor.primaryRed,
                      ),
                    ),
                    SizedBox(width: 20),
                    RichText(
                      text: TextSpan(
                          text:'Your orders has been ordered\n',
                          style: FontConstant.normaltext.copyWith(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black),
                          children: [
                            TextSpan(
                                text: "1 h ago",
                                style: FontConstant.normaltext.copyWith(fontSize: 15,color: Colors.black )
                            )
                          ]
                      ),
                    )
                  ],
                ),
              ),
            ),

            SizedBox(height: 5,
              child: const DecoratedBox(
                decoration: const BoxDecoration(
                    color: Colors.white70
                ),
              ),),
            SizedBox(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: <Widget>[
                    SizedBox(height: 10),
                    Container(
                      child: Icon(
                        Icons.circle,
                        size: 10,
                        color: ThemeColor.primaryRed,
                      ),
                    ),
                    SizedBox(width: 20),
                    RichText(
                      text: TextSpan(
                          text:'Lorem ipsum dolor sit amet, consectetur\n',
                          style: FontConstant.normaltext.copyWith(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black),
                          children: [
                            TextSpan(
                                text: "3 h ago",
                                style: FontConstant.normaltext.copyWith(fontSize: 15,color: Colors.black )
                            )
                          ]
                      ),
                    )
                  ],
                ),
              ),
            ),

          ],
        ),
      )
    );
  }
}
