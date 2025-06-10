import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application/pages/welcome/welcome_bloc/welcome_blocs.dart';
import 'package:flutter_application/pages/welcome/welcome_bloc/welcome_events.dart';
import 'package:flutter_application/pages/welcome/welcome_bloc/welcome_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<WelcomeBloc,WelcomeState>(
        builder: (context, state){
          return Container(
        margin: EdgeInsets.symmetric(horizontal: 10.w),
        child: Stack(
          alignment: Alignment.center,
          children: [
            PageView(
              onPageChanged: (value){
                state.page=value;
                BlocProvider.of<WelcomeBloc>(context).add(WelcomeEvent());
              },
              children: [
                _page(
                    buildContext: context,
                    buttonName: "next",
                    imagePath: "Image Path",
                    index: 1,
                    subTitle:
                        "Forget  about a for of paper all knowledge in one learning ",
                    title: "First See  Learning"),
                _page(
                    buildContext: context,
                    buttonName: "next",
                    imagePath: "Image Path",
                    index: 2,
                    subTitle:
                        "Always keep in touch with your tutor & friend, Let's get connected",
                    title: "Connect With Everyone"),
                _page(
                    buildContext: context,
                    buttonName: "get started",
                    imagePath: "Image Path",
                    index: 3,
                    subTitle:
                        "Anywhere, anytime. The time is our discrtion so study whenever you want",
                    title: "Always Fascinated Learning"),
              ],
            ),
            Positioned(
                bottom: 100.h,
                child: DotsIndicator(
                  position: state.page.toDouble(),
                  dotsCount: 3,
                  decorator: DotsDecorator(
                      color: Colors.grey,
                      activeColor: Colors.blue,
                      activeSize: Size(20, 8),
                      activeShape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5))),
                ),
                ),
          ],
        ),
      );
        }
      )
    );
  }

  Widget _page(
      {int? index,
      String? title,
      String? subTitle,
      String? buttonName,
      String? imagePath,
      BuildContext? buildContext}) {
    return Column(
      children: [
        Container(
            height: 345.w,
            margin: EdgeInsets.only(top: 34.h),
            child: Text("Hi Image")),
        Text(
          "$title",
          style: TextStyle(fontSize: 24.sp),
        ),
        Text(
          "$subTitle",
          style: TextStyle(fontSize: 14.sp),
        ),
        Container(
          margin: EdgeInsets.only(top: 100.h),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              fixedSize: Size(320.w, 50.h),
              elevation: 1,
              backgroundColor: Colors.redAccent,
              textStyle: TextStyle(
                fontSize: 16.sp,
                fontStyle: FontStyle.normal,
              ),
            ),
            onPressed: () {},
            child: Text(
              '$buttonName',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        )
      ],
    );
  }
}
