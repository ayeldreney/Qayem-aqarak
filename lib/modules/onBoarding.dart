import 'package:flutter/material.dart';
import 'package:project/modules/pre_login.dart';
import 'package:project/shared/styles/app_theme.dart';

import '../shared/components/components.dart';

class OnBoardingScreen extends StatelessWidget {
  static const String routeName = "onboarding";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.onBoardingBackGroundColor,
      appBar: AppBar(
        backgroundColor: AppTheme.onBoardingBackGroundColor,
      ),
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              itemBuilder: (context, index) => onBoardingItem(),
              itemCount: 1,
            ),
          )
        ],
      ),
    );
  }

  Widget onBoardingItem() => Builder(builder: (context) {
        return Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height / 6,
            ),
            Image(
              width: 402.16,
              height: 284.54,
              image: AssetImage('assets/images/onboarding.png'),
            ),
            Text(
              "Let's Start",
              style: TextStyle(
                fontFamily: "Poppin",
                fontSize: 30,
                color: AppTheme.primaryColor,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              width: 300,
              child: Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor",
                style: TextStyle(
                  fontSize: 14,
                  color: AppTheme.primaryColor,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            defaultButton(
                function: () {
                  Navigator.pushNamed(context, PreLogin.routeName);
                },
                text: "Get Started",
                background: AppTheme.primaryColor,
                fontSize: 16),
          ],
        );
      });
}
