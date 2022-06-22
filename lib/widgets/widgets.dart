import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../constants/constants.dart';

materialButton(context, onpressed, txt) {
  return MaterialButton(
    onPressed: onpressed,
    enableFeedback: true,
    shape:  RoundedRectangleBorder(
        side: BorderSide(color: ThemeColor.primaryRed, width: 1.0),
        borderRadius: BorderRadius.all(Radius.circular(30))),
    height: 50.0,
    minWidth: MediaQuery.of(context).size.width *0.80,
    elevation: 0.5,
    color: ThemeColor.primaryRed,
    child: Text(
      txt,
      style: FontConstant.normaltext.copyWith(
          color: Colors.white, fontSize: 15.0, fontWeight: FontWeight.w700),
      textAlign: TextAlign.center,
    ),
  );
}
materialButton2(context, onpressed, txt) {
  return MaterialButton(
    onPressed: onpressed,
    enableFeedback: true,
    shape:  RoundedRectangleBorder(
        side: BorderSide(color: ThemeColor.secondaryRed, width: 1.0),
        borderRadius: BorderRadius.all(Radius.circular(30))),
    height: 50.0,
    minWidth: MediaQuery.of(context).size.width *0.80,
    elevation: 0.5,
    color: Colors.white,
    child: Text(
      txt,
      style: FontConstant.normaltext.copyWith(
          color: Color(0xff911a1c), fontSize: 15.0, fontWeight: FontWeight.w700),
      textAlign: TextAlign.center,
    ),
  );
}
CreateAccountText(txt, s) {
  return Text(
    txt,
    style: s,
  );
}

CreateAccountButton(w, col, col1, col2, txt, s, ontap, ) {
  return MaterialButton(
    onPressed: ontap,
    enableFeedback: true,
    shape: RoundedRectangleBorder(
        side: BorderSide(color: col1, width: 1.0),
        borderRadius: BorderRadius.all(const Radius.circular(30))),
    height: 50.0,
    minWidth: w,
    elevation: 0.5,
    color: col,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [

        CreateAccountText(txt, s)
      ],
    ),
  );
}


textFormField (context,txt) {
  return Container(
    width: MediaQuery.of(context).size.width *0.80,
    child: TextFormField(
        decoration: InputDecoration(
        contentPadding: EdgeInsets.all(14.0),
    enabledBorder: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(30.0)),
    borderSide: BorderSide(color: Colors.grey.shade100, width: 4.0)),
    disabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.grey.shade100, width: 4.0),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(30.0)),
    borderSide: BorderSide(color: Colors.grey.shade100, width: 4.0),
    ),
    isDense: true,
    hintText: txt,
    filled: true,
    fillColor: Colors.grey.shade100,
    hintStyle:
    FontConstant.normaltext.copyWith(color: Colors.grey, fontSize: 13.0),
    ),
    ),
  );
}

otpBox (context,num) {
  return Container(
    width: MediaQuery.of(context).size.width *0.13,
    child: TextFormField(
      textAlign: TextAlign.center,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(14.0),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            borderSide: BorderSide(color: Colors.grey.shade100, width: 4.0)),
        disabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey.shade100, width: 4.0),
        ),
        isDense: true,
        hintText: num,
        filled: true,
        fillColor: Colors.grey.shade100,
        hintStyle:
        FontConstant.normaltext.copyWith(color: Colors.grey, fontSize: 13.0),
      ),
        keyboardType: TextInputType.number,
        inputFormatters: <TextInputFormatter>[
    FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
  ],
    ),
  );
}

searchfield (context, txt) {
  return Container(
    width: MediaQuery.of(context).size.width *0.80,
    child: TextFormField(
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(14.0),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(30.0)),
            borderSide: BorderSide(color: Colors.grey.shade200, width: 4.0)),
        disabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey.shade200, width: 4.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(30.0)),
          borderSide: BorderSide(color: Colors.grey.shade200, width: 4.0),
        ),
        isDense: true,
        prefixIcon: Icon(Icons.search),
        hintText: txt,
        filled: true,
        fillColor: Colors.grey.shade200,
        hintStyle:
        FontConstant.normaltext.copyWith(color: Colors.grey, fontSize: 13.0),
      ),
    ),
  );
}
