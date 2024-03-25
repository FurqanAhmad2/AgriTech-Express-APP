import 'package:agri/Screens/Farmer_Consumer_ask.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class Categorie extends StatelessWidget {
  const Categorie({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(color: Color(0xfff5f5f5)),
            child: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xffffffff),
              ),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: double.infinity,
                        height: 17.h,
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
                              margin: EdgeInsets.fromLTRB(37.w, 5.h, 0.w, 0.w),
                              child: Text(
                                "Crops",
                                style: GoogleFonts.adventPro(
                                    fontSize: 28.sp,
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xffffffff)),
                              ),
                            ),
                            SizedBox(
                              width: 28.w,
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
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 5.w, top: 4.h),
                            width: 40.w,
                            height: 31.h,
                            decoration: BoxDecoration(
                                color: Color(0xff3bb178),
                                border: Border.all(),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(5.h),
                                  topRight: Radius.circular(5.h),
                                  bottomRight: Radius.circular(5.h),
                                  bottomLeft: Radius.circular(5.h),
                                )),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      margin:
                                          EdgeInsets.only(left: 7.w, top: 2.h),
                                      child: Text(
                                        "Cotton",
                                        style: GoogleFonts.adventPro(
                                            fontSize: 16.sp,
                                            fontWeight: FontWeight.w700,
                                            color: Colors.white),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Container(
                                      margin:
                                          EdgeInsets.only(left: 4.w, top: 2.h),
                                      width: 30.w,
                                      height: 14.h,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(15.h),
                                          topRight: Radius.circular(15.h),
                                          bottomRight: Radius.circular(15.h),
                                          bottomLeft: Radius.circular(15.h),
                                        ),
                                      ),
                                      child: Image.asset(
                                        'assets/page-1/images/Crops.png',
                                      ),
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    Container(
                                      margin:
                                          EdgeInsets.only(left: 7.w, top: 5.h),
                                      child: Text(
                                        "Cotton",
                                        style: GoogleFonts.adventPro(
                                            fontSize: 16.sp,
                                            fontWeight: FontWeight.w700,
                                            color: Colors.white),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 2.w,
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 5.w, top: 4.h),
                            width: 40.w,
                            height: 31.h,
                            decoration: BoxDecoration(
                                color: Color(0xff3bb178),
                                border: Border.all(),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(5.h),
                                  topRight: Radius.circular(5.h),
                                  bottomRight: Radius.circular(5.h),
                                  bottomLeft: Radius.circular(5.h),
                                )),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      margin:
                                          EdgeInsets.only(left: 7.w, top: 2.h),
                                      child: Text(
                                        "Cotton",
                                        style: GoogleFonts.adventPro(
                                            fontSize: 16.sp,
                                            fontWeight: FontWeight.w700,
                                            color: Colors.white),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Container(
                                      margin:
                                          EdgeInsets.only(left: 4.w, top: 2.h),
                                      width: 30.w,
                                      height: 14.h,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(15.h),
                                          topRight: Radius.circular(15.h),
                                          bottomRight: Radius.circular(15.h),
                                          bottomLeft: Radius.circular(15.h),
                                        ),
                                      ),
                                      child: Image.asset(
                                        'assets/page-1/images/Crops.png',
                                      ),
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    Container(
                                      margin:
                                          EdgeInsets.only(left: 7.w, top: 5.h),
                                      child: Text(
                                        "Cotton",
                                        style: GoogleFonts.adventPro(
                                            fontSize: 16.sp,
                                            fontWeight: FontWeight.w700,
                                            color: Colors.white),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 5.w, top: 4.h),
                            width: 40.w,
                            height: 31.h,
                            decoration: BoxDecoration(
                                color: Color(0xff3bb178),
                                border: Border.all(),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(5.h),
                                  topRight: Radius.circular(5.h),
                                  bottomRight: Radius.circular(5.h),
                                  bottomLeft: Radius.circular(5.h),
                                )),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      margin:
                                          EdgeInsets.only(left: 7.w, top: 2.h),
                                      child: Text(
                                        "Cotton",
                                        style: GoogleFonts.adventPro(
                                            fontSize: 16.sp,
                                            fontWeight: FontWeight.w700,
                                            color: Colors.white),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Container(
                                      margin:
                                          EdgeInsets.only(left: 4.w, top: 2.h),
                                      width: 30.w,
                                      height: 14.h,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(15.h),
                                          topRight: Radius.circular(15.h),
                                          bottomRight: Radius.circular(15.h),
                                          bottomLeft: Radius.circular(15.h),
                                        ),
                                      ),
                                      child: Image.asset(
                                        'assets/page-1/images/Crops.png',
                                      ),
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    Container(
                                      margin:
                                          EdgeInsets.only(left: 7.w, top: 5.h),
                                      child: Text(
                                        "Cotton",
                                        style: GoogleFonts.adventPro(
                                            fontSize: 16.sp,
                                            fontWeight: FontWeight.w700,
                                            color: Colors.white),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 2.w,
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 5.w, top: 4.h),
                            width: 40.w,
                            height: 31.h,
                            decoration: BoxDecoration(
                                color: Color(0xff3bb178),
                                border: Border.all(),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(5.h),
                                  topRight: Radius.circular(5.h),
                                  bottomRight: Radius.circular(5.h),
                                  bottomLeft: Radius.circular(5.h),
                                )),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      margin:
                                          EdgeInsets.only(left: 7.w, top: 2.h),
                                      child: Text(
                                        "Cotton",
                                        style: GoogleFonts.adventPro(
                                            fontSize: 16.sp,
                                            fontWeight: FontWeight.w700,
                                            color: Colors.white),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Container(
                                      margin:
                                          EdgeInsets.only(left: 4.w, top: 2.h),
                                      width: 30.w,
                                      height: 14.h,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(15.h),
                                          topRight: Radius.circular(15.h),
                                          bottomRight: Radius.circular(15.h),
                                          bottomLeft: Radius.circular(15.h),
                                        ),
                                      ),
                                      child: Image.asset(
                                        'assets/page-1/images/Crops.png',
                                      ),
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    Container(
                                      margin:
                                          EdgeInsets.only(left: 7.w, top: 5.h),
                                      child: Text(
                                        "Cotton",
                                        style: GoogleFonts.adventPro(
                                            fontSize: 16.sp,
                                            fontWeight: FontWeight.w700,
                                            color: Colors.white),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      )
                    ]),
              ),
            )));
  }
}
