import 'package:flutter/material.dart';
import 'package:zumfle/constants/constants.dart';

class about_us extends StatelessWidget {
  const about_us({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
          title:Text('About Us',style:FontConstant.normaltext.copyWith(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black)),
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
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(width:20,height: 20),
            Container(
              child: Icon(
                Icons.circle,
                size: 10,
                color: ThemeColor.primaryRed,
              ),
            ),
            SizedBox(width:20),
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width*0.7,
              child: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
              style: FontConstant.normaltext.copyWith(fontSize: 13,color: Colors.black),),
            )
          ],
        ),
      )
    );
  }
}
