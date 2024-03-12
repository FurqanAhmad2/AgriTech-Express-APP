import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

Widget LanguageButton(String Language, String Image) {
  return TextButton(
    onPressed: () {},
    child: Container(
      width: 85.w,
      height: 10.h,
      margin: EdgeInsets.only(left: 5.w),
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Color(0xFFECEAEA)),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(3.h),
            topRight: Radius.circular(3.h),
            bottomRight: Radius.circular(3.h),
            bottomLeft: Radius.circular(3.h),
          )),
      child: Row(
        children: [
          Column(
            children: [
              Container(
                width: 12.w,
                height: 6.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(5.h),
                      bottomLeft: Radius.circular(5.h),
                    ),
                    image: DecorationImage(
                        image: AssetImage('assets/page-1/images/${Image}.png'),
                        fit: BoxFit.cover)),
                margin: EdgeInsets.only(left: 5.w, top: 2.h),
              ),
            ],
          ),
          Column(children: [
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 4.w, top: 2.h),
                  child: Text(
                    Language.toString(),
                    style: GoogleFonts.openSans(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                        decoration: TextDecoration.none),
                  ),
                ),
              ],
            ),
          ]),
        ],
      ),
    ),
  );
}
