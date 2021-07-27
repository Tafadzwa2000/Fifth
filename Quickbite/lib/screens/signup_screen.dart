import 'package:flutter/material.dart';
import 'package:quickbite/utils/screen_utils.dart';
import '../widgets/customTextInput.dart';
import '../constants/colors.dart';

import './login_screen.dart';

import 'package:flutter/cupertino.dart';
//Rememebr to make the fonts of the steps way smaller

class SignupScreen extends StatelessWidget{
  static const routeName = "/signup";



 @override
  Widget build(BuildContext context) {
    ScreenUtils().init(context);
    return Scaffold(
      body: Container(
      
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Text("Sign Up", 
                 style: Theme.of(context).textTheme.headline3.copyWith(
                          color: kTextColor,
                          fontWeight: FontWeight.bold
                            ),
                
                ),
                SizedBox(
                  height: 10,
                ),
                    Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                
                    SizedBox(
              height: getProportionateScreenHeight(30),
            ),
              ],
            ),
                Text(
                  "Please enter your Firstname and Lastname",
                    style: Theme.of(context).textTheme.bodyText1.copyWith(
                     
                       
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                height: getProportionateScreenHeight(20),
                ),
                CustomTextInput(hintText: "Enter your Firstname"),
                SizedBox(
                  height: getProportionateScreenHeight(20),
                ),
                CustomTextInput(
                  hintText: "Enter your Lastname",
                ),
                 SizedBox(
                  height: getProportionateScreenHeight(20),
                ),
                CustomTextInput(
                  hintText: "Enter your Email Address",
                ),
                 SizedBox(
                  height: getProportionateScreenHeight(20),
                ),
                CustomTextInput(
                  hintText: "Enter your Phone Number",
                ),
                
                SizedBox(
                height: getProportionateScreenHeight(20),
                ),
                 CustomTextInput(
                  hintText: "Create Password",
                ),
                
                SizedBox(
                height: getProportionateScreenHeight(20),
                ), CustomTextInput(
                  hintText: "Confirm Password",
                ),
                
                SizedBox(
                height: getProportionateScreenHeight(30),
                ),
                SizedBox(
                  height: getProportionateScreenHeight(50),
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context)
                          .pushReplacementNamed(LoginScreen.routeName);
                    },
                    child: Text("Next"),
                  ),
                  
                ),
                 SizedBox(height: getProportionateScreenHeight(20),),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Already have an Account?"),

                TextButton(
                  onPressed: (){
                      Navigator.of(context)
                          .pushReplacementNamed(LoginScreen.routeName);
                    
                  },
                   child: Text('Login',
                   
                     style: Theme.of(context).textTheme.headline4.copyWith(
                      color: kPrimaryGreen,
                       
                  ),
                )
                )
              ],
            )
              ],
            ),
          ),
        ),
      ),
    );
  }
  
}