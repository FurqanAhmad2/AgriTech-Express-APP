import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class ViewEvent extends StatefulWidget {
  const ViewEvent({super.key});

  @override
  State<ViewEvent> createState() => _ViewEventState();
}

class _ViewEventState extends State<ViewEvent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(children: [
          Row(
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(40.w, 5.h, 0.w, 0.w),
                child: Text(
                  "Detail",
                  style: GoogleFonts.adventPro(
                      fontSize: 26.sp,
                      fontWeight: FontWeight.w700,
                      color: Colors.black),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 3.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 90.w,
                height: 30.h,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/page-1/images/DetailEvent.png'),
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
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 8.w, top: 2.h),
                child: Text(
                  "Future of Food and Agriculture",
                  style: GoogleFonts.adventPro(
                      fontSize: 22.sp,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff1f751f)),
                ),
              )
            ],
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 8.w, top: 0.h),
                child: Text(
                  "Gujranwala",
                  style: GoogleFonts.adventPro(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w700,
                      color: Color(0xffef8503)),
                ),
              )
            ],
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 8.w, top: 1.h),
                child: Text(
                  "Description",
                  style: GoogleFonts.adventPro(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w700,
                      color: Colors.black),
                ),
              )
            ],
          ),
          Container(
            margin: EdgeInsets.only(left: 8.w, top: 1.h),
            child: Text(
              "What we eat and how we grow it are changing. The need to feed a growing population, tackle hunger and obesity, and avoid trashing the planet is driving the next food and agricultural revolution. New Scientist Live’s Future of Food and Agriculture is an online event for everyone who cares what’s on their plate. Hear how science and technology is making it happen in a day of inspiring talks across three stages. Hear about the future of food from the world’s leading scientists on the Main Stage. Discover how farmers are protecting the environment, and why robots and genetics are changing the face of agriculture on the Field Stage. From lab-grown meat to sustainable diets, discover what’s coming to a plate near you on the Fork Stage.",
              style: GoogleFonts.adventPro(
                fontSize: 14.sp,
                fontWeight: FontWeight.w700,
                color: Color(0xFF8C8C8C),
              ),
              softWrap: true,
            ),
          ),
          SizedBox(
            height: 1.h,
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 8.w, top: 1.h),
                child: Text(
                  "Time",
                  style: GoogleFonts.adventPro(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w700,
                      color: Colors.black),
                ),
              )
            ],
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 8.w, top: 0.h),
                child: Text(
                  "Monday 12:00 pm",
                  style: GoogleFonts.adventPro(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w700,
                      color: Color(0xffef8503)),
                ),
              )
            ],
          ),
        ]),
      ),
    );
  }
}
