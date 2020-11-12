import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:organic_food_app/constants/constants.dart';
import 'package:organic_food_app/data/data.dart';
import 'package:organic_food_app/models/fruits_and_vegs.dart';

class FreshFruits extends StatelessWidget {
  Widget _buildFreshFruits(BuildContext context, int index) {
    Size size = MediaQuery.of(context).size;
    FruitsAndVegs fruitsAndVegs = freshFruitsList[index];

    return Padding(
      padding: EdgeInsets.only(left: appPadding),
      child: Container(
        width: size.width * 0.3,
        child: Column(
          children: [
            Image(
              height: size.height * 0.13,
              fit: BoxFit.fitWidth,
              image: AssetImage(fruitsAndVegs.imageUrl),
            ),
            Text(fruitsAndVegs.name,style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w300
            ),)
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.all(appPadding),
          child: Text(
            'Daily Fresh',
            style: TextStyle(
                fontSize: 24, letterSpacing: 1, fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          height: size.height * 0.4,
          child: ListView.builder(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: freshFruitsList.length,
            itemBuilder: (context, index) {
              return _buildFreshFruits(context, index);
            },
          ),
        )
      ],
    );
  }
}
