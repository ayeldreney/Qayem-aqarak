import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/modules/login.dart';
import 'package:project/shared/styles/app_theme.dart';

import '../cubit/register_cubit.dart';
import '../cubit/register_states.dart';
import '../shared/components/components.dart';
import '../shared/network/remote/requests.dart';

class Registration2 extends StatelessWidget {
  final String fullName;
  final String nationalID;
  final String email;
  final String phone;
  Registration2(
      {required this.fullName,
      required this.nationalID,
      required this.email,
      required this.phone});

  static const String routeName = "registration2";
  final TextEditingController userNameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController countryController = TextEditingController();
  final TextEditingController phoneNumberController = TextEditingController();
  final TextEditingController neighborhoodController = TextEditingController();
  final TextEditingController cityController = TextEditingController();
  final TextEditingController regionController = TextEditingController();
  final TextEditingController detailedAddressController =
      TextEditingController();

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              defaultTextFormField(
                  text: "Enter your user name...",
                  iconData: Icons.person,
                  title: "User name"),
              defaultTextFormField(
                  text: "Enter your password...",
                  iconData: Icons.lock,
                  title: "Password"),
              defaultTextFormField(
                  text: "select your country...",
                  iconData: Icons.map,
                  title: "Country"),
              defaultTextFormField(
                  text: "select your Neighborhood...",
                  iconData: Icons.send,
                  title: "Neighborhood"),
              Row(
                children: [
                  Expanded(
                    child: defaultTextFormField(
                        controller: cityController,
                        title: "City",
                        text: "city",
                        iconData: Icons.location_city),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: defaultTextFormField(
                        controller: regionController,
                        title: "Region",
                        text: "region",
                        iconData: Icons.person),
                  )
                ],
              ),
              defaultTextFormField(
                  title: "Detailed address",
                  text: "Enter your detailed address...",
                  iconData: Icons.person),
              BlocConsumer<RegisterCubit, RegisterState>(
                listener: (context, state) {
                  if (state is RegisterSuccess) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Login(),
                        ));
                  }
                },
                builder: (context, state) => defaultButton(
                  function: () {
                    if (formKey.currentState!.validate()) {
                      BlocProvider.of<RegisterCubit>(context).register(
                          model: RegisterRequest(
                              name: fullName,
                              username: userNameController.text,
                              email: email,
                              phone_1: phone,
                              phone_2: phone,
                              gender: "1",
                              password: passwordController.text,
                              password_2: passwordController.text,
                              identification_type: "type",
                              identification_number: "1025125620",
                              identification_image:
                                  BlocProvider.of<RegisterCubit>(context)
                                      .profileImage!,
                              user_type: "1",
                              sign: BlocProvider.of<RegisterCubit>(context)
                                  .profileImage!,
                              personal_image:
                                  BlocProvider.of<RegisterCubit>(context)
                                      .profileImage!,
                              country: countryController.text));
                    }
                  },
                  text: "Finish",
                ),
              ),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
