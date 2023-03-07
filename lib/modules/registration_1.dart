import 'package:flutter/material.dart';
import 'package:project/modules/registration_2.dart';
import 'package:project/shared/components/components.dart';
import 'package:project/shared/styles/app_theme.dart';

class Registration1 extends StatelessWidget {
  static const String routeName = "registration1";
  final TextEditingController fullNameController = TextEditingController();
  final TextEditingController nationalIDController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneNumberController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.blue[900]),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              child: Column(
                children: [
                  Image(
                    width: 222.88,
                    height: 162.02,
                    image: AssetImage('assets/images/registration1.jpeg'),
                  ),
                  Text(
                    "Register as an owner",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: AppTheme.primaryColor,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
            Form(
              key: formKey,
              child: Column(
                children: [
                  defaultTextFormField(
                      controller: fullNameController,
                      text: "Enter your name...",
                      iconData: Icons.person,
                      title: "Full Name"),
                  defaultTextFormField(
                      controller: nationalIDController,
                      text: "Enter your ID number...",
                      iconData: Icons.card_travel,
                      title: "National ID number"),
                  defaultTextFormField(
                      controller: emailController,
                      text: "Enter email...",
                      iconData: Icons.email,
                      title: "Email"),
                  defaultTextFormField(
                      controller: phoneNumberController,
                      text: "Enter your phone number...",
                      iconData: Icons.phone,
                      title: "Phone number"),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                defaultButton(
                    function: () {
                      if (formKey.currentState!.validate()) {
                        Navigator.pushNamed(
                          context,
                          Registration2.routeName,
                          arguments: ModelClass(
                              fullNameController.text,
                              nationalIDController.text,
                              emailController.text,
                              phoneNumberController.text),
                        );
                      }
                    },
                    text: "Next ⮕",
                    background: AppTheme.primaryColor),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ModelClass {
  String fullNameController;
  String nationalIDController;
  String emailController;
  String phoneNumberController;

  ModelClass(this.fullNameController, this.nationalIDController,
      this.emailController, this.phoneNumberController);
}
