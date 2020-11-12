import 'package:flutter/material.dart';
import 'package:organic_food_app/constants/constants.dart';
import 'package:organic_food_app/screens/sign_in/components/background_image.dart';
import 'package:organic_food_app/screens/sign_in/components/signin_buttons.dart';
import 'package:organic_food_app/screens/sign_in/components/signin_text_fields.dart';

class SignInScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BackgroundImage(),
            Center(
              child: Text('Organic',style: TextStyle(
                color: green,
                fontSize: 48,
                fontWeight: FontWeight.bold,
              ),),
            ),
            SignInTextFields(),
            SignInButtons(),
          ],
        ),
      ),
    );
  }
}
