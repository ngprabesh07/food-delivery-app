import 'package:flutter/material.dart';
import 'package:food_app/views/splash.dart';
import 'package:get/get.dart';

import 'localization.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "localization",
      locale: const Locale('en_US', 'ne_NP'),
      translations: Localization(),
      home: Splash(),
    );
  }
}
