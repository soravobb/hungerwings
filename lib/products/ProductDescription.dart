import 'package:flutter/material.dart';
import 'package:zumfle/constants/constants.dart';
import 'package:zumfle/widgets/widgets.dart';

class ProductDescription extends StatelessWidget {
  const ProductDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        children: [
          Stack(
            children: [
              Column(
                children: [
                  Container(
                  height: MediaQuery.of(context).size.height*0.3,
                  width: MediaQuery.of(context).size.width,
                  child: Image.asset('assets/images/pizza2.jpg',width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height,fit:BoxFit.fill),
            ),
                ],
              ),
              Positioned(child: Icon(Icons.shopping_cart_sharp,size: 30,color:Colors.white),
                height: 20,
                width: 20,
                top: 20,
                right: 20,),
              Positioned(child: Icon(Icons.arrow_back_ios,size: 30,color:Colors.white ),
              height: 20,
              width: 20,
              top: 20,
              left: 20,),
              Positioned(child:Icon(Icons.circle,size: 80,color: Colors.white,),
              height: 40,
              width: 40,
              top:170,
              right: 50,),
              Positioned(child:Image.asset('assets/images/heart.png'),
              height: 30,
              width: 30,
              top: 195,
              right:35),
    ]
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                height:MediaQuery.of(context).size.height*0.7,
                width: MediaQuery.of(context).size.width,
                child: ListView(
                  physics: ScrollPhysics(),
                  shrinkWrap: true,
                  // mainAxisAlignment: MainAxisAlignment.start,
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Tandoori Chicken Pizza',style: FontConstant.normaltext.copyWith(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black),),
                    SizedBox(height: 5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset('assets/images/Path 8560.png',height: 20,width: 20),
                        SizedBox(width: 5),
                        Image.asset('assets/images/Path 8560.png',height: 20,width: 20),
                        SizedBox(width: 5),
                        Image.asset('assets/images/Path 8560.png',height: 20,width: 20),
                        SizedBox(width: 5),
                        Image.asset('assets/images/Path 8560.png',height: 20,width: 20),
                        SizedBox(width: 5),
                        Image.asset('assets/images/star.png',height: 20,width: 20)
                      ],
                    ),
                    SizedBox(height: 3),
                    Text('4 Star Ratings',style: FontConstant.lightText.copyWith(color:ThemeColor.primaryRed),),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [

                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text('Rs. 750',style:FontConstant.normaltext.copyWith(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.black) ),
                            Text('  /per Portion',style:FontConstant.lightText.copyWith(fontSize: 12) )
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: 5),
                    Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Description',
                              style: FontConstant.normaltext.copyWith(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black)),
                          SizedBox(height: 5,),
                          Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit.\n Ornare leo non mollis id cursus.Eu euismod faucibus in \nleo malesuada',
                            style: FontConstant.lightText.copyWith(fontSize: 12,color: Colors.black),),
                          Divider(height: 20,indent: 20,endIndent: 20,thickness: 2.0,),
                          Column(
                            children: [
                              Text('Customize your order',  style: FontConstant.normaltext.copyWith(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black)),
                            ],
                          ),
                          SizedBox(height: 10,),
                          Center(
                            child: Container(
                              color: Colors.grey[200],
                              height: 50,
                              width: MediaQuery.of(context).size.width*0.8,
                              child: DropdownButtonHideUnderline(
                                  child:Center(child: Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 20),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Text('-Select the size of the Portion-'),
                                        Image.asset('assets/images/dropbutton.png')
                                      ],
                                    ),
                                  ),
                                  )
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          Center(
                            child: Container(
                              color: Colors.grey[200],
                              height: 50,
                              width: MediaQuery.of(context).size.width*0.8,
                              child: DropdownButtonHideUnderline(
                                  child:Center(child: Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 20),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Text('-Select the ingredients-'),
                                        Image.asset('assets/images/dropbutton.png')
                                      ],
                                    ),
                                  ))

                              ),
                            ),
                          ),

                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Number of Portions',  style: FontConstant.normaltext.copyWith(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black)),
                        Padding(
                          padding: const EdgeInsets.only(right: 10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                width:40,
                                height: 20,
                                child: materialButton(context,(){} , '-'),
                              ),
                              SizedBox(width: 10,),
                              Container(
                                width:40,
                                height: 20,
                                child: materialButton2(context,(){} , '2'),
                              ),
                              SizedBox(width: 10,),
                              Container(
                                width:40,
                                height: 20,
                                child: materialButton(context,(){} , '+'),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height *0.03),
                  Stack(
                    children: [
                      Container(height: 150,
                        width: 120,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(40.0),
                            bottomRight: Radius.circular(40.0),
                          ),
                          image: DecorationImage(
                            image: AssetImage("assets/images/Side bar orange.png"),
                            fit: BoxFit.cover,

                          ),
                        ),
                      ),
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Stack(
                            children: [
                              Container(
                                width: 300,
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
                                height: 110,
                              ),
Positioned(
  top: 25,
  left:100,

  child:   Column(
    children: [
      Text('Total Price',  style: FontConstant.lightText.copyWith(fontSize: 10,color: Color(0xff7e807f),)
      ),
      Text('LKR 1500',  style: FontConstant.normaltext.copyWith(fontSize: 20,fontWeight: FontWeight.w900,color: Colors.black,)
      ),],
  ),
),
                                     Positioned(
                                       top: 70,
                                       left:70,
                                       child: Container(
                                   width: MediaQuery.of(context).size.width*0.4,
      height: MediaQuery.of(context).size.height*0.04,
      child: materialButton(context, (){}, 'Check Offers',
          ),
      ),
                                     ),

                            ]
                          ),
                        ),
                      ),
                      Positioned(
                        top: 45,
                        right: 10,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            shape: BoxShape.circle,
                            boxShadow: [BoxShadow(blurRadius: 1, color: Colors.grey, )],),
                          child: CircleAvatar(
                            radius: 30,
                            child: Icon(Icons.shopping_cart_rounded,color: Color(0xffcd2026),
                              size: 30  ,),
                            backgroundColor: Colors.white,
                          ),
                        ),
                      ),
                    ]
                  ),
                    SizedBox(height: MediaQuery.of(context).size.height *0.03),
                ],
              )
             ),
            ),
          ),
        ],
      ),
    );
  }
}



