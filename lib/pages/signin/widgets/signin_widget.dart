import 'package:flutter/material.dart';
import 'package:flutter_application/common/values/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

AppBar buildAppbar() {
  return AppBar(
    bottom: PreferredSize(
        preferredSize: Size.fromHeight(1),
        child: Divider(
          color: AppColors.primarySecondaryBackground,
        )),
    centerTitle: true,
    title: Text(
      "Log In ",
      style: TextStyle(
        color: AppColors.primaryText,
        fontSize: 16.sp,
        fontWeight: FontWeight.normal,
      ),
    ),
  );
}

Widget buildThirdPartyLogin(BuildContext context) {
  return Container(
    margin: EdgeInsets.only(top: 5.h, bottom: 18.h),
        padding: EdgeInsets.only(left: 25.w, right: 25.w),

    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _buildReusableIcons(icon: "google"),
        _buildReusableIcons(icon: "apple"),
        _buildReusableIcons(icon: "facebook"),
      ],
    ),
  );
}

Widget _buildReusableIcons({String icon = ""}) {
  return GestureDetector(
    onTap: () {},
    child: SizedBox(
      height: 40.w,
      width: 40.w,
      child: Image.asset("assets/icons/$icon.png"),
    ),
  );
}

Widget buildReusableText({String text = ''}) {
  return Container(
    margin: EdgeInsets.only(bottom: 5.h),
    child: Text(
      text,
      style: TextStyle(
          color: Colors.grey.withAlpha(100),
          fontSize: 16.sp,
          fontWeight: FontWeight.normal),
    ),
  );
}

Widget buildTextField(
    {String hintText = "", String textType = '', String iconName = ""}) {
  return TextField(
    keyboardType: TextInputType.multiline,
    decoration: InputDecoration(
      hintStyle: TextStyle(color: AppColors.primarySecondaryElementText),
      hintText: hintText,
      prefixIcon: Image.asset(
        scale: 1.5,
        "assets/icons/$iconName.png",
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15.w),
        borderSide: BorderSide(
          color: AppColors.primaryFourthElementText,
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15.w),
        borderSide: BorderSide(
          color: AppColors.primaryFourthElementText,
        ),
      ),
    ),   
    style: TextStyle(
      color: AppColors.primaryText,
      fontFamily: "Avenir",
      fontWeight: FontWeight.normal,
      fontSize: 14.sp,
    ),
    autocorrect: false,
    obscureText: textType == 'password' ? true : false,
  );
}

Widget buildForgotPassword() {
  return GestureDetector(
    onTap: () {},
    child: Text(
      'Forgot Password',
      style: TextStyle(
          color: AppColors.primaryText,
          fontSize: 12.sp,
          decoration: TextDecoration.underline,
          decorationColor: AppColors.primaryText),
    ),
  );
}

Widget buildLoginReg({String buttonName = '', String buttonType = ''}) {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
        side: BorderSide(
          color: buttonType=='login'?Colors.transparent:AppColors.primaryFourthElementText
        )
      ),
      fixedSize: Size(320.w, 50.h),
      elevation: 1,
      backgroundColor: buttonType == 'login'
          ? AppColors.primaryElement
          : AppColors.primaryBackground,
      textStyle: TextStyle(
        fontSize: 16.sp,
        fontStyle: FontStyle.normal,
      ),
    ),
    onPressed: () {},
    child: Text(
      buttonName,
      style: TextStyle(
        color: buttonType == 'login'
            ? AppColors.primaryBackground
            : AppColors.primaryText,
      ),
    ),
  );
}
