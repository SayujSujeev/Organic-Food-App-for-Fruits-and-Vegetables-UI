import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:organic_food_app/constants/constants.dart';
import 'package:organic_food_app/data/data.dart';
import 'package:organic_food_app/models/fruits_and_vegs.dart';

class DailyFresh extends StatelessWidget {
  Widget _buildDailyFresh(BuildContext context, int index) {
    Size size = MediaQuery.of(context).size;
    FruitsAndVegs fruitsAndVegs = dailyFreshList[index];

    return Stack(
      children: [
        Padding(
          padding: EdgeInsets.only(
            left: appPadding,
            right: appPadding / 2,
            bottom: appPadding,
          ),
          child: Container(
            width: size.width * 0.55,
            decoration: BoxDecoration(
              color: white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: black.withOpacity(0.2),
                  offset: Offset(5, 5),
                  blurRadius: 10,
                )
              ],
            ),
            child: Padding(
              padding: EdgeInsets.all(appPadding / 2),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image(
                    height: size.height * 0.23,
                    fit: BoxFit.contain,
                    image: AssetImage(
                      fruitsAndVegs.imageUrl,
                    ),
                  ),
                  Text(
                    fruitsAndVegs.name,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    fruitsAndVegs.description,
                    style: TextStyle(
                      fontWeight: FontWeight.w300,
                      fontSize: 12,
                    ),
                  ),
                  Text(
                    '\$ ${fruitsAndVegs.price.toStringAsFixed(2)}',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          right: appPadding * 2,
          bottom: appPadding / 2,
          child: Container(
            decoration: BoxDecoration(
                color: white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: black.withOpacity(0.5),
                    offset: Offset(3, 3),
                    blurRadius: 3,
                  )
                ]),
            padding: EdgeInsets.symmetric(
              vertical: appPadding / 4,
              horizontal: appPadding / 1.5,
            ),
            child: Row(
              children: [
                Icon(Icons.favorite_rounded,),
                Text('Save'),
              ],
            ),
          ),
        )
      ],
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
            itemCount: dailyFreshList.length,
            itemBuilder: (context, index) {
              return _buildDailyFresh(context, index);
            },
          ),
        )
      ],
    );
  }
}
