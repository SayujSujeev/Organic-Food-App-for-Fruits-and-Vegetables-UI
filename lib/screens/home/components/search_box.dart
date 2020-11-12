import 'package:flutter/material.dart';
import 'package:organic_food_app/constants/constants.dart';

class SearchBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: appPadding,
        right: appPadding,
        top: appPadding * 1.5,
      ),
      child: Material(
        elevation: 10.0,
        color: white,
        borderRadius: BorderRadius.circular(10.0),
        child: TextField(
          decoration: InputDecoration(
              border: OutlineInputBorder(borderSide: BorderSide.none),
              contentPadding: EdgeInsets.symmetric(
                vertical: appPadding * 0.75,
                horizontal: appPadding,
              ),
              fillColor: white,
              hintText: 'Search here....',
              suffixIcon: Icon(
                Icons.search_rounded,
                size: 25,
                color: green,
              )),
        ),
      ),
    );
  }
}
