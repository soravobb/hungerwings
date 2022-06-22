

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:zumfle/products/LatestOffers.dart';
import 'package:zumfle/products/menu.dart';
// import 'package:zumfle/products/menu.dart';
import 'package:zumfle/screens/home/home.dart';
import 'package:zumfle/screens/onboard/more.dart';
import 'package:zumfle/screens/profile/profile.dart';

class Bottombar extends StatefulWidget {
  const Bottombar({Key? key}) : super(key: key);

  @override
  State<Bottombar> createState() => _BottombarState();
}

class _BottombarState extends State<Bottombar> {

  int  currentTab = 0;
  final List<Widget> screens = [
    Home(),
    Menu(),
    LatestOffers(),
    profile(),
    more(),
  ];
  
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = Home();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset:false,

      body: PageStorage(
        child: currentScreen,
        bucket: bucket,
      ),
      floatingActionButton: Visibility( visible: MediaQuery.of(context).viewInsets.bottom == 0.0,
        child: FloatingActionButton(


          backgroundColor: currentTab ==0 ? Colors.red: Colors.grey,
            child: Icon(Icons.home,
            color: Colors.white ),
            onPressed: () {
              setState(() {
                currentScreen = Home();
                currentTab = 0;


              });

            }
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 20,
        child: Container(
          height: 70,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  MaterialButton(
                      minWidth:40,
                      onPressed: () {
                        setState(() {
                          currentScreen = Menu();
                          currentTab = 4;

                        });
                      },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/images/Group 6847.png",

                      height: 20,
                      width: 20,
                        color: currentTab ==4 ? Colors.red : Colors.grey,),
                      SizedBox(height: 5,),
                      Text("Menu",
                      style: TextStyle(color: currentTab == 4 ?  Colors.red : Colors.grey,
                      fontSize: 10))
                    ],
                  ),),
                  SizedBox(width: 18,),
                  MaterialButton(
                    minWidth:40,
                    onPressed: () {
                      setState(() {
                        currentScreen = LatestOffers();
                        currentTab = 1;

                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/images/0102shoppingbag.png",
                          color: currentTab ==1 ? Colors.red : Colors.grey,
                        height: 20,
                        width: 20,),
                        SizedBox(height: 5,),
                        Text("Offers",
                            style: TextStyle(color: currentTab == 1 ?  Colors.red : Colors.grey,
                                fontSize: 10)),


                      ],
                    ),),
                ],
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    minWidth:40,
                    onPressed: () {
                      setState(() {
                        currentScreen = profile();
                        currentTab = 2;

                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/images/manuser.png",
                          color: currentTab ==2 ? Colors.red : Colors.grey,
                          height: 20,
                          width: 20,),

                        Text("Profile",
                            style: TextStyle(color: currentTab == 2 ?  Colors.red : Colors.grey,
                                fontSize: 10))
                      ],
                    ),),
                  SizedBox(width: 18,),
                  MaterialButton(
                    minWidth:40,
                    onPressed: () {
                      setState(() {
                        currentScreen = more();
                        currentTab = 3;

                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/images/Group 6814.png",
                          color: currentTab ==3 ? Colors.red : Colors.grey,
                          height: 20,
                          width: 20,),
                        Text("More",
                            style: TextStyle(color: currentTab == 3?  Colors.red  : Colors.grey,
                            fontSize: 10))
                      ],
                    ),),
                ],
              ),
            ],
          ),
        ),
      ),

    );
  }
}
