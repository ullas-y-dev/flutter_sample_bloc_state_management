import 'package:flutter/material.dart';
import 'package:flutter_application/pages/signin/widgets/signin_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: buildAppbar(),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                buildThirdPartyLogin(context),
                Center(child: buildReusableText(text: "or use your email account to login")),
                Container(
                  margin: EdgeInsets.only(top: 60.h, left: 15.h, right: 15.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      buildReusableText(text: "Email"),
                      buildTextField(
                          hintText: "Enter your email address",
                          iconName: "user",
                          textType: "email"),
                      SizedBox(height: 10.h),
                      buildReusableText(text: "Password"),
                      buildTextField(
                          hintText: "Enter your password",
                          iconName: "lock",
                          textType: "password"),
                      SizedBox(height: 15.h),
                      buildForgotPassword(),
                      SizedBox(height: 45.h),
                      buildLoginReg(buttonName: 'Log In',buttonType: 'login'),
                      SizedBox(height: 15.h),
                      buildLoginReg(buttonName: ' Register',buttonType: 'reg')
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
