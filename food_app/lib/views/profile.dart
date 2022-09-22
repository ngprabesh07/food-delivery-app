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
        body: Column(
          children: [
            Stack(
              alignment: Alignment(0.1, 0.8),
              children: [
                Stack(
                  alignment: Alignment(0.1, 0.1),
                  children: [
                    Container(
                      color: Colors.white,
                      height: Get.height / 4,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(70),
                      child: DottedBorder(
                        color: Colors.black,
                        strokeWidth: 10,
                        child: Container(
                          height: Get.height / 6,
                          width: Get.height / 6,
                          // color: Colors.red,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image:
                                      AssetImage('assets/images/burger.png'),
                                      fit:BoxFit.fill,
                                      
                                      )),
                        ),
                      ),
                    )
                  ],
                ),
                Icon(Icons.edit),
                // Container(
                //   height: 50,
                //   width: 50,
                //   color: Colors.blue,
                // ),
              ],
            )
          ],
        ));
  }
}
