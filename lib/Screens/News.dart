import 'package:agri/Screens/Farmer_Consumer_ask.dart';
import 'package:agri/Screens/Events.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class News extends StatelessWidget {
  const News({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(color: Color(0xfff5f5f5)),
        child: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xffffffff),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: double.infinity,
                  height: 20.h,
                  decoration: BoxDecoration(
                      color: Color(0xff3bb178),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(2.h),
                        topRight: Radius.circular(2.h),
                        bottomRight: Radius.circular(7.h),
                        bottomLeft: Radius.circular(7.h),
                      )),
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(35.w, 5.h, 0.w, 0.w),
                        child: Text(
                          "News",
                          style: GoogleFonts.adventPro(
                              fontSize: 26.sp,
                              fontWeight: FontWeight.w700,
                              color: Color(0xffffffff)),
                        ),
                      ),
                      SizedBox(
                        width: 30.w,
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 5.h),
                        width: 12.w,
                        height: 12.h,
                        child: TextButton(
                            onPressed: () {},
                            child: Image.asset(
                              'assets/page-1/images/noti-icon.png',
                              width: 10.w,
                              height: 10.h,
                            )),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(7.w, 2.h, 0.w, 0.w),
                  child: Text(
                    "Today",
                    style: GoogleFonts.adventPro(
                        fontSize: 26.sp,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff1f751f)),
                  ),
                ),
                SizedBox(
                  height: 2.h,
                ),
                Container(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 2.w),
                            width: 90.w,
                            height: 30.h,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      'assets/page-1/images/DetailEvent.png'),
                                  fit: BoxFit.cover),
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(2.h),
                                  topRight: Radius.circular(2.h),
                                  bottomRight: Radius.circular(2.h),
                                  bottomLeft: Radius.circular(2.h)),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        margin:
                            EdgeInsets.only(left: 9.w, top: 1.h, right: 1.w),
                        child: Text(
                          softWrap: true,
                          "Pakistan approves agriculture relief package to support farmers",
                          style: GoogleFonts.adventPro(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w700,
                              color: Color(0xff000000)),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 3.h,
                ),
                Container(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 2.w),
                            width: 90.w,
                            height: 30.h,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      'assets/page-1/images/DetailEvent.png'),
                                  fit: BoxFit.cover),
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(2.h),
                                  topRight: Radius.circular(2.h),
                                  bottomRight: Radius.circular(2.h),
                                  bottomLeft: Radius.circular(2.h)),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        margin:
                            EdgeInsets.only(left: 9.w, top: 1.h, right: 1.w),
                        child: Text(
                          softWrap: true,
                          "Pakistan approves agriculture relief package to support farmers",
                          style: GoogleFonts.adventPro(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w700,
                              color: Color(0xff000000)),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
