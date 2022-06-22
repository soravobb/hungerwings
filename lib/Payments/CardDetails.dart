import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:get/get.dart';
import 'package:zumfle/constants/constants.dart';
import 'package:zumfle/widgets/widgets.dart';

// class CardDetails extends StatelessWidget {
//   const CardDetails({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body:
//
//           );
//
//   }
// }

cardsDetails(context) {
  showModalBottomSheet(
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
            top: Radius.circular(20)),
      ),
      context: context,
      builder: (context) {
        return
          // return Get.bottomSheet(
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            physics: NeverScrollableScrollPhysics(),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                  height: MediaQuery.of(context).size.height*0.80,
                  color: Colors.white,
                  child: Column(

                    // mainAxisAlignment: MainAxisAlignment.start,
                    // crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Align(
                          alignment: Alignment.topRight,
                          child: Container(
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                      'assets/images/Group 8169.png',
                                    ),
                                  ))),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                              child: Text('Add Credit/Debit Card',
                                  style: FontConstant.normaltext.copyWith(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black)),
                            ),
                          ),
                        ),
                        Divider(height: 30,
                            thickness: 2.0,
                            indent: 20,
                            endIndent: 20),
                        textFormField(context, 'Card Number'),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Expiry',
                                  style: FontConstant.normaltext.copyWith(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black)),
                              Container(
                                height: 50,
                                width: 80,
                                child: textFormField(context, 'MM'),
                              ),
                              Container(
                                height: 50,
                                width: 80,
                                child: textFormField(context, 'YY'),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 20),
                        textFormField(context, 'Security Code'),
                        SizedBox(height: 20),
                        textFormField(context, 'First Name'),
                        SizedBox(height: 20),
                        textFormField(context, 'Last Name'),
                        SizedBox(height: 20),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('You can remove this card\n at anytime',
                                  style: FontConstant.normaltext.copyWith(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black54)),
                            ],
                          ),
                        ),
                        SizedBox(height: 20),
                        Container(
                            child: materialButton(context, () {}, '+  Add Card'))
                      ])),
            ),
          );

      }
  );
}
