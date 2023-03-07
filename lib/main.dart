import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/layout/home.dart';
import 'package:project/modules/login.dart';
import 'package:project/modules/onBoarding.dart';
import 'package:project/modules/pre_login.dart';
import 'package:project/shared/styles/app_theme.dart';
import 'cubit/login_cubit.dart';
import 'cubit/register_cubit.dart';
import 'modules/registration_1.dart';
import 'modules/registration_2.dart';
import 'package:project/shared/components/utils/di.dart' as di;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.initAppModule();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => di.instance<RegisterCubit>(),
        ),
        BlocProvider(
          create: (context) => di.instance<LoginCubit>(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: Login.routeName,
        routes: {
          Registration1.routeName: (context) => Registration1(),
          OnBoardingScreen.routeName: (context) => OnBoardingScreen(),
          Login.routeName: (context) => Login(),
          PreLogin.routeName: (context) => PreLogin(),
          HomePage.routeName: (context) => HomePage()
        },
        theme: AppTheme.theme,
      ),
    );
  }
}
