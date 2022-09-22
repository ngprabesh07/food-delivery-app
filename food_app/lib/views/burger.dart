import 'package:flutter/material.dart';
import 'package:food_app/views/homepage.dart';
import 'package:get/get.dart';

class Burger extends StatefulWidget {
  const Burger({super.key});

  @override
  State<Burger> createState() => _BurgerState();
}

class _BurgerState extends State<Burger> {
  var price = 990;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(28.0),
        child: Column(children: [
          Stack(
            alignment: Alignment(0.1, 3),
            children: [
              Stack(
                children: [
                  Container(height: 500, color: Colors.white),
                  Container(
                    height: 250,
                    width: double.infinity,
                    // color:Colors.red,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/burger.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(40),
                child: Container(
                  color: Color.fromARGB(255, 247, 242, 241),
                  height: 400,
                  width: double.infinity,
                  child: Column(children: [
                    Text(
                      "BURGER".tr,
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.brown),
                    ),
                    Row(
                      children: [
                        Icon(Icons.star, color: Colors.yellow),
                        Icon(Icons.star, color: Colors.yellow),
                        Icon(Icons.star, color: Colors.yellow),
                        Icon(Icons.star, color: Colors.yellow),
                        SizedBox(
                          width: Get.width / 2,
                        ),
                        Text("Price=${price}"),
                      ],
                    ),
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 10,
                          backgroundColor: Colors.yellow,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          "NORMAL".tr,
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.green),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Icon(Icons.location_on),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          "1.7KM ",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.watch,
                          size: 22,
                          color: Colors.green,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          "32 min ",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Text(
                      "Introduce ",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: Get.height / 7,
                    ),
                    Text(
                        "the best burger in the town is here  don't miss it !! "),
                  ]),
                ),
              ),
            ],
          ),
          TextButton(
            onPressed: () {
              Get.to(HomePage(),
              arguments: [price],
              );
            },
            child: Text("Add To Card"),
          ),
        ]),
      ),
    );
  }
}
