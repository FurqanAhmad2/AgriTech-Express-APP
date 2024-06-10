import 'package:agri/Screens/Farmer_Consumer_ask.dart';
import 'package:agri/Screens/LoginScreen.dart';
import 'package:agri/Screens/SignupScreen.dart';
import 'package:agri/Widget/LanguageButton.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class LangaugeSection extends StatefulWidget {
  const LangaugeSection({super.key});

  @override
  State<LangaugeSection> createState() => _LangaugeSectionState();
}

class _LangaugeSectionState extends State<LangaugeSection> {
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
                margin: EdgeInsets.only(left: 10.w, top: 12.h),
                child: Text(
                  "Select your language",
                  style: GoogleFonts.montserrat(
                      fontSize: 21.sp,
                      color: Color(0xff1f751f),
                      fontWeight: FontWeight.w800),
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              LanguageButton("English", "England"),
              LanguageButton("Urdu", "Pakistan"),
              LanguageButton("Sindhi", "Sindhi"),
              LanguageButton("Bengali", "Bengali"),
              LanguageButton("Hindi", "India"),
              Container(
                margin: EdgeInsets.fromLTRB(25.w, 4.h, 8.w, 0.w),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => FarmerConsumerAsk()));
                  },
                  child: Container(
                    width: 40.w,
                    height: 6.h,
                    decoration: BoxDecoration(
                      color: Color(0xff1f751f),
                      borderRadius: BorderRadius.circular(6.w),
                    ),
                    child: Center(
                      child: Text(
                        "Next",
                        style: GoogleFonts.montserrat(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w700,
                            color: Color(0xffffffff)),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
