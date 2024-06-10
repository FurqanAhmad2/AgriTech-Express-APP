import 'dart:convert';
import 'package:agri/Screens/twoFA.dart';
import 'package:agri/Screens/HomeScreen.dart';
import 'package:agri/Screens/SignupScreen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sizer/sizer.dart';
import 'package:agri/Screens/SignupScreen.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  void UserLogin() async {
    var regBody = {'email': email.text, 'password': password.text};
    try {
      var resp = await http.post(Uri.parse('http://192.168.0.118:3002/login'),
          body: jsonEncode(regBody),
          headers: {'Content-Type': 'application/json'});
      var res = json.decode(resp.body);
      print(res);

      if (res.containsKey('token')) {
        SharedPreferences prefs = await SharedPreferences.getInstance();
        await prefs.setString('email', email.text);

        // Check if user status is Verified
        if (res['status'] == 'Verified') {
          // User is verified, navigate to HomeScreen
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => HomeScreen()),
          );
        } else {
          // User is not verified, navigate to TwoFactorAuthScreen
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => TwoFactorAuthScreen(email: email.text)),
          );
        }
      } else {
        showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              content: Text("Enter Correct email or password "),
              actions: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Center(
                    child: Text('OK'),
                  ),
                ),
              ],
            );
          },
        );
      }
    } catch (err) {
      print(err);
    }
  }

  GlobalKey<FormState> k = GlobalKey();

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
                      margin: EdgeInsets.only(left: 15.w),
                      child: Text(
                        "Welcome Farmer!",
                        style: GoogleFonts.montserrat(
                            fontSize: 22.sp,
                            color: Color(0xff1f751f),
                            fontWeight: FontWeight.w800),
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(left: 28.w, top: 1.h),
                  child: Text(
                    "Please Sign in to continue",
                    style: GoogleFonts.openSans(
                        fontSize: 12.sp,
                        color: Color(0xff000000),
                        fontWeight: FontWeight.w500),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 33.w, top: 2.h),
                  child: Text(
                    "Sign in",
                    style: GoogleFonts.montserrat(
                        fontSize: 28.sp,
                        color: Color(0xffef8503),
                        fontWeight: FontWeight.w800),
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
                        if (value!.isEmpty || !RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$').hasMatch(value)) {
                          return "Invalid Email";
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
                              fontSize: 6.w,
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
                      obscureText: true, // This makes the text obscure
                      validator: (value) {
                        if (value!.isEmpty || value.length < 6) {
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
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 47.w),
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "Forget Password?",
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
                      if (k.currentState != null) {
                        UserLogin();
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
                          "Sign in",
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
                          "Don’t have an account?",
                          style: GoogleFonts.montserrat(
                              fontSize: 11.sp,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff8c8c8c)),
                        ),
                        TextButton(
                            onPressed: () {
                              // Navigate to the signup page screen
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => SignUpScreen()),
                              );
                            },
                            child: Text(
                              "Sign up",
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

void main() {
  runApp(MaterialApp(
    home: LoginScreen(),
  ));
}
