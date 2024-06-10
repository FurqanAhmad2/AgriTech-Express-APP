import 'package:agri/Screens/AddAddress.dart';
import 'package:agri/Screens/Categorie.dart';
import 'package:agri/Screens/Categorie_Consulting.dart';
import 'package:agri/Screens/Chat.dart';
import 'package:agri/Screens/Consulting.dart';
import 'package:agri/Screens/Events.dart';
import 'package:agri/Screens/LanguageSection.dart';
import 'package:agri/Screens/LoginScreen.dart';
import 'package:agri/Screens/News.dart';
import 'package:agri/Screens/SignupScreen.dart';
import 'package:agri/Screens/SplashScreen.dart';
import 'package:agri/Screens/ViewEvent.dart';
import 'package:agri/Screens/AddAddress.dart';
import 'package:agri/Screens/AddCard.dart';
import 'package:agri/Screens/OrderSummary.dart';
import 'package:agri/Screens/OrderSuccess.dart';
import 'package:agri/Screens/Checkout.dart';
import 'package:agri/Screens/Terms.dart';
import 'package:agri/Screens/Weather.dart';
import 'package:agri/Screens/ProfilePage.dart';
import 'package:agri/Screens/EditProfile.dart';
import 'package:agri/Screens/CartProvider.dart';

import 'package:agri/Screens/MarketUpdateScreen.dart';

import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';

import 'package:flutter/material.dart';

import 'package:sizer/sizer.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    DevicePreview(
      enabled: true,
      tools: [
        ...DevicePreview.defaultTools,
      ],
      builder: (context) => MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, devicetype) {
        return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'MaterialApp',
            theme: ThemeData.dark(),
            home: SplashScreen());
      },
    );
  }
}
