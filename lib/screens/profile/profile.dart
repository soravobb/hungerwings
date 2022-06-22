import 'package:flutter/material.dart';
import 'package:zumfle/constants/constants.dart';
import 'package:zumfle/widgets/widgets.dart';

class profile extends StatelessWidget {
  const profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          automaticallyImplyLeading: false,
          title: Text('Profile', style:FontConstant.normaltext.copyWith(fontSize: 25,fontWeight: FontWeight.bold,color:ThemeColor.primaryRed)),
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
        body: ListView(
          children: [
            Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        child: CircleAvatar(
                          backgroundImage: AssetImage("assets/images/girl.jpg"),
                          radius: 40,
                        ),
                      ),
                      SizedBox(height: 5,),
                      GestureDetector(
                        onTap: (){},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              child:Icon(
                                Icons.edit,
                                color: ThemeColor.primaryRed,
                                size: 12,
                              )
                            ),
                            Text('Edit Profile',style: FontConstant.lightText.copyWith(fontSize: 12,color: ThemeColor.primaryRed),)

                          ],
                        )
                      ),
                      SizedBox(height: 5),
                      Container(
                        child: Text('Hi there Emilia!',style: FontConstant.normaltext.copyWith(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
                      ),
                      SizedBox(height: 5),
                      GestureDetector(
                        onTap: (){},
                        child: Text('Sign Out',style: FontConstant.lightText.copyWith(fontSize: 12)),
                      ),
                      SizedBox(height: 20,),
                      textFormField(context,'Name'),
                      SizedBox(height: 20),
                      textFormField(context, 'Email'),
                      SizedBox(height: 20),
                      textFormField(context, 'Mobile no.'),
                      SizedBox(height: 20,),
                      textFormField(context, 'Address'),
                      SizedBox(height: 20),
                      textFormField(context,'Password'),
                      SizedBox(height: 20),
                      textFormField(context, 'Confirm Password'),
                      SizedBox(height:20),
                      materialButton(context, (){}, 'Save')

                    ]
                )
            ),
          ],
        )

    );
  }
}


