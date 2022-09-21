import 'dart:async';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:food_app/views/homepage.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:food_app/widgets/navbar.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
        Duration(seconds: 6),
        () => Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => NavBar(),
            )));
  }

  Widget build(BuildContext context) {
    const colorizeColors = [
      Colors.purple,
      Colors.blue,
      Colors.yellow,
      Colors.red,
    ];

    const colorizeTextStyle = TextStyle(
      fontSize: 50.0,
      fontFamily: 'Horizon',
    );
    return Scaffold(
      backgroundColor: Colors.orange,
      body: Padding(
        padding: const EdgeInsets.only(top: 170),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset('assets/images/delivery.png'),
              Center(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const SizedBox(
                      width: 20,
                      height: 100,
                    ),
                    
                    const SizedBox(
                      width: 20,
                      height: 100,
                    ),
                    DefaultTextStyle(
                        style: const TextStyle(
                          fontSize: 30,
                          fontFamily: 'Horizontal',
                        ),
                        child: AnimatedTextKit(
                          isRepeatingAnimation: false,
                          animatedTexts: [
                            TyperAnimatedText("SAMDI FOOD DELIVERY"),
                            TyperAnimatedText("Serve on ONE CLICK !"),
                            // WavyAnimatedText("SAMDI FOOD DELIVERY")
                            // ColorizeAnimatedText("PRABESH",
                            //     textStyle: colorizeTextStyle, colors: colorizeColors),
                            //   RotateAnimatedText("SAMDI"),
                            // RotateAnimatedText("ONLINE"),
                            // RotateAnimatedText("FOOD"),
                            // RotateAnimatedText("DELIVERY"),
                          ],
                          onTap: () {
                            print("Tap Tap");
                          },
                        ))
                  ],
                ),
              ),
              const SizedBox(height: 100,),
              CircularProgressIndicator(
                color: Colors.red,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
