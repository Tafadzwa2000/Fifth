import 'package:flutter/material.dart';
import 'package:quickbite/constants/colors.dart';
import 'package:quickbite/utils/screen_utils.dart';
import '../widgets/customTextInput.dart';
import '../screens/signup_screen.dart';
import '../screens/forgotpassword_screen.dart';
import 'home_screen.dart';
import '../screens/tab_screen.dart';




class LoginScreen extends StatelessWidget {
  static const routeName = "/loginScreen";
  @override
  Widget build(BuildContext context) {
    ScreenUtils().init(context);
    return Scaffold(
      body: SafeArea(
        child: Container(
          
          child: SafeArea(
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 40,
                vertical: 30,
              ),
              
              child: Column(
                children: [
                   Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                TextButton(
                  onPressed: (){},
                   child: Text('Back',
                   
                     style: Theme.of(context).textTheme.headline4.copyWith(
                      color: kTextColor,
                       
                  ),),
                   ),
                    SizedBox(
              height: getProportionateScreenHeight(30),
            ),
              ],
            ),
                  Text(
                    "Login",
                    style: Theme.of(context).textTheme.headline3.copyWith(
                          color: kTextColor,
                          fontWeight: FontWeight.bold
                            ),
                  ),
                  Spacer(),
                  Text('Add your details to login'),
                  Spacer(),
                  CustomTextInput(
                    hintText: "Your email",
                  ),
                  Spacer(),
                  CustomTextInput(
                    hintText: "password",
                  ),
                  Spacer(),
                  SizedBox(
                    height: 50,
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                                   Navigator.of(context)
                          .pushReplacementNamed(TabScreen.routeName);
         
                      },
                      child: Text("Login",
                      ),
                    ),
                  ),
                  Spacer(),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context)
                          .pushReplacementNamed(ForgetPwScreen.routeName);
                    },
                    child: Text("Forget your password?"),
                  ),
                  Spacer(
                    flex: 2,
                  ),
                  Text("or Login With"),
                  Spacer(),
                  SizedBox(
                    height: 50,
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                          Color(
                            0xFF367FC0,
                          ),
                        ),
                      ),
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/fb.png'
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Text("Login with Facebook")
                        ],
                      ),
                    ),
                  ),
                  Spacer(),
                  SizedBox(
                    height: 50,
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                          Color(
                            0xFFDD4B39,
                          ),
                        ),
                      ),
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/google.png'
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Text("Login with Google")
                        ],
                      ),
                    ),
                  ),
                  Spacer(
                    flex: 4,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context)
                          .pushReplacementNamed(SignupScreen.routeName);
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Don't have an Account?"),
                        Text(
                          "Sign Up",
                          style: TextStyle(
                            color: kPrimaryGreen,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
