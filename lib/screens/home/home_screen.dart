import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:organic_food_app/constants/constants.dart';
import 'package:organic_food_app/screens/home/components/daily_fresh.dart';
import 'package:organic_food_app/screens/home/components/fresh_fruits.dart';
import 'package:organic_food_app/screens/home/components/search_box.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        leading: Padding(
          padding: EdgeInsets.only(left: appPadding / 2),
          child: Icon(
            Icons.short_text_rounded,
            color: black,
            size: 30,
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: appPadding),
            child: Icon(Icons.logout,color: black,),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SearchBox(),
            DailyFresh(),
            FreshFruits(),
          ],
        ),
      ),
    );
  }
}
