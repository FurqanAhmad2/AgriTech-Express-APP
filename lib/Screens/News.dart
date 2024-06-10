import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class News extends StatefulWidget {
  const News({Key? key});

  @override
  _NewsState createState() => _NewsState();
}

class _NewsState extends State<News> {
  List<dynamic> newsData = [];

  @override
  void initState() {
    super.initState();
    fetchNewsData();
  }

  Future<void> fetchNewsData() async {
    try {
      final response = await http.get(Uri.parse('http://192.168.100.9:3002/news'));
      if (response.statusCode == 200) {
        setState(() {
          newsData = json.decode(response.body);
        });
      } else {
        throw Exception('Failed to load news data');
      }
    } catch (error) {
      print('Error fetching news data: $error');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(color: Color(0xfff5f5f5)),
        child: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xffffffff),
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
                    ),
                  ),
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(35.w, 5.h, 0.w, 0.w),
                        child: Text(
                          "News",
                          style: GoogleFonts.adventPro(
                            fontSize: 26.sp,
                            fontWeight: FontWeight.w700,
                            color: Color(0xffffffff),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 30.w,
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
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(7.w, 2.h, 0.w, 0.w),
                  child: Text(
                    "Today",
                    style: GoogleFonts.adventPro(
                      fontSize: 26.sp,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff1f751f),
                    ),
                  ),
                ),
                SizedBox(
                  height: 2.h,
                ),
                ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: newsData.length,
                  itemBuilder: (context, index) {
                    final news = newsData[index];
                    return Container(
                      margin: EdgeInsets.symmetric(vertical: 1.h),
                      child: Column(
                        children: [
                          Container(
                            width: double.infinity,
                            height: 30.h,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(news['imageUrl']),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(2.h),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 4.w),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 1.h),
                                Text(
                                  news['title'],
                                  style: GoogleFonts.adventPro(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xff000000),
                                  ),
                                ),
                                SizedBox(height: 0.5.h),
                                Text(
                                  news['description'],
                                  softWrap: true,
                                  style: GoogleFonts.adventPro(
                                    fontSize: 14.sp,
                                    color: Color(0xff333333),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
