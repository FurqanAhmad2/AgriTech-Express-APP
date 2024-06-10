import 'package:agri/Screens/SignupScreen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class FarmerConsumerAsk extends StatelessWidget {
  const FarmerConsumerAsk({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: Color(0x113bb178)),
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Color(0xffffffff),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(left: 8.w, top: 12.h),
                child: Text(
                  "Farmer or Consumer?",
                  style: GoogleFonts.montserrat(
                      fontSize: 21.sp,
                      color: Color(0xff1f751f),
                      fontWeight: FontWeight.w800),
                ),
              ),
              SizedBox(
                height: 2.h,
              ),

              Container(
                margin: EdgeInsets.fromLTRB(23.w, 7.h, 0.w, 0.h),
                width: 50.w,
                height: 20.h,
                child: Image.asset('assets/page-1/images/farmer-vector.png'),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(20.w, 4.h, 7.w, 0.h),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SignUpScreen()));
                  },
                  child: Container(
                    width: 55.w,
                    height: 7.h,
                    decoration: BoxDecoration(
                      color: Color(0xff1f751f),
                      borderRadius: BorderRadius.circular(6.w),
                    ),
                    child: Center(
                      child: Text(
                        "Continue As Farmer ",
                        style: GoogleFonts.montserrat(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w700,
                            color: Color(0xffffffff)),
                      ),
                    ),
                  ),
                ),
              ),

              SizedBox(
                height: 1.h,
              ),

              Container(
                margin: EdgeInsets.fromLTRB(23.w, 3.h, 0.w, 0.h),
                width: 50.w,
                height: 20.h,
                child: Image.asset('assets/page-1/images/consumer-vector.png'),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(17.w, 2.h, 7.w, 0.h),
                child: TextButton(
                  onPressed: () {},
                  child: Container(
                    width: 60.w,
                    height: 7.h,
                    decoration: BoxDecoration(
                      color: Color(0xffe0e0e0),
                      borderRadius: BorderRadius.circular(6.w),
                    ),
                    child: Center(
                      child: Text(
                        "Continue As Consumer",
                        style: GoogleFonts.montserrat(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w700,
                            color: Color(0xff828282)),
                      ),
                    ),
                  ),
                ),
              ),
              // SizedBox(
              //   height: 1.h,
              // ),
              // Row(
              //   children: [
              //     Container(
              //       margin: EdgeInsets.only(left: 7.w),
              //       child: Text(
              //         "Agri",
              //         style: GoogleFonts.montserrat(
              //             fontSize: 28.sp,
              //             color: Color(0xff1f751f),
              //             fontWeight: FontWeight.w800),
              //       ),
              //     ),
              //     Text(
              //       "Tech",
              //       style: GoogleFonts.montserrat(
              //           fontSize: 28.sp,
              //           color: Color(0xffef8503),
              //           fontWeight: FontWeight.w800),
              //     ),
              //     SizedBox(
              //       width: 2.w,
              //     ),
              //     Text(
              //       "Express",
              //       style: GoogleFonts.montserrat(
              //           fontSize: 28.sp,
              //           color: Color(0xff1f751f),
              //           fontWeight: FontWeight.w800),
              //     ),
              //   ],
              // ),
              // Container(
              //   margin: EdgeInsets.only(left: 12.w, top: 1.h),
              //   child: Text(
              //     "Your One-Stop Agricultural Marketplace",
              //     style: GoogleFonts.openSans(
              //         fontSize: 12.sp,
              //         color: Color(0xff000000),
              //         fontWeight: FontWeight.w500),
              //   ),
              // ),

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
