import 'package:agri/Screens/Farmer_Consumer_ask.dart';
import 'package:agri/Screens/ViewEvent.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class Event extends StatelessWidget {
  const Event({Key? key});

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
                  height: 25.h,
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
                        margin: EdgeInsets.fromLTRB(12.w, 8.h, 0.w, 0.w),
                        child: Text(
                          "Events",
                          style: GoogleFonts.adventPro(
                              fontSize: 26.sp,
                              fontWeight: FontWeight.w700,
                              color: Color(0xffffffff)),
                        ),
                      ),
                      SizedBox(
                        width: 50.w,
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
                Container(
                  margin: EdgeInsets.fromLTRB(10.w, 2.h, 0.w, 0.w),
                  child: Text(
                    "Today",
                    style: GoogleFonts.adventPro(
                        fontSize: 26.sp,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff1f751f)),
                  ),
                ),
                SizedBox(
                  height: 3.h,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 8.w),
                            width: 37.w,
                            height: 26.h,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0xFF263238),
                                    offset: Offset(
                                        0, 2), // shadow direction: bottom right
                                    blurRadius: 3.0, // blur radius
                                    spreadRadius: 0.3, // shadow spread radius
                                  ),
                                ],
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(2.h),
                                    topRight: Radius.circular(2.h),
                                    bottomRight: Radius.circular(2.h),
                                    bottomLeft: Radius.circular(2.h)),
                                border: Border.all(color: Color(0xFEFAFAFC))),
                            child: TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => ViewEvent()));
                              },
                              child: Column(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(top: 1.h),
                                    width: 30.w,
                                    height: 10.h,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(2.w),
                                            topRight: Radius.circular(2.w),
                                            bottomLeft: Radius.circular(2.w),
                                            bottomRight: Radius.circular(2.w)),
                                        image: DecorationImage(
                                            image: AssetImage(
                                                'assets/page-1/images/Event1.png'),
                                            fit: BoxFit.cover)),
                                  ),
                                  Container(
                                    margin:
                                        EdgeInsets.only(left: 1.w, top: 1.h),
                                    child: Text(
                                      "Future of Agriculture",
                                      style: GoogleFonts.montserrat(
                                          fontSize: 8.sp,
                                          color: Color(0xff1f751f),
                                          fontWeight: FontWeight.w700),
                                      softWrap: true,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(
                                            left: 4.w, top: 1.h),
                                        child: Text(
                                          "Date",
                                          style: GoogleFonts.montserrat(
                                              fontSize: 8.sp,
                                              color: Color(0xFF263238),
                                              fontWeight: FontWeight.w700),
                                          softWrap: true,
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(
                                            left: 2.w, top: 1.h),
                                        child: Text(
                                          "28 Nov 2023",
                                          style: GoogleFonts.montserrat(
                                              fontSize: 8.sp,
                                              color: Color(0xFFEF8503),
                                              fontWeight: FontWeight.w700),
                                          softWrap: true,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(
                                            left: 4.w, top: 0.h),
                                        child: Text(
                                          "Time",
                                          style: GoogleFonts.montserrat(
                                              fontSize: 8.sp,
                                              color: Color(0xFF263238),
                                              fontWeight: FontWeight.w700),
                                          softWrap: true,
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(
                                            left: 2.w, top: 0.h),
                                        child: Text(
                                          "12:00pm",
                                          style: GoogleFonts.montserrat(
                                              fontSize: 8.sp,
                                              color: Color(0xFFEF8503),
                                              fontWeight: FontWeight.w700),
                                          softWrap: true,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(
                                            left: 4.w, top: 0.h),
                                        child: Text(
                                          "City",
                                          style: GoogleFonts.montserrat(
                                              fontSize: 8.sp,
                                              color: Color(0xFF263238),
                                              fontWeight: FontWeight.w700),
                                          softWrap: true,
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(
                                            left: 2.w, top: 0.h),
                                        child: Text(
                                          "Gujranwala",
                                          style: GoogleFonts.montserrat(
                                              fontSize: 8.sp,
                                              color: Color(0xFFEF8503),
                                              fontWeight: FontWeight.w700),
                                          softWrap: true,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 1.h,
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 8.w),
                            width: 37.w,
                            height: 26.h,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0xFF263238),
                                    offset: Offset(
                                        0, 2), // shadow direction: bottom right
                                    blurRadius: 3.0, // blur radius
                                    spreadRadius: 0.3, // shadow spread radius
                                  ),
                                ],
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(2.h),
                                    topRight: Radius.circular(2.h),
                                    bottomRight: Radius.circular(2.h),
                                    bottomLeft: Radius.circular(2.h)),
                                border: Border.all(color: Color(0xFEFAFAFC))),
                            child: TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => ViewEvent()));
                              },
                              child: Column(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(top: 1.h),
                                    width: 30.w,
                                    height: 10.h,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(2.w),
                                            topRight: Radius.circular(2.w),
                                            bottomLeft: Radius.circular(2.w),
                                            bottomRight: Radius.circular(2.w)),
                                        image: DecorationImage(
                                            image: AssetImage(
                                                'assets/page-1/images/Event1.png'),
                                            fit: BoxFit.cover)),
                                  ),
                                  Container(
                                    margin:
                                        EdgeInsets.only(left: 1.w, top: 1.h),
                                    child: Text(
                                      "Future of Agriculture",
                                      style: GoogleFonts.montserrat(
                                          fontSize: 8.sp,
                                          color: Color(0xff1f751f),
                                          fontWeight: FontWeight.w700),
                                      softWrap: true,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(
                                            left: 4.w, top: 1.h),
                                        child: Text(
                                          "Date",
                                          style: GoogleFonts.montserrat(
                                              fontSize: 8.sp,
                                              color: Color(0xFF263238),
                                              fontWeight: FontWeight.w700),
                                          softWrap: true,
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(
                                            left: 2.w, top: 1.h),
                                        child: Text(
                                          "28 Nov 2023",
                                          style: GoogleFonts.montserrat(
                                              fontSize: 8.sp,
                                              color: Color(0xFFEF8503),
                                              fontWeight: FontWeight.w700),
                                          softWrap: true,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(
                                            left: 4.w, top: 0.h),
                                        child: Text(
                                          "Time",
                                          style: GoogleFonts.montserrat(
                                              fontSize: 8.sp,
                                              color: Color(0xFF263238),
                                              fontWeight: FontWeight.w700),
                                          softWrap: true,
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(
                                            left: 2.w, top: 0.h),
                                        child: Text(
                                          "12:00pm",
                                          style: GoogleFonts.montserrat(
                                              fontSize: 8.sp,
                                              color: Color(0xFFEF8503),
                                              fontWeight: FontWeight.w700),
                                          softWrap: true,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(
                                            left: 4.w, top: 0.h),
                                        child: Text(
                                          "City",
                                          style: GoogleFonts.montserrat(
                                              fontSize: 8.sp,
                                              color: Color(0xFF263238),
                                              fontWeight: FontWeight.w700),
                                          softWrap: true,
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(
                                            left: 2.w, top: 0.h),
                                        child: Text(
                                          "Gujranwala",
                                          style: GoogleFonts.montserrat(
                                              fontSize: 8.sp,
                                              color: Color(0xFFEF8503),
                                              fontWeight: FontWeight.w700),
                                          softWrap: true,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 1.h,
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 8.w),
                            width: 37.w,
                            height: 26.h,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0xFF263238),
                                    offset: Offset(
                                        0, 2), // shadow direction: bottom right
                                    blurRadius: 3.0, // blur radius
                                    spreadRadius: 0.3, // shadow spread radius
                                  ),
                                ],
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(2.h),
                                    topRight: Radius.circular(2.h),
                                    bottomRight: Radius.circular(2.h),
                                    bottomLeft: Radius.circular(2.h)),
                                border: Border.all(color: Color(0xFEFAFAFC))),
                            child: TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => ViewEvent()));
                              },
                              child: Column(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(top: 1.h),
                                    width: 30.w,
                                    height: 10.h,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(2.w),
                                            topRight: Radius.circular(2.w),
                                            bottomLeft: Radius.circular(2.w),
                                            bottomRight: Radius.circular(2.w)),
                                        image: DecorationImage(
                                            image: AssetImage(
                                                'assets/page-1/images/Event1.png'),
                                            fit: BoxFit.cover)),
                                  ),
                                  Container(
                                    margin:
                                        EdgeInsets.only(left: 1.w, top: 1.h),
                                    child: Text(
                                      "Future of Agriculture",
                                      style: GoogleFonts.montserrat(
                                          fontSize: 8.sp,
                                          color: Color(0xff1f751f),
                                          fontWeight: FontWeight.w700),
                                      softWrap: true,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(
                                            left: 4.w, top: 1.h),
                                        child: Text(
                                          "Date",
                                          style: GoogleFonts.montserrat(
                                              fontSize: 8.sp,
                                              color: Color(0xFF263238),
                                              fontWeight: FontWeight.w700),
                                          softWrap: true,
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(
                                            left: 2.w, top: 1.h),
                                        child: Text(
                                          "28 Nov 2023",
                                          style: GoogleFonts.montserrat(
                                              fontSize: 8.sp,
                                              color: Color(0xFFEF8503),
                                              fontWeight: FontWeight.w700),
                                          softWrap: true,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(
                                            left: 4.w, top: 0.h),
                                        child: Text(
                                          "Time",
                                          style: GoogleFonts.montserrat(
                                              fontSize: 8.sp,
                                              color: Color(0xFF263238),
                                              fontWeight: FontWeight.w700),
                                          softWrap: true,
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(
                                            left: 2.w, top: 0.h),
                                        child: Text(
                                          "12:00pm",
                                          style: GoogleFonts.montserrat(
                                              fontSize: 8.sp,
                                              color: Color(0xFFEF8503),
                                              fontWeight: FontWeight.w700),
                                          softWrap: true,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(
                                            left: 4.w, top: 0.h),
                                        child: Text(
                                          "City",
                                          style: GoogleFonts.montserrat(
                                              fontSize: 8.sp,
                                              color: Color(0xFF263238),
                                              fontWeight: FontWeight.w700),
                                          softWrap: true,
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(
                                            left: 2.w, top: 0.h),
                                        child: Text(
                                          "Gujranwala",
                                          style: GoogleFonts.montserrat(
                                              fontSize: 8.sp,
                                              color: Color(0xFFEF8503),
                                              fontWeight: FontWeight.w700),
                                          softWrap: true,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 1.h,
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 8.w),
                            width: 37.w,
                            height: 26.h,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0xFF263238),
                                    offset: Offset(
                                        0, 2), // shadow direction: bottom right
                                    blurRadius: 3.0, // blur radius
                                    spreadRadius: 0.3, // shadow spread radius
                                  ),
                                ],
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(2.h),
                                    topRight: Radius.circular(2.h),
                                    bottomRight: Radius.circular(2.h),
                                    bottomLeft: Radius.circular(2.h)),
                                border: Border.all(color: Color(0xFEFAFAFC))),
                            child: TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => ViewEvent()));
                              },
                              child: Column(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(top: 1.h),
                                    width: 30.w,
                                    height: 10.h,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(2.w),
                                            topRight: Radius.circular(2.w),
                                            bottomLeft: Radius.circular(2.w),
                                            bottomRight: Radius.circular(2.w)),
                                        image: DecorationImage(
                                            image: AssetImage(
                                                'assets/page-1/images/Event1.png'),
                                            fit: BoxFit.cover)),
                                  ),
                                  Container(
                                    margin:
                                        EdgeInsets.only(left: 1.w, top: 1.h),
                                    child: Text(
                                      "Future of Agriculture",
                                      style: GoogleFonts.montserrat(
                                          fontSize: 8.sp,
                                          color: Color(0xff1f751f),
                                          fontWeight: FontWeight.w700),
                                      softWrap: true,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(
                                            left: 4.w, top: 1.h),
                                        child: Text(
                                          "Date",
                                          style: GoogleFonts.montserrat(
                                              fontSize: 8.sp,
                                              color: Color(0xFF263238),
                                              fontWeight: FontWeight.w700),
                                          softWrap: true,
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(
                                            left: 2.w, top: 1.h),
                                        child: Text(
                                          "28 Nov 2023",
                                          style: GoogleFonts.montserrat(
                                              fontSize: 8.sp,
                                              color: Color(0xFFEF8503),
                                              fontWeight: FontWeight.w700),
                                          softWrap: true,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(
                                            left: 4.w, top: 0.h),
                                        child: Text(
                                          "Time",
                                          style: GoogleFonts.montserrat(
                                              fontSize: 8.sp,
                                              color: Color(0xFF263238),
                                              fontWeight: FontWeight.w700),
                                          softWrap: true,
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(
                                            left: 2.w, top: 0.h),
                                        child: Text(
                                          "12:00pm",
                                          style: GoogleFonts.montserrat(
                                              fontSize: 8.sp,
                                              color: Color(0xFFEF8503),
                                              fontWeight: FontWeight.w700),
                                          softWrap: true,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(
                                            left: 4.w, top: 0.h),
                                        child: Text(
                                          "City",
                                          style: GoogleFonts.montserrat(
                                              fontSize: 8.sp,
                                              color: Color(0xFF263238),
                                              fontWeight: FontWeight.w700),
                                          softWrap: true,
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(
                                            left: 2.w, top: 0.h),
                                        child: Text(
                                          "Gujranwala",
                                          style: GoogleFonts.montserrat(
                                              fontSize: 8.sp,
                                              color: Color(0xFFEF8503),
                                              fontWeight: FontWeight.w700),
                                          softWrap: true,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 1.h,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 2.h,
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(10.w, 2.h, 0.w, 0.w),
                  child: Text(
                    "All",
                    style: GoogleFonts.adventPro(
                        fontSize: 26.sp,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff1f751f)),
                  ),
                ),
                SizedBox(
                  height: 2.h,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ViewEvent()));
                  },
                  child: Container(
                    margin: EdgeInsets.only(left: 8.w),
                    width: 90.w,
                    height: 14.h,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xFF263238),
                            offset:
                                Offset(0, 2), // shadow direction: bottom right
                            blurRadius: 3.0, // blur radius
                            spreadRadius: 0.3, // shadow spread radius
                          ),
                        ],
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(2.h),
                            topRight: Radius.circular(2.h),
                            bottomRight: Radius.circular(2.h),
                            bottomLeft: Radius.circular(2.h)),
                        border: Border.all(color: Color(0xFEFAFAFC))),
                    child: Row(children: [
                      Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 1.h, left: 1.w),
                            width: 30.w,
                            height: 12.h,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(2.w),
                                    topRight: Radius.circular(2.w),
                                    bottomLeft: Radius.circular(2.w),
                                    bottomRight: Radius.circular(2.w)),
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/page-1/images/Event1.png'),
                                    fit: BoxFit.cover)),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 2.w, top: 1.h),
                                child: Text(
                                  "Future of Agriculture",
                                  style: GoogleFonts.montserrat(
                                      fontSize: 12.sp,
                                      color: Color(0xff1f751f),
                                      fontWeight: FontWeight.w700),
                                  softWrap: true,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.only(right: 1.w, top: 1.h),
                                child: Text(
                                  "Date",
                                  style: GoogleFonts.montserrat(
                                      fontSize: 8.sp,
                                      color: Color(0xFF263238),
                                      fontWeight: FontWeight.w700),
                                  softWrap: true,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 20.w, top: 1.h),
                                child: Text(
                                  "28 Nov 2023",
                                  style: GoogleFonts.montserrat(
                                      fontSize: 8.sp,
                                      color: Color(0xFFEF8503),
                                      fontWeight: FontWeight.w700),
                                  softWrap: true,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.only(right: 1.w, top: 1.h),
                                child: Text(
                                  "Time",
                                  style: GoogleFonts.montserrat(
                                      fontSize: 8.sp,
                                      color: Color(0xFF263238),
                                      fontWeight: FontWeight.w700),
                                  softWrap: true,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 20.w, top: 1.h),
                                child: Text(
                                  "12pm",
                                  style: GoogleFonts.montserrat(
                                      fontSize: 8.sp,
                                      color: Color(0xFFEF8503),
                                      fontWeight: FontWeight.w700),
                                  softWrap: true,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.only(right: 1.w, top: 1.h),
                                child: Text(
                                  "City",
                                  style: GoogleFonts.montserrat(
                                      fontSize: 8.sp,
                                      color: Color(0xFF263238),
                                      fontWeight: FontWeight.w700),
                                  softWrap: true,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 20.w, top: 1.h),
                                child: Text(
                                  "Gujranwala",
                                  style: GoogleFonts.montserrat(
                                      fontSize: 8.sp,
                                      color: Color(0xFFEF8503),
                                      fontWeight: FontWeight.w700),
                                  softWrap: true,
                                ),
                              ),
                            ],
                          ),
                        ],
                      )
                    ]),
                  ),
                ),
                SizedBox(
                  height: 2.h,
                ),
                Container(
                  margin: EdgeInsets.only(left: 8.w),
                  width: 90.w,
                  height: 14.h,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xFF263238),
                          offset:
                              Offset(0, 2), // shadow direction: bottom right
                          blurRadius: 3.0, // blur radius
                          spreadRadius: 0.3, // shadow spread radius
                        ),
                      ],
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(2.h),
                          topRight: Radius.circular(2.h),
                          bottomRight: Radius.circular(2.h),
                          bottomLeft: Radius.circular(2.h)),
                      border: Border.all(color: Color(0xFEFAFAFC))),
                  child: Row(children: [
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 1.h, left: 1.w),
                          width: 30.w,
                          height: 12.h,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(2.w),
                                  topRight: Radius.circular(2.w),
                                  bottomLeft: Radius.circular(2.w),
                                  bottomRight: Radius.circular(2.w)),
                              image: DecorationImage(
                                  image: AssetImage(
                                      'assets/page-1/images/Event1.png'),
                                  fit: BoxFit.cover)),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 2.w, top: 1.h),
                              child: Text(
                                "Future of Agriculture",
                                style: GoogleFonts.montserrat(
                                    fontSize: 12.sp,
                                    color: Color(0xff1f751f),
                                    fontWeight: FontWeight.w700),
                                softWrap: true,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: 1.w, top: 1.h),
                              child: Text(
                                "Date",
                                style: GoogleFonts.montserrat(
                                    fontSize: 8.sp,
                                    color: Color(0xFF263238),
                                    fontWeight: FontWeight.w700),
                                softWrap: true,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 20.w, top: 1.h),
                              child: Text(
                                "28 Nov 2023",
                                style: GoogleFonts.montserrat(
                                    fontSize: 8.sp,
                                    color: Color(0xFFEF8503),
                                    fontWeight: FontWeight.w700),
                                softWrap: true,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: 1.w, top: 1.h),
                              child: Text(
                                "Time",
                                style: GoogleFonts.montserrat(
                                    fontSize: 8.sp,
                                    color: Color(0xFF263238),
                                    fontWeight: FontWeight.w700),
                                softWrap: true,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 20.w, top: 1.h),
                              child: Text(
                                "12pm",
                                style: GoogleFonts.montserrat(
                                    fontSize: 8.sp,
                                    color: Color(0xFFEF8503),
                                    fontWeight: FontWeight.w700),
                                softWrap: true,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: 1.w, top: 1.h),
                              child: Text(
                                "City",
                                style: GoogleFonts.montserrat(
                                    fontSize: 8.sp,
                                    color: Color(0xFF263238),
                                    fontWeight: FontWeight.w700),
                                softWrap: true,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 20.w, top: 1.h),
                              child: Text(
                                "Gujranwala",
                                style: GoogleFonts.montserrat(
                                    fontSize: 8.sp,
                                    color: Color(0xFFEF8503),
                                    fontWeight: FontWeight.w700),
                                softWrap: true,
                              ),
                            ),
                          ],
                        ),
                      ],
                    )
                  ]),
                ),
                SizedBox(
                  height: 2.h,
                ),
                Container(
                  margin: EdgeInsets.only(left: 8.w),
                  width: 90.w,
                  height: 14.h,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xFF263238),
                          offset:
                              Offset(0, 2), // shadow direction: bottom right
                          blurRadius: 3.0, // blur radius
                          spreadRadius: 0.3, // shadow spread radius
                        ),
                      ],
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(2.h),
                          topRight: Radius.circular(2.h),
                          bottomRight: Radius.circular(2.h),
                          bottomLeft: Radius.circular(2.h)),
                      border: Border.all(color: Color(0xFEFAFAFC))),
                  child: Row(children: [
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 1.h, left: 1.w),
                          width: 30.w,
                          height: 12.h,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(2.w),
                                  topRight: Radius.circular(2.w),
                                  bottomLeft: Radius.circular(2.w),
                                  bottomRight: Radius.circular(2.w)),
                              image: DecorationImage(
                                  image: AssetImage(
                                      'assets/page-1/images/Event1.png'),
                                  fit: BoxFit.cover)),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 2.w, top: 1.h),
                              child: Text(
                                "Future of Agriculture",
                                style: GoogleFonts.montserrat(
                                    fontSize: 12.sp,
                                    color: Color(0xff1f751f),
                                    fontWeight: FontWeight.w700),
                                softWrap: true,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: 1.w, top: 1.h),
                              child: Text(
                                "Date",
                                style: GoogleFonts.montserrat(
                                    fontSize: 8.sp,
                                    color: Color(0xFF263238),
                                    fontWeight: FontWeight.w700),
                                softWrap: true,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 20.w, top: 1.h),
                              child: Text(
                                "28 Nov 2023",
                                style: GoogleFonts.montserrat(
                                    fontSize: 8.sp,
                                    color: Color(0xFFEF8503),
                                    fontWeight: FontWeight.w700),
                                softWrap: true,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: 1.w, top: 1.h),
                              child: Text(
                                "Time",
                                style: GoogleFonts.montserrat(
                                    fontSize: 8.sp,
                                    color: Color(0xFF263238),
                                    fontWeight: FontWeight.w700),
                                softWrap: true,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 20.w, top: 1.h),
                              child: Text(
                                "12pm",
                                style: GoogleFonts.montserrat(
                                    fontSize: 8.sp,
                                    color: Color(0xFFEF8503),
                                    fontWeight: FontWeight.w700),
                                softWrap: true,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: 1.w, top: 1.h),
                              child: Text(
                                "City",
                                style: GoogleFonts.montserrat(
                                    fontSize: 8.sp,
                                    color: Color(0xFF263238),
                                    fontWeight: FontWeight.w700),
                                softWrap: true,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 20.w, top: 1.h),
                              child: Text(
                                "Gujranwala",
                                style: GoogleFonts.montserrat(
                                    fontSize: 8.sp,
                                    color: Color(0xFFEF8503),
                                    fontWeight: FontWeight.w700),
                                softWrap: true,
                              ),
                            ),
                          ],
                        ),
                      ],
                    )
                  ]),
                ),
                SizedBox(
                  height: 2.h,
                ),
                Container(
                  margin: EdgeInsets.only(left: 8.w),
                  width: 90.w,
                  height: 14.h,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xFF263238),
                          offset:
                              Offset(0, 2), // shadow direction: bottom right
                          blurRadius: 3.0, // blur radius
                          spreadRadius: 0.3, // shadow spread radius
                        ),
                      ],
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(2.h),
                          topRight: Radius.circular(2.h),
                          bottomRight: Radius.circular(2.h),
                          bottomLeft: Radius.circular(2.h)),
                      border: Border.all(color: Color(0xFEFAFAFC))),
                  child: Row(children: [
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 1.h, left: 1.w),
                          width: 30.w,
                          height: 12.h,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(2.w),
                                  topRight: Radius.circular(2.w),
                                  bottomLeft: Radius.circular(2.w),
                                  bottomRight: Radius.circular(2.w)),
                              image: DecorationImage(
                                  image: AssetImage(
                                      'assets/page-1/images/Event1.png'),
                                  fit: BoxFit.cover)),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 2.w, top: 1.h),
                              child: Text(
                                "Future of Agriculture",
                                style: GoogleFonts.montserrat(
                                    fontSize: 12.sp,
                                    color: Color(0xff1f751f),
                                    fontWeight: FontWeight.w700),
                                softWrap: true,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: 1.w, top: 1.h),
                              child: Text(
                                "Date",
                                style: GoogleFonts.montserrat(
                                    fontSize: 8.sp,
                                    color: Color(0xFF263238),
                                    fontWeight: FontWeight.w700),
                                softWrap: true,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 20.w, top: 1.h),
                              child: Text(
                                "28 Nov 2023",
                                style: GoogleFonts.montserrat(
                                    fontSize: 8.sp,
                                    color: Color(0xFFEF8503),
                                    fontWeight: FontWeight.w700),
                                softWrap: true,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: 1.w, top: 1.h),
                              child: Text(
                                "Time",
                                style: GoogleFonts.montserrat(
                                    fontSize: 8.sp,
                                    color: Color(0xFF263238),
                                    fontWeight: FontWeight.w700),
                                softWrap: true,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 20.w, top: 1.h),
                              child: Text(
                                "12pm",
                                style: GoogleFonts.montserrat(
                                    fontSize: 8.sp,
                                    color: Color(0xFFEF8503),
                                    fontWeight: FontWeight.w700),
                                softWrap: true,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: 1.w, top: 1.h),
                              child: Text(
                                "City",
                                style: GoogleFonts.montserrat(
                                    fontSize: 8.sp,
                                    color: Color(0xFF263238),
                                    fontWeight: FontWeight.w700),
                                softWrap: true,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 20.w, top: 1.h),
                              child: Text(
                                "Gujranwala",
                                style: GoogleFonts.montserrat(
                                    fontSize: 8.sp,
                                    color: Color(0xFFEF8503),
                                    fontWeight: FontWeight.w700),
                                softWrap: true,
                              ),
                            ),
                          ],
                        ),
                      ],
                    )
                  ]),
                ),
                SizedBox(
                  height: 2.h,
                ),
                Container(
                  margin: EdgeInsets.only(left: 8.w),
                  width: 90.w,
                  height: 14.h,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xFF263238),
                          offset:
                              Offset(0, 2), // shadow direction: bottom right
                          blurRadius: 3.0, // blur radius
                          spreadRadius: 0.3, // shadow spread radius
                        ),
                      ],
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(2.h),
                          topRight: Radius.circular(2.h),
                          bottomRight: Radius.circular(2.h),
                          bottomLeft: Radius.circular(2.h)),
                      border: Border.all(color: Color(0xFEFAFAFC))),
                  child: Row(children: [
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 1.h, left: 1.w),
                          width: 30.w,
                          height: 12.h,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(2.w),
                                  topRight: Radius.circular(2.w),
                                  bottomLeft: Radius.circular(2.w),
                                  bottomRight: Radius.circular(2.w)),
                              image: DecorationImage(
                                  image: AssetImage(
                                      'assets/page-1/images/Event1.png'),
                                  fit: BoxFit.cover)),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 2.w, top: 1.h),
                              child: Text(
                                "Future of Agriculture",
                                style: GoogleFonts.montserrat(
                                    fontSize: 12.sp,
                                    color: Color(0xff1f751f),
                                    fontWeight: FontWeight.w700),
                                softWrap: true,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: 1.w, top: 1.h),
                              child: Text(
                                "Date",
                                style: GoogleFonts.montserrat(
                                    fontSize: 8.sp,
                                    color: Color(0xFF263238),
                                    fontWeight: FontWeight.w700),
                                softWrap: true,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 20.w, top: 1.h),
                              child: Text(
                                "28 Nov 2023",
                                style: GoogleFonts.montserrat(
                                    fontSize: 8.sp,
                                    color: Color(0xFFEF8503),
                                    fontWeight: FontWeight.w700),
                                softWrap: true,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: 1.w, top: 1.h),
                              child: Text(
                                "Time",
                                style: GoogleFonts.montserrat(
                                    fontSize: 8.sp,
                                    color: Color(0xFF263238),
                                    fontWeight: FontWeight.w700),
                                softWrap: true,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 20.w, top: 1.h),
                              child: Text(
                                "12pm",
                                style: GoogleFonts.montserrat(
                                    fontSize: 8.sp,
                                    color: Color(0xFFEF8503),
                                    fontWeight: FontWeight.w700),
                                softWrap: true,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: 1.w, top: 1.h),
                              child: Text(
                                "City",
                                style: GoogleFonts.montserrat(
                                    fontSize: 8.sp,
                                    color: Color(0xFF263238),
                                    fontWeight: FontWeight.w700),
                                softWrap: true,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 20.w, top: 1.h),
                              child: Text(
                                "Gujranwala",
                                style: GoogleFonts.montserrat(
                                    fontSize: 8.sp,
                                    color: Color(0xFFEF8503),
                                    fontWeight: FontWeight.w700),
                                softWrap: true,
                              ),
                            ),
                          ],
                        ),
                      ],
                    )
                  ]),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
