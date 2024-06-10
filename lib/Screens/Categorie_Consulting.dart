import 'package:agri/Screens/Chat.dart';
import 'package:agri/Screens/Farmer_Consumer_ask.dart';
import 'package:agri/Screens/Events.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class CategorieConsulting extends StatelessWidget {
  const CategorieConsulting({Key? key});

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
                        margin: EdgeInsets.fromLTRB(35.w, 8.h, 0.w, 0.w),
                        child: Text(
                          "Consulting",
                          style: GoogleFonts.adventPro(
                              fontSize: 26.sp,
                              fontWeight: FontWeight.w700,
                              color: Color(0xffffffff)),
                        ),
                      ),
                      SizedBox(
                        width: 15.w,
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
                    "Active",
                    style: GoogleFonts.adventPro(
                        fontSize: 26.sp,
                        fontWeight: FontWeight.w700,
                        color: Colors.black),
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Column(
                        children: [
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Chat()));
                            },
                            child: Container(
                              margin: EdgeInsets.only(left: 5.w),
                              width: 20.w,
                              height: 8.h,
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
                          ),
                          SizedBox(
                            height: 1.h,
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          TextButton(
                            onPressed: () {},
                            child: Container(
                              margin: EdgeInsets.only(left: 5.w),
                              width: 20.w,
                              height: 8.h,
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
                          ),
                          SizedBox(
                            height: 1.h,
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Chat()));
                            },
                            child: Container(
                              margin: EdgeInsets.only(left: 5.w),
                              width: 20.w,
                              height: 8.h,
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
                  height: 1.h,
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(10.w, 0.h, 0.w, 0.w),
                  child: Text(
                    "Chat",
                    style: GoogleFonts.adventPro(
                        fontSize: 26.sp,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff1f751f)),
                  ),
                ),
                SizedBox(
                  height: 1.h,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Chat()));
                  },
                  child: Container(
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 7.w, top: 1.h),
                              width: 18.w,
                              height: 10.h,
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
                          ],
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  margin:
                                      EdgeInsets.fromLTRB(2.w, 0.h, 0.w, 0.w),
                                  child: Text(
                                    "Ibrahim Memon",
                                    style: GoogleFonts.adventPro(
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.black),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                  margin:
                                      EdgeInsets.fromLTRB(0.w, 0.h, 0.w, 0.w),
                                  child: Text(
                                    "You: Yes 12:00pm",
                                    style: GoogleFonts.adventPro(
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w700,
                                        color: Color(0xFF454545)),
                                  ),
                                ),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Chat()));
                  },
                  child: Container(
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 7.w, top: 1.h),
                              width: 18.w,
                              height: 10.h,
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
                          ],
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  margin:
                                      EdgeInsets.fromLTRB(2.w, 0.h, 0.w, 0.w),
                                  child: Text(
                                    "Ibrahim Memon",
                                    style: GoogleFonts.adventPro(
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.black),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                  margin:
                                      EdgeInsets.fromLTRB(0.w, 0.h, 0.w, 0.w),
                                  child: Text(
                                    "You: Yes 12:00pm",
                                    style: GoogleFonts.adventPro(
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w700,
                                        color: Color(0xFF454545)),
                                  ),
                                ),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Container(
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 7.w, top: 1.h),
                              width: 18.w,
                              height: 10.h,
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
                          ],
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  margin:
                                      EdgeInsets.fromLTRB(2.w, 0.h, 0.w, 0.w),
                                  child: Text(
                                    "Ibrahim Memon",
                                    style: GoogleFonts.adventPro(
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.black),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                  margin:
                                      EdgeInsets.fromLTRB(0.w, 0.h, 0.w, 0.w),
                                  child: Text(
                                    "You: Yes 12:00pm",
                                    style: GoogleFonts.adventPro(
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w700,
                                        color: Color(0xFF454545)),
                                  ),
                                ),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Container(
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 7.w, top: 1.h),
                              width: 18.w,
                              height: 10.h,
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
                          ],
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  margin:
                                      EdgeInsets.fromLTRB(2.w, 0.h, 0.w, 0.w),
                                  child: Text(
                                    "Ibrahim Memon",
                                    style: GoogleFonts.adventPro(
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.black),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                  margin:
                                      EdgeInsets.fromLTRB(0.w, 0.h, 0.w, 0.w),
                                  child: Text(
                                    "You: Yes 12:00pm",
                                    style: GoogleFonts.adventPro(
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w700,
                                        color: Color(0xFF454545)),
                                  ),
                                ),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Container(
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 7.w, top: 1.h),
                              width: 18.w,
                              height: 10.h,
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
                          ],
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  margin:
                                      EdgeInsets.fromLTRB(2.w, 0.h, 0.w, 0.w),
                                  child: Text(
                                    "Ibrahim Memon",
                                    style: GoogleFonts.adventPro(
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.black),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                  margin:
                                      EdgeInsets.fromLTRB(0.w, 0.h, 0.w, 0.w),
                                  child: Text(
                                    "You: Yes 12:00pm",
                                    style: GoogleFonts.adventPro(
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w700,
                                        color: Color(0xFF454545)),
                                  ),
                                ),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Container(
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 7.w, top: 1.h),
                              width: 18.w,
                              height: 10.h,
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
                          ],
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  margin:
                                      EdgeInsets.fromLTRB(2.w, 0.h, 0.w, 0.w),
                                  child: Text(
                                    "Ibrahim Memon",
                                    style: GoogleFonts.adventPro(
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.black),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                  margin:
                                      EdgeInsets.fromLTRB(0.w, 0.h, 0.w, 0.w),
                                  child: Text(
                                    "You: Yes 12:00pm",
                                    style: GoogleFonts.adventPro(
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w700,
                                        color: Color(0xFF454545)),
                                  ),
                                ),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
