import 'package:agri/Screens/AddSeed.dart';
import 'package:agri/Screens/Categorie.dart';
import 'package:agri/Screens/ProductsPage.dart';
import 'package:agri/Screens/AddAddress.dart';
import 'package:agri/Screens/EditProfile.dart';
import 'package:agri/Screens/Categorie_Consulting.dart';
import 'package:agri/Screens/Consulting.dart';
import 'package:agri/Screens/AddSeed.dart';
import 'package:agri/Screens/Farmer_Consumer_ask.dart';
import 'package:agri/Screens/Events.dart';
import 'package:agri/Screens/Feedback.dart';
import 'package:agri/Screens/News.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:agri/Widget/GlobalVar.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key});

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
                      margin: EdgeInsets.fromLTRB(10.w, 8.h, 0.w, 0.w),
                      child: Text(
                        "Welcome ${username.toString()}",
                        style: GoogleFonts.adventPro(
                            fontSize: 26.sp,
                            fontWeight: FontWeight.w700,
                            color: Color(0xffffffff)),
                      ),
                    ),
                    SizedBox(
                      width: 18.w,
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
                  "Category",
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
                          margin: EdgeInsets.only(left: 7.w),
                          width: 28.w,
                          height: 12.h,
                          decoration: BoxDecoration(
                            color: Color(0x141f751f),
                            borderRadius: BorderRadius.circular(25.w),
                          ),
                          child: Center(
                            child: TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Categorie()));
                              },
                              child: Image.asset(
                                'assets/page-1/images/products-63T.png',
                                width: 20.w,
                                height: 5.h,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 6.w),
                          child: Text(
                            "Crops",
                            style: GoogleFonts.adventPro(
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w700,
                                color: Color(0xff1f751f)),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 7.w),
                          width: 28.w,
                          height: 12.h,
                          decoration: BoxDecoration(
                            color: Color(0x141f751f),
                            borderRadius: BorderRadius.circular(25.w),
                          ),
                          child: Center(
                            child: TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => News()));
                              },
                              child: Image.asset(
                                'assets/page-1/images/frame-8-EG9.png',
                                width: 20.w,
                                height: 5.h,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 6.w),
                          child: Text(
                            "News",
                            style: GoogleFonts.adventPro(
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w700,
                                color: Color(0xff1f751f)),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 7.w),
                          width: 28.w,
                          height: 12.h,
                          decoration: BoxDecoration(
                            color: Color(0x141f751f),
                            borderRadius: BorderRadius.circular(25.w),
                          ),
                          child: Center(
                            child: TextButton(
                              onPressed: () {
                              

                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            CategorieConsulting()));
                              },
                              child: Image.asset(
                                'assets/page-1/images/frame-9-V8m.png',
                                width: 20.w,
                                height: 5.h,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 6.w),
                          child: Text(
                            "Consulting",
                            style: GoogleFonts.adventPro(
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w700,
                                color: Color(0xff1f751f)),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 7.w),
                          width: 28.w,
                          height: 12.h,
                          decoration: BoxDecoration(
                            color: Color(0x141f751f),
                            borderRadius: BorderRadius.circular(25.w),
                          ),
                          child: Center(
                            child: TextButton(
                              onPressed: () {},
                              child: Image.asset(
                                'assets/page-1/images/group-3-ith.png',
                                width: 25.w,
                                height: 8.h,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Event()));
                          },
                          child: Container(
                            margin: EdgeInsets.only(left: 6.w),
                            child: Text(
                              "Events",
                              style: GoogleFonts.adventPro(
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xff1f751f)),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 7.w),
                          width: 28.w,
                          height: 12.h,
                          decoration: BoxDecoration(
                            color: Color(0x141f751f),
                            borderRadius: BorderRadius.circular(25.w),
                          ),
                          child: Center(
                            child: TextButton(
                              onPressed: () {},
                              child: Image.asset(
                                'assets/page-1/images/group-3-ith.png',
                                width: 25.w,
                                height: 8.h,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => AddAddressScreen()));
                          },
                          child: Container(
                            margin: EdgeInsets.only(left: 6.w),
                            child: Text(
                              "Add Address",
                              style: GoogleFonts.adventPro(
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xff1f751f)),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 7.w),
                          width: 28.w,
                          height: 12.h,
                          decoration: BoxDecoration(
                            color: Color(0x141f751f),
                            borderRadius: BorderRadius.circular(25.w),
                          ),
                          child: Center(
                            child: TextButton(
                              onPressed: () {},
                              child: Image.asset(
                                'assets/page-1/images/group-3-ith.png',
                                width: 25.w,
                                height: 8.h,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => EditProfileScreen()));
                          },
                          child: Container(
                            margin: EdgeInsets.only(left: 6.w),
                            child: Text(
                              "Edit Profile",
                              style: GoogleFonts.adventPro(
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xff1f751f)),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 7.w),
                          width: 28.w,
                          height: 12.h,
                          decoration: BoxDecoration(
                            color: Color(0x141f751f),
                            borderRadius: BorderRadius.circular(25.w),
                          ),
                          child: Center(
                            child: TextButton(
                              onPressed: () {},
                              child: Image.asset(
                                'assets/page-1/images/group-3-ith.png',
                                width: 25.w,
                                height: 8.h,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ProductPage()));
                          },
                          child: Container(
                            margin: EdgeInsets.only(left: 6.w),
                            child: Text(
                              "Products",
                              style: GoogleFonts.adventPro(
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xff1f751f)),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 7.w),
                          width: 28.w,
                          height: 12.h,
                          decoration: BoxDecoration(
                            color: Color(0x141f751f),
                            borderRadius: BorderRadius.circular(25.w),
                          ),
                          child: Center(
                            child: TextButton(
                              onPressed: () {},
                              child: Image.asset(
                                'assets/page-1/images/group-3-ith.png',
                                width: 25.w,
                                height: 8.h,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => AddSeedPage()));
                          },
                          child: Container(
                            margin: EdgeInsets.only(left: 6.w),
                            child: Text(
                              "Add Seeds",
                              style: GoogleFonts.adventPro(
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xff1f751f)),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 7.w),
                          width: 28.w,
                          height: 12.h,
                          decoration: BoxDecoration(
                            color: Color(0x141f751f),
                            borderRadius: BorderRadius.circular(25.w),
                          ),
                          child: Center(
                            child: TextButton(
                              onPressed: () {},
                              child: Image.asset(
                                'assets/page-1/images/group-3-ith.png',
                                width: 25.w,
                                height: 8.h,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => FeedbackScreen()));
                          },
                          child: Container(
                            margin: EdgeInsets.only(left: 6.w),
                            child: Text(
                              "FEEDBACK",
                              style: GoogleFonts.adventPro(
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xff1f751f)),
                            ),
                          ),
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
                margin: EdgeInsets.fromLTRB(5.w, 2.h, 0.w, 0.w),
                child: Text(
                  "News",
                  style: GoogleFonts.adventPro(
                      fontSize: 26.sp,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff1f751f)),
                ),
              ),
              SizedBox(
                height: 3.h,
              ),
              Container(
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 1.w),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.w),
                      ),
                      width: 90.w,
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.w)),
                        child: Image.asset(
                            'assets/page-1/images/rectangle-10-bg-f1T.png'),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 9.w, top: 1.h, right: 1.w),
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
            ],
          ),
        ),
      ),
      )
    );
  }
}
