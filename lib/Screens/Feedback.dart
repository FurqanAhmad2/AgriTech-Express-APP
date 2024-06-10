import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:http/http.dart' as http;

class FeedbackScreen extends StatefulWidget {
  FeedbackScreen({Key? key});

  @override
  State<FeedbackScreen> createState() => _FeedbackScreenState();
}

class _FeedbackScreenState extends State<FeedbackScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController feedbackController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  void submitFeedback() async {
    var feedbackBody = {
      'name': nameController.text,
      'email': emailController.text,
      'feedback': feedbackController.text
    };
    try {
      var response = await http.post(Uri.parse('http://192.168.0.118:3002/feedback'),
          body: jsonEncode(feedbackBody),
          headers: {'Content-Type': 'application/json'});
      var res = json.decode(response.body);

      print(res["Status"]);

      if (response.statusCode == 200) {
        showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                content: Text("Feedback Submitted Successfully"),
                actions: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Center(
                      child: Text('OK'),
                    ),
                  ),
                ],
              );
            });
      } else {
        showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                content: Text("Submission Failed"),
                actions: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Center(
                      child: Text('Try Again'),
                    ),
                  ),
                ],
              );
            });
      }
    } catch (err) {
      print(err);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(color: Color(0xfff5f5f5)),
          child: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment(0, -1),
                end: Alignment(0, 2.1),
                colors: <Color>[Color(0x26ffffff), Color(0xff00904a)],
                stops: <double>[0.094, 1],
              ),
            ),
            child: Form(
              key: formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 5.h,
                  ),
                  // Container with logo at the top
                  Center(
                    child: Container(
                      width: 35.w,
                      height: 12.h,
                      child: Image.asset('assets/page-1/images/logo-psS.png'),
                    ),
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  Text(
                    "Feedback",
                    style: TextStyle(
                        fontSize: 20.sp,
                        color: Color(0xffef8503),
                        fontWeight: FontWeight.w800),
                  ),
                  Text(
                    "We would love to hear your thoughts",
                    style: TextStyle(
                        fontSize: 10.sp,
                        color: Color(0xff000000),
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 3.h,
                  ),
                  Container(
                    height: 6.h,
                    width: 80.w,
                    margin: EdgeInsets.symmetric(vertical: 3.h),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.w),
                      border: Border.all(color: Color(0xff8c8c8c)),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5.w),
                      child: TextFormField(
                        validator: (value) {
                          if (value!.isEmpty ||
                              !RegExp(r'^[a-zA-Z\s]+$').hasMatch(value)) {
                            return "Invalid Name";
                          } else {
                            return null;
                          }
                        },
                        controller: nameController,
                        style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w700,
                            color: Color(0xff1f751f)),
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Name",
                            hintStyle: TextStyle(
                                fontSize: 4.w,
                                fontWeight: FontWeight.w600,
                                color: Color(0xff1f751f))),
                      ),
                    ),
                  ),
                  Container(
                    height: 6.h,
                    width: 80.w,
                    margin: EdgeInsets.symmetric(vertical: 3.h),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.w),
                      border: Border.all(color: Color(0xff8c8c8c)),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5.w),
                      child: TextFormField(
                        validator: (value) {
                          if (value!.isEmpty ||
                              !RegExp(r'^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+')
                                  .hasMatch(value)) {
                            return "Invalid Email";
                          } else {
                            return null;
                          }
                        },
                        controller: emailController,
                        style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w700,
                            color: Color(0xff1f751f)),
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Email",
                            hintStyle: TextStyle(
                                fontSize: 4.w,
                                fontWeight: FontWeight.w600,
                                color: Color(0xff1f751f))),
                      ),
                    ),
                  ),
                  Container(
                    height: 15.h,
                    width: 80.w,
                    margin: EdgeInsets.symmetric(vertical: 3.h),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.w),
                      border: Border.all(color: Color(0xff8c8c8c)),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5.w),
                      child: TextFormField(
                        maxLines: 5,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Feedback cannot be empty";
                          } else {
                            return null;
                          }
                        },
                        controller: feedbackController,
                        style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w700,
                            color: Color(0xff1f751f)),
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Feedback",
                            hintStyle: TextStyle(
                                fontSize: 4.w,
                                fontWeight: FontWeight.w600,
                                color: Color(0xff1f751f))),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 3.h),
                    child: TextButton(
                      onPressed: () async {
                        if (formKey.currentState != null &&
                            formKey.currentState!.validate()) {
                          submitFeedback();
                        }
                      },
                      child: Container(
                        width: 78.w,
                        height: 6.h,
                        decoration: BoxDecoration(
                          color: Color(0xff1f751f),
                          borderRadius: BorderRadius.circular(6.w),
                        ),
                        child: Center(
                          child: Text(
                            "Submit",
                            style: TextStyle(
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
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: FeedbackScreen(),
  ));
}
