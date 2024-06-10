import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:http/http.dart' as http;
import 'package:agri/Screens/LoginScreen.dart'; // Adjust the import based on your file structure

class TwoFactorAuthScreen extends StatefulWidget {
  final String email;
  TwoFactorAuthScreen({Key? key, required this.email}) : super(key: key);

  @override
  State<TwoFactorAuthScreen> createState() => _TwoFactorAuthScreenState();
}

class _TwoFactorAuthScreenState extends State<TwoFactorAuthScreen> {
  TextEditingController codeController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  void verifyCode() async {
    var codeBody = {
      'email': widget.email,
      'code': codeController.text,
    };
    try {
      var response = await http.post(
        Uri.parse('http://192.168.0.118:3002/verify-code'),
        body: jsonEncode(codeBody),
        headers: {'Content-Type': 'application/json'},
      );
      var res = json.decode(response.body);

      print(res["status"]);

      if (response.statusCode == 200) {
        showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              content: Text("Verification Successful"),
              actions: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginScreen()),
                    );
                  },
                  child: Center(
                    child: Text('OK'),
                  ),
                ),
              ],
            );
          },
        );
      } else {
        showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              content: Text("Invalid Code"),
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
          },
        );
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
                  // Container with logo at the top
                  Container(
                    width: 35.w,
                    height: 12.h,
                    child: Image.asset('assets/page-1/images/logo-psS.png'),
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  Text(
                    "2-Factor Authentication",
                    style: GoogleFonts.montserrat(
                        fontSize: 20.sp,
                        color: Color(0xffef8503),
                        fontWeight: FontWeight.w800),
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  Text(
                    "Enter the code sent to your email",
                    style: GoogleFonts.openSans(
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
                          if (value!.isEmpty) {
                            return "Invalid Code";
                          } else {
                            return null;
                          }
                        },
                        controller: codeController,
                        style: GoogleFonts.montserrat(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w700,
                            color: Color(0xff1f751f)),
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Code",
                            hintStyle: GoogleFonts.openSans(
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
                          verifyCode();
                        }
                      },
                      child: Container(
                        width: 78.w,
                        height: 6.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.w),
                            gradient: LinearGradient(
                                begin: Alignment(-1, 0),
                                end: Alignment(1, 0),
                                colors: <Color>[
                                  Color(0xff2ba84a),
                                  Color(0xff000000)
                                ])),
                        child: Center(
                          child: Text(
                            "Verify",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.montserrat(
                                fontSize: 4.w,
                                fontWeight: FontWeight.w700,
                                height: 1.2,
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
