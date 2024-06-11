import 'dart:convert';

import 'package:agri/Screens/LoginScreen.dart';
import 'package:agri/Screens/twoFA.dart';
import 'package:agri/Screens/Feedback.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:http/http.dart' as http;

class SignUpScreen extends StatefulWidget {
  SignUpScreen({Key? key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController email = TextEditingController();
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController confirmPassword = TextEditingController();

  void registerUser() async {
    var regBody = {
      'username': username.text,
      'email': email.text,
      'password': password.text
    };
    try {
      var resp = await http.post(Uri.parse('http://192.168.0.118:3002/signup'),
          body: jsonEncode(regBody),
          headers: {'Content-Type': 'application/json'});
      var res = json.decode(resp.body);

      print(res["Status"]);

      if (resp.statusCode == 201) {
        showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                content: Text("Your Successfully Registered"),
                actions: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  TwoFactorAuthScreen(email: email.text))); // pass the email
                    },
                    child: Center(
                      child: Text('OK'),
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

  GlobalKey<FormState> k = new GlobalKey();

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
            gradient: LinearGradient(
              begin: Alignment(0, -1),
              end: Alignment(0, 2.1),
              colors: <Color>[Color(0x26ffffff), Color(0xff00904a)],
              stops: <double>[0.094, 1],
            ),
          ),
          child: Form(
            key: k,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 1.h,
                ),
                // Container with group-AMP.png at the top
                Container(
                  margin: EdgeInsets.fromLTRB(30.w, 7.h, 0.w, 0.h),
                  width: 35.w,
                  height: 12.h,
                  child: Image.asset('assets/page-1/images/logo-psS.png'),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 27.w),
                      child: Text(
                        "Sign Up",
                        style: GoogleFonts.montserrat(
                            fontSize: 32.sp,
                            color: Color(0xffef8503),
                            fontWeight: FontWeight.w800),
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(left: 29.w, top: 1.h),
                  child: Text(
                    "Create your new account",
                    style: GoogleFonts.openSans(
                        fontSize: 10.sp,
                        color: Color(0xff000000),
                        fontWeight: FontWeight.w500),
                  ),
                ),

                SizedBox(
                  height: 3.h,
                ),
                Container(
                  height: 6.h,
                  width: 80.w,
                  margin: EdgeInsets.fromLTRB(8.w, 3.h, 8.w, 0.w),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.w),
                    border: Border.all(color: Color(0xff8c8c8c)),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5.w),
                    child: TextFormField(
                      validator: (value) {
                        if (value!.isEmpty ||
                            !RegExp(r'^[a-zA-Z]+$').hasMatch(value)) {
                          return "Invalid Username";
                        } else {
                          return null;
                        }
                      },
                      onChanged: (value) {
                        username.text = value;
                      },
                      style: GoogleFonts.montserrat(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff1f751f)),
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Username",
                          hintStyle: GoogleFonts.openSans(
                              fontSize: 4.w,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff1f751f))),
                    ),
                  ),
                ),
                Container(
                  height: 6.h,
                  width: 80.w,
                  margin: EdgeInsets.fromLTRB(8.w, 3.h, 8.w, 0.w),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.w),
                    border: Border.all(color: Color(0xff8c8c8c)),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5.w),
                    child: TextFormField(
                      validator: (value) {
                        if (value!.isEmpty ||
                            !RegExp(
                                r'^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+')
                                .hasMatch(value)) {
                          return "Invalid email";
                        } else {
                          return null;
                        }
                      },
                      onChanged: (value) {
                        email.text = value;
                      },
                      style: GoogleFonts.montserrat(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff1f751f)),
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Email",
                          hintStyle: GoogleFonts.openSans(
                              fontSize: 4.w,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff1f751f))),
                    ),
                  ),
                ),
                Container(
                  height: 6.h,
                  width: 80.w,
                  margin: EdgeInsets.fromLTRB(8.w, 4.h, 8.w, 0.w),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.w),
                    border: Border.all(color: Color(0xff8c8c8c)),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5.w),
                    child: TextFormField(
                      obscureText: true, // Set this to obscure the text
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Invalid Password";
                        } else {
                          return null;
                        }
                      },
                      onChanged: (value) {
                        password.text = value;
                      },
                      style: GoogleFonts.montserrat(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff1f751f)),
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Password",
                          hintStyle: GoogleFonts.openSans(
                              fontSize: 4.w,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff1f751f))),
                    ),
                  ),
                ),
                Container(
                  height: 6.h,
                  width: 80.w,
                  margin: EdgeInsets.fromLTRB(8.w, 3.h, 8.w, 0.w),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.w),
                    border: Border.all(color: Color(0xff8c8c8c)),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5.w),
                    child: TextFormField(
                      obscureText: true, // Set this to obscure the text
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Invalid Confirm Password";
                        } else if (value != password.text) {
                          return "Passwords do not match";
                        } else {
                          return null;
                        }
                      },
                      onChanged: (value) {
                        confirmPassword.text = value;
                      },
                      style: GoogleFonts.montserrat(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff1f751f)),
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Confirm Password",
                          hintStyle: GoogleFonts.openSans(
                              fontSize: 4.w,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff1f751f))),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 9.w),
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "I Agree to the Terms & Policy",
                          style: GoogleFonts.montserrat(
                              fontSize: 12.sp,
                              color: Color(0xffef8503),
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    )
                  ],
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(6.w, 1.h, 8.w, 0.w),
                  child: TextButton(
                    onPressed: () async {
                      if (k.currentState != null && k.currentState!.validate()) {
                        registerUser();
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
                          "Sign up",
                          style: GoogleFonts.montserrat(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w700,
                              color: Color(0xffffffff)),
                        ),
                      ),
                    ),
                  ),
                ),

                Container(
                  margin: EdgeInsets.fromLTRB(17.w, 0.h, 0.w, 0.h),
                  child: Center(
                    child: Row(
                      children: [
                        Text(
                          "Already have an account?",
                          style: GoogleFonts.montserrat(
                              fontSize: 11.sp,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff8c8c8c)),
                        ),
                        TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => LoginScreen()));
                            },
                            child: Text(
                              "Sign in",
                              style: GoogleFonts.montserrat(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xff1f751f)),
                            ))
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
