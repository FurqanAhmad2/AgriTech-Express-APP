import 'package:agri/Screens/Farmer_Consumer_ask.dart';
import 'package:agri/Screens/LanguageSection.dart';
import 'package:agri/Screens/LoginScreen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key});

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
            // image: DecorationImage(
            //   image: AssetImage(
            //     'assets/page-1/images/image-1-bg.png',
            //   ),
            //   fit: BoxFit.fill,
            // ),
            gradient: LinearGradient(
              begin: Alignment(0, -1),
              end: Alignment(0, 1),
              colors: <Color>[
                Color(0xf200904a),
                Color(0x33ffffff),
                Color(0xff3bb178)
              ],
              stops: <double>[0, 0.5, 1],
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 3.h,
              ),
              // Container with group-AMP.png at the top
              Container(
                margin: EdgeInsets.fromLTRB(23.w, 25.h, 0.w, 0.h),
                width: 50.w,
                height: 20.h,
                child: Image.asset('assets/page-1/images/logo-psS.png'),
              ),
              SizedBox(
                height: 1.h,
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 7.w),
                    child: Text(
                      "Agri",
                      style: GoogleFonts.montserrat(
                          fontSize: 28.sp,
                          color: Color(0xff1f751f),
                          fontWeight: FontWeight.w800),
                    ),
                  ),
                  Text(
                    "Tech",
                    style: GoogleFonts.montserrat(
                        fontSize: 28.sp,
                        color: Color(0xffef8503),
                        fontWeight: FontWeight.w800),
                  ),
                  SizedBox(
                    width: 2.w,
                  ),
                  Text(
                    "Express",
                    style: GoogleFonts.montserrat(
                        fontSize: 28.sp,
                        color: Color(0xff1f751f),
                        fontWeight: FontWeight.w800),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(left: 12.w, top: 1.h),
                child: Text(
                  "Your One-Stop Agricultural Marketplace",
                  style: GoogleFonts.openSans(
                      fontSize: 12.sp,
                      color: Color(0xff000000),
                      fontWeight: FontWeight.w500),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(29.w, 4.h, 7.w, 0.h),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => LangaugeSection()));
                  },
                  child: Container(
                    width: 38.w,
                    height: 6.h,
                    decoration: BoxDecoration(
                      color: Color(0xff1f751f),
                      borderRadius: BorderRadius.circular(6.w),
                    ),
                    child: Center(
                      child: Text(
                        "Get Started",
                        style: GoogleFonts.montserrat(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w700,
                            color: Color(0xffffffff)),
                      ),
                    ),
                  ),
                ),
              ),

              // Container(
              //   margin: EdgeInsets.fromLTRB(65.w, 0.h, 0.w, 0.h),
              //   width: 25.w,
              //   height: 13.h,
              //   child: Image.asset('assets/page-1/images/flying-man.png'),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
