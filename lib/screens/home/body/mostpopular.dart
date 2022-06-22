import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constants/constants.dart';
import '../../../products/productlist.dart';

class MOSTPOPULAR extends StatelessWidget {
  const MOSTPOPULAR ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const mostpopular = MostPopular.Mostpopular;
    return Container(
      height: MediaQuery.of(context).size.height *0.30,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemCount: mostpopular.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      height: MediaQuery.of(context).size.height*0.17,
                      width: MediaQuery.of(context).size.width*0.50,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              mostpopular[index].image,),
                            fit: BoxFit.cover,
                          ),
                        borderRadius: BorderRadius.all(Radius.circular(10),
                      ),
                  ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text('Minute by tuk tuk',
                              style:FontConstant.normaltext.copyWith(fontSize: 13,fontWeight: FontWeight.bold,color: Colors.black)),
                        ),
                        Column(crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text('Cafe',
                                    style: FontConstant.lightText.copyWith(fontSize: 15)),
                                SizedBox(width: 5),
                                Icon(
                                  Icons.circle,
                                  color: ThemeColor.primaryRed,
                                  size: 4.0,
                                ),
                                SizedBox(width: 8),
                                Text(' Western',
                                    style: FontConstant.lightText.copyWith(fontSize: 12)),
                                SizedBox(width: 8),
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
                                  style:FontConstant.lightText.copyWith(fontSize: 10,color: ThemeColor.primaryRed),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          }
          ),
    );
  }
}
