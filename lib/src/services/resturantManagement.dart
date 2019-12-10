import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:drive_thru/src/screens/ResturantList.dart';
import 'package:page_transition/page_transition.dart';

class ResturantManagement{


  addNewResturant(context, restName, restAddres, zipCode, catagory){
    Firestore.instance.collection('/Restaurants').add({
      'Restaurants Name': restName,
      'Restaurants Address' : restAddres,
      'ZIP Code': zipCode,
      'Food Category': catagory,
    }).then((value){
      Navigator.of(context).pop();
      Navigator.pushReplacement(context, PageTransition(type: PageTransitionType.leftToRight, child: ResturantList()));
    }).catchError((e){print(e);});
  }
}