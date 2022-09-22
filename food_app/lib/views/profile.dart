import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:dotted_border/dotted_border.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: Row(
            children: [
              Icon(Icons.food_bank, color: Colors.orange),
              Text(
                "Samdi Food Delivery ",
                style: TextStyle(color: Colors.orange),
              ),
            ],
          ),
          backgroundColor: Colors.white,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 40),
              child: Icon(
                Icons.notifications_on,
                color: Colors.orange,
              ),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(13.0),
          child: Column(
            children: [
              Stack(
                alignment: Alignment(0.1, 0.7),
                children: [
                  Stack(
                    alignment: Alignment(0.1, 0.1),
                    children: [
                      Container(
                        color: Colors.white,
                        height: Get.height / 4.5,
                      ),
                      DottedBorder(
                        color: Colors.orange,
                        strokeWidth: 3,
                        borderType: BorderType.Oval,
                        dashPattern: [20, 20],
                        child: ClipOval(
                          child: CircleAvatar(
                            backgroundColor: Colors.red[500],
                            radius: 50,
                            backgroundImage:
                                ExactAssetImage('assets/images/prabesh.png'),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Stack(
                    alignment: Alignment(0.1, 0.1),
                    children: [
                      DottedBorder(
                        color: Colors.white,
                        strokeWidth: 3,
                        borderType: BorderType.Oval,
                        dashPattern: [2000, 2000],
                        child: ClipOval(
                          child: CircleAvatar(
                            backgroundColor: Colors.black,
                            radius: 20,
                          ),
                        ),
                      ),
                      Icon(Icons.edit, color: Colors.white)
                    ],
                  )
                ],
              ),
              Text(
                "Lama Prabesh ",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              Text(
                "21-2001-5433 ",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w200),
              ),
              SizedBox(height: Get.width/7,),
              Card(
                 borderOnForeground: true,
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Row(children: [
                    Icon(Icons.wallet_membership),
                    SizedBox(width: Get.width/7,),
                    Text(
                      "My weekly Membership",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.w200),
                    )
                  ]),
                ),
              ),
               Card(
                 borderOnForeground: true,
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Row(children: [
                    Icon(Icons.call_rounded),
                    SizedBox(width: Get.width/7,),
                    Text(
                      "Contact Me",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.w200),
                    )
                  ]),
                ),
              ),
               Card(
                 borderOnForeground: true,
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Row(children: [
                    Icon(Icons.privacy_tip),
                    SizedBox(width: Get.width/7,),
                    Text(
                      "Privacy-Policy",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.w200),
                    )
                  ]),
                ),
              ),
               Card(
                 borderOnForeground: true,
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Row(children: [
                    Icon(Icons.terminal_sharp),
                    SizedBox(width: Get.width/7,),
                    Text(
                      "Terms and Conditions ",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.w200),
                    )
                  ]),
                ),
              ),
               Card(
                 borderOnForeground: true,
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Row(children: [
                    Icon(Icons.logout_outlined),
                    SizedBox(width: Get.width/7,),
                    Text(
                      "Log Out ",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.w200),
                    )
                  ]),
                ),
              ),
            ],
          ),
        ));
  }
}
