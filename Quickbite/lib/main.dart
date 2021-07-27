                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 import 'package:flutter/material.dart';
import 'package:quickbite/constants/colors.dart';
import 'package:quickbite/screens/landing_screen.dart';
import 'package:quickbite/screens/login_screen.dart';
import 'package:quickbite/screens/sentOTPScreen.dart';
import 'package:quickbite/utils/custom_theme.dart';
import 'package:quickbite/utils/screen_utils.dart';

//the introduction screen 
import 'package:quickbite/screens/intro_screen.dart';
import 'package:quickbite/screens/onboarding1_screen.dart';
import 'package:quickbite/screens/login_screen.dart';
import 'package:quickbite/screens/signup_screen.dart';
import 'package:quickbite/screens/forgotpassword_screen.dart';
import 'package:quickbite/screens/newpassword_screen.dart';
import 'package:quickbite/screens/signup_screen1.dart';


import './screens/tab_screen.dart';
import './screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        print(constraints.maxWidth);
        final customTheme = CustomTheme(constraints);
        return MaterialApp(
           debugShowCheckedModeBanner: false,
          title: 'QuickBite',
          theme: ThemeData(
            primarySwatch: Colors.orange,
            textTheme: customTheme.nunito(),
            elevatedButtonTheme: customTheme.elevatedButtonTheme(),
            outlinedButtonTheme: customTheme.outlinedButtonTheme(),
          ),
          home: LandingScreen(),
          //application routes
          
          routes: {
        Introscreen.routeName: (context) => Introscreen(),
        Onboarding1.routeName: (context) => Onboarding1(),
        LandingScreen.routeName: (context) => LoginScreen(),
        SignupScreen.routeName: (context) => SignupScreen(),
        LoginScreen.routeName: (context) => LoginScreen(),
        ForgetPwScreen.routeName: (context) => ForgetPwScreen(),
        SendOTPScreen.routeName: (context) => SendOTPScreen(),
        NewPwScreen.routeName: (context) => NewPwScreen(),
        SignupScreen1.routeName: (context) => SignupScreen1(),
        TabScreen.routeName: (context) => TabScreen(),

          }
        );
      },
    );
  }
}
