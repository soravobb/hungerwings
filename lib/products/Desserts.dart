import 'package:flutter/material.dart';

import '../constants/constants.dart';

class Desserts extends StatelessWidget {
  const Desserts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title:Text('Desserts',style:FontConstant.normaltext.copyWith(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black)),
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
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
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
          SizedBox(height: 20),

        ],
      ),

    );
  }
}
