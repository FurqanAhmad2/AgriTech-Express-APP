import 'package:agri/Screens/Farmer_Consumer_ask.dart';
import 'package:agri/Screens/Events.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class Chat extends StatelessWidget {
  const Chat({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(color: Color(0xfff5f5f5)),
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xffffffff),
              // image: DecorationImage(
              //   image: AssetImage(
              //     'assets/page-1/images/image-1-bg.png',
              //   ),
              //   fit: BoxFit.fill,
              // ),
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
                        margin: EdgeInsets.fromLTRB(25.w, 8.h, 0.w, 0.w),
                        child: Text(
                          "Ibrahim memon",
                          style: GoogleFonts.adventPro(
                              fontSize: 26.sp,
                              fontWeight: FontWeight.w700,
                              color: Color(0xffffffff)),
                        ),
                      ),
                      SizedBox(
                        width: 5.w,
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 8.h),
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
                TextButton(
                  onPressed: () {},
                  child: Container(
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 7.w, top: 1.h),
                          width: 8.w,
                          height: 4.h,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                  'assets/page-1/images/person.png',
                                ),
                                fit: BoxFit.cover),
                            color: Color(0x141f751f),
                            borderRadius: BorderRadius.circular(25.w),
                          ),
                        ),
                        SizedBox(
                          width: 2.w,
                        ),
                        Container(
                          padding: EdgeInsets.all(3.w),
                          decoration: BoxDecoration(
                              color: Color(0xff3bb178),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(5.h),
                                topRight: Radius.circular(5.h),
                                bottomRight: Radius.circular(5.h),
                                bottomLeft: Radius.circular(5.h),
                              )),
                          margin: EdgeInsets.fromLTRB(2.w, 1.h, 0.w, 0.w),
                          child: Text(
                            "Ibrahim Memon",
                            style: GoogleFonts.adventPro(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w700,
                                color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Container(
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 7.w, top: 1.h),
                          width: 8.w,
                          height: 4.h,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                  'assets/page-1/images/person.png',
                                ),
                                fit: BoxFit.cover),
                            color: Color(0x141f751f),
                            borderRadius: BorderRadius.circular(25.w),
                          ),
                        ),
                        SizedBox(
                          width: 2.w,
                        ),
                        Container(
                          padding: EdgeInsets.all(3.w),
                          decoration: BoxDecoration(
                              color: Color(0xff3bb178),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(5.h),
                                topRight: Radius.circular(5.h),
                                bottomRight: Radius.circular(5.h),
                                bottomLeft: Radius.circular(5.h),
                              )),
                          margin: EdgeInsets.fromLTRB(2.w, 1.h, 0.w, 0.w),
                          child: Text(
                            "Ibrahim Memon",
                            style: GoogleFonts.adventPro(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w700,
                                color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Container(
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 7.w, top: 1.h),
                          width: 8.w,
                          height: 4.h,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                  'assets/page-1/images/person.png',
                                ),
                                fit: BoxFit.cover),
                            color: Color(0x141f751f),
                            borderRadius: BorderRadius.circular(25.w),
                          ),
                        ),
                        SizedBox(
                          width: 2.w,
                        ),
                        Container(
                          padding: EdgeInsets.all(3.w),
                          decoration: BoxDecoration(
                              color: Color(0xff3bb178),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(5.h),
                                topRight: Radius.circular(5.h),
                                bottomRight: Radius.circular(5.h),
                                bottomLeft: Radius.circular(5.h),
                              )),
                          margin: EdgeInsets.fromLTRB(2.w, 1.h, 0.w, 0.w),
                          child: Text(
                            "Ibrahim Memon",
                            style: GoogleFonts.adventPro(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w700,
                                color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Container(
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 7.w, top: 1.h),
                          width: 8.w,
                          height: 4.h,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                  'assets/page-1/images/person.png',
                                ),
                                fit: BoxFit.cover),
                            color: Color(0x141f751f),
                            borderRadius: BorderRadius.circular(25.w),
                          ),
                        ),
                        SizedBox(
                          width: 2.w,
                        ),
                        Container(
                          padding: EdgeInsets.all(3.w),
                          decoration: BoxDecoration(
                              color: Color(0xff3bb178),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(5.h),
                                topRight: Radius.circular(5.h),
                                bottomRight: Radius.circular(5.h),
                                bottomLeft: Radius.circular(5.h),
                              )),
                          margin: EdgeInsets.fromLTRB(2.w, 1.h, 0.w, 0.w),
                          child: Text(
                            "Ibrahim Memon",
                            style: GoogleFonts.adventPro(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w700,
                                color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Container(
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 7.w, top: 1.h),
                          width: 8.w,
                          height: 4.h,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                  'assets/page-1/images/person.png',
                                ),
                                fit: BoxFit.cover),
                            color: Color(0x141f751f),
                            borderRadius: BorderRadius.circular(25.w),
                          ),
                        ),
                        SizedBox(
                          width: 2.w,
                        ),
                        Container(
                          padding: EdgeInsets.all(3.w),
                          decoration: BoxDecoration(
                              color: Color(0xff3bb178),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(5.h),
                                topRight: Radius.circular(5.h),
                                bottomRight: Radius.circular(5.h),
                                bottomLeft: Radius.circular(5.h),
                              )),
                          margin: EdgeInsets.fromLTRB(2.w, 1.h, 0.w, 0.w),
                          child: Text(
                            "Ibrahim Memon",
                            style: GoogleFonts.adventPro(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w700,
                                color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Container(
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 7.w, top: 1.h),
                          width: 8.w,
                          height: 4.h,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                  'assets/page-1/images/person.png',
                                ),
                                fit: BoxFit.cover),
                            color: Color(0x141f751f),
                            borderRadius: BorderRadius.circular(25.w),
                          ),
                        ),
                        SizedBox(
                          width: 2.w,
                        ),
                        Container(
                          padding: EdgeInsets.all(3.w),
                          decoration: BoxDecoration(
                              color: Color(0xff3bb178),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(5.h),
                                topRight: Radius.circular(5.h),
                                bottomRight: Radius.circular(5.h),
                                bottomLeft: Radius.circular(5.h),
                              )),
                          margin: EdgeInsets.fromLTRB(2.w, 1.h, 0.w, 0.w),
                          child: Text(
                            "Ibrahim Memon",
                            style: GoogleFonts.adventPro(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w700,
                                color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Container(
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 7.w, top: 1.h),
                          width: 8.w,
                          height: 4.h,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                  'assets/page-1/images/person.png',
                                ),
                                fit: BoxFit.cover),
                            color: Color(0x141f751f),
                            borderRadius: BorderRadius.circular(25.w),
                          ),
                        ),
                        SizedBox(
                          width: 2.w,
                        ),
                        Container(
                          padding: EdgeInsets.all(3.w),
                          decoration: BoxDecoration(
                              color: Color(0xff3bb178),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(5.h),
                                topRight: Radius.circular(5.h),
                                bottomRight: Radius.circular(5.h),
                                bottomLeft: Radius.circular(5.h),
                              )),
                          margin: EdgeInsets.fromLTRB(2.w, 1.h, 0.w, 0.w),
                          child: Text(
                            "Ibrahim Memon",
                            style: GoogleFonts.adventPro(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w700,
                                color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Container(
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 7.w, top: 1.h),
                          width: 8.w,
                          height: 4.h,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                  'assets/page-1/images/person.png',
                                ),
                                fit: BoxFit.cover),
                            color: Color(0x141f751f),
                            borderRadius: BorderRadius.circular(25.w),
                          ),
                        ),
                        SizedBox(
                          width: 2.w,
                        ),
                        Container(
                          padding: EdgeInsets.all(3.w),
                          decoration: BoxDecoration(
                              color: Color(0xff3bb178),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(5.h),
                                topRight: Radius.circular(5.h),
                                bottomRight: Radius.circular(5.h),
                                bottomLeft: Radius.circular(5.h),
                              )),
                          margin: EdgeInsets.fromLTRB(2.w, 1.h, 0.w, 0.w),
                          child: Text(
                            "Ibrahim Memon",
                            style: GoogleFonts.adventPro(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w700,
                                color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Container(
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 7.w, top: 1.h),
                          width: 8.w,
                          height: 4.h,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                  'assets/page-1/images/person.png',
                                ),
                                fit: BoxFit.cover),
                            color: Color(0x141f751f),
                            borderRadius: BorderRadius.circular(25.w),
                          ),
                        ),
                        SizedBox(
                          width: 2.w,
                        ),
                        Container(
                          padding: EdgeInsets.all(3.w),
                          decoration: BoxDecoration(
                              color: Color(0xff3bb178),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(5.h),
                                topRight: Radius.circular(5.h),
                                bottomRight: Radius.circular(5.h),
                                bottomLeft: Radius.circular(5.h),
                              )),
                          margin: EdgeInsets.fromLTRB(2.w, 1.h, 0.w, 0.w),
                          child: Text(
                            "Ibrahim Memon",
                            style: GoogleFonts.adventPro(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w700,
                                color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Container(
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 7.w, top: 1.h),
                          width: 8.w,
                          height: 4.h,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                  'assets/page-1/images/person.png',
                                ),
                                fit: BoxFit.cover),
                            color: Color(0x141f751f),
                            borderRadius: BorderRadius.circular(25.w),
                          ),
                        ),
                        SizedBox(
                          width: 2.w,
                        ),
                        Container(
                          padding: EdgeInsets.all(3.w),
                          decoration: BoxDecoration(
                              color: Color(0xff3bb178),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(5.h),
                                topRight: Radius.circular(5.h),
                                bottomRight: Radius.circular(5.h),
                                bottomLeft: Radius.circular(5.h),
                              )),
                          margin: EdgeInsets.fromLTRB(2.w, 1.h, 0.w, 0.w),
                          child: Text(
                            "Ibrahim Memon",
                            style: GoogleFonts.adventPro(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w700,
                                color: Colors.black),
                          ),
                        ),
                      ],
                    ),
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
