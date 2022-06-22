

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zumfle/products/productlist.dart';

import '../../../constants/constants.dart';

class PopularRestaurent extends StatelessWidget {
  const PopularRestaurent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const popularrestaurants = PopularRestaurants.Popularrestaurants;
    return ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: popularrestaurants.length,
        itemBuilder: (BuildContext context, int index) {
          return
            Container(
                height: MediaQuery.of(context).size.height *0.32,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        popularrestaurants[index].image,
                      ),
                    )
                )
            );
        }
    );
  }
}
