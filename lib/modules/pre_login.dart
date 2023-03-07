import 'package:flutter/material.dart';
import 'package:project/modules/registration_1.dart';
import 'package:project/shared/components/components.dart';
import 'package:project/shared/styles/app_theme.dart';

class PreLogin extends StatelessWidget {
  static const String routeName = "prelogin";
  List<Widget> containerItem = [
    defaultPreLoginContaienr(
        imagePath: "assets/images/registration1.jpeg",
        title: "Owner's account",
        description: "Lorem ipsum dolor sit amet, consectetur"),
    defaultPreLoginContaienr(
        imagePath: "assets/images/Interested's account.png",
        title: "Interested's account",
        description: "Lorem ipsum dolor sit amet, consectetur"),
    defaultPreLoginContaienr(
        imagePath: "assets/images/bankname.png",
        title: "Bank name",
        description: "Lorem ipsum dolor sit amet, consectetur"),
    defaultPreLoginContaienr(
        imagePath: "assets/images/companyname.png",
        title: "Company name",
        description: "Lorem ipsum dolor sit amet, consectetur"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          ListView.builder(
            shrinkWrap: true,
            itemBuilder: (context, index) => containerItem[index],
            itemCount: containerItem.length,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 20,
          ),
          defaultButton(
              function: () {
                Navigator.pushNamed(context, Registration1.routeName);
              },
              text: "Register Now",
              background: AppTheme.primaryColor),
        ],
      ),
    );
  }
}
