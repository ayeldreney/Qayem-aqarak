import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/layout/home.dart';
import 'package:project/modules/registration_1.dart';
import 'package:project/shared/components/components.dart';
import 'package:project/shared/styles/app_theme.dart';

import '../cubit/login_cubit.dart';
import '../cubit/login_states.dart';
import '../shared/network/remote/DioHelper.dart';
import '../shared/network/remote/requests.dart';

class Login extends StatelessWidget {
  Login({super.key});
  static const String routeName = "login";
  final TextEditingController userNameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(
              height: 260,
              width: double.infinity,
              image: AssetImage('assets/images/login.jpeg'),
            ),
            Padding(
              padding: EdgeInsets.all(30),
              child: Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor",
                style: TextStyle(fontSize: 14, color: AppTheme.primaryColor),
              ),
            ),
            defaultTextFormField(
                controller: userNameController,
                text: "Enter your username...",
                iconData: Icons.person,
                title: "Username"),
            SizedBox(
              height: 20,
            ),
            BlocConsumer<LoginCubit, LoginState>(
              listener: (context, state) {},
              builder: (context, state) => Container(
                child: Container(
                  alignment: Alignment.center,
                  width: double.infinity,
                  child: Container(
                    margin: EdgeInsets.all(20),
                    child: TextFormField(
                      obscureText:
                          BlocProvider.of<LoginCubit>(context).isVisible,
                      controller: passwordController,
                      keyboardType: TextInputType.visiblePassword,
                      decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(),
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(),
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          hintText: "*************",
                          suffixIcon: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: IconButton(
                                onPressed: () {
                                  BlocProvider.of<LoginCubit>(context)
                                      .passwordvisible();
                                },
                                icon: Icon(BlocProvider.of<LoginCubit>(context)
                                    .suffix)),
                          ),
                          prefixIcon: const Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Icon(Icons.lock),
                          )),
                    ),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Forgot your password ?",
                  style: TextStyle(color: Colors.grey),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    "click here",
                    style: TextStyle(color: Colors.amber),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            BlocConsumer<LoginCubit, LoginState>(
              listener: (context, state) {
                if (state is LoginSuccess) {
                  if (state.access != null) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomePage(),
                        ));
                  }
                }
              },
              builder: (context, state) => Center(
                child: state is LoginLoading
                    ? const Center(
                        child: CircularProgressIndicator(),
                      )
                    : defaultButton(
                        background: AppTheme.primaryColor,
                        function: () {
                          BlocProvider.of<LoginCubit>(context).login(
                              model: LoginRequest(userNameController.text,
                                  passwordController.text));
                        },
                        text: "Login"),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Don't have an account?",
                  style: TextStyle(color: Colors.grey),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, Registration1.routeName);
                  },
                  child: const Text(
                    "click here",
                    style: TextStyle(color: Colors.amber),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
