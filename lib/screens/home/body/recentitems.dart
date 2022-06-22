

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constants/constants.dart';
import '../../../products/productlist.dart';

class RECENTITEMS extends StatelessWidget {
  const RECENTITEMS({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const recentitems = RecentItems.Recentitems;
    return Container(
      height: MediaQuery.of(context).size.height*0.80,
      child: ListView.builder(
        physics: NeverScrollableScrollPhysics(),
          scrollDirection: Axis.vertical,
          itemCount: recentitems.length,
          itemBuilder: (BuildContext context, int index) {
            return Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Container(
                    height: MediaQuery.of(context).size.height*0.15,
                    width: MediaQuery.of(context).size.width*0.30,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(recentitems[index].image),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(20),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(recentitems[index].title,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),),
                      Row(
                        children: [
                          Text('Cafe',
                              style: FontConstant.lightText.copyWith(fontSize: 12)),
                          SizedBox(width: 5),
                          Icon(
                            Icons.circle,
                            color: ThemeColor.primaryRed,
                            size: 4.0,
                          ),
                          SizedBox(width: 8),
                          Text(' Western',
                              style: FontConstant.lightText.copyWith(fontSize: 12)),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                              height: 10,
                              width:10,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                      'assets/images/Path 8560.png',
                                    ),
                                  )
                              )
                          ),
                          SizedBox(width: 5),
                          Text(' 4.9  ',
                            style:FontConstant.lightText.copyWith(fontSize: 13,color: ThemeColor.primaryRed),
                          ),
                          Text('(124 ratings) ',
                              style: FontConstant.lightText.copyWith(fontSize: 13)),
                        ],
                      )

                    ],
                  ),
                ),

              ],
            );
          }),

    );
  }
}

