

import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zumfle/products/productlist.dart';

class Cuisines extends StatelessWidget {
  const Cuisines({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const cuisine = Cuisine.cuisines;
    return Container(
      height: MediaQuery.of(context).size.height *0.23,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemCount: cuisine.length,
          itemBuilder: (BuildContext context, int index) {
            return Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Container(
                    height: MediaQuery.of(context).size.height*0.15,
                    width: MediaQuery.of(context).size.width*0.30,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(cuisine[index].image),
                        fit: BoxFit.cover,
                      ),
                         borderRadius: BorderRadius.all(Radius.circular(15),
                       ),
                    ),
                ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height *0.02),
                Text(cuisine[index].title,
                  style: TextStyle(
                      fontWeight: FontWeight.w800
                  ),),
              ],
            );
          }),

    );
  }
}
