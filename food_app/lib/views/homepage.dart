import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'popularfood.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          backgroundColor: Colors.orange,
          title: Text("SAMDI'S SPECIALS "),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      "Nepal",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      width: 240,
                    ),
                    Stack(
                      alignment: Alignment(0.1, 0.1),
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Container(
                            color: Colors.orange,
                            height: 40,
                            width: 40,
                          ),
                        ),
                        Icon(Icons.search),
                      ],
                    )
                  ],
                ),
                SizedBox(height: 20,),
                CarouselSlider(
                  items: [
                    Stack(
                      alignment: Alignment(0.1, 0.7),
                      children: [
                        Stack(
                          children: [
                            Container(
                              height: 250,
                              color: Colors.orange,
                              // decoration: BoxDecoration(
                              //     image: DecorationImage(
                              //   image: AssetImage('assets/images/glasses.png'),
                              // )),
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Container(
                                height: 150,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                  image: AssetImage('assets/images/burger.png'),
                                  fit: BoxFit.cover,
                                )),
                              ),
                            ),
                          ],
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Container(
                            width: 240,
                            height: 110,
                            color: Colors.white,
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    "Burger ",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Row(
                                    children: [
                                      Icon(Icons.star,
                                          size: 10, color: Colors.green),
                                      Icon(Icons.star,
                                          size: 10, color: Colors.green),
                                      Icon(Icons.star,
                                          size: 10, color: Colors.green),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Text("4.5    "),
                                      Text("2001 Comments"),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Row(
                                    children: [
                                      CircleAvatar(
                                        radius: 5,
                                        backgroundColor: Colors.yellow,
                                      ),
                                      Text(
                                        "Normal",
                                        style: TextStyle(color: Colors.green),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Icon(Icons.location_on,
                                          color: Colors.grey),
                                      Text("1.5 KM"),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Icon(Icons.timer),
                                      Text("32 min"),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                   Stack(
                      alignment: Alignment(0.1, 0.7),
                      children: [
                        Stack(
                          children: [
                            Container(
                              height: 250,
                              color: Colors.orange,
                              // decoration: BoxDecoration(
                              //     image: DecorationImage(
                              //   image: AssetImage('assets/images/glasses.png'),
                              // )),
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Container(
                                height: 150,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                  image: AssetImage('assets/images/pizza.jpeg'),
                                  fit: BoxFit.cover,
                                )),
                              ),
                            ),
                          ],
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Container(
                            width: 240,
                            height: 110,
                            color: Colors.white,
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    "Pizza ",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Row(
                                    children: [
                                      Icon(Icons.star,
                                          size: 10, color: Colors.green),
                                      Icon(Icons.star,
                                          size: 10, color: Colors.green),
                                      Icon(Icons.star,
                                          size: 10, color: Colors.green),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Text("2.5    "),
                                      Text("201 Comments"),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Row(
                                    children: [
                                      CircleAvatar(
                                        radius: 5,
                                        backgroundColor: Colors.red,
                                      ),
                                      Text(
                                        "Hot",
                                        style: TextStyle(color: Colors.green),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Icon(Icons.location_on,
                                          color: Colors.grey),
                                      Text("0.5 KM"),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Icon(Icons.timer),
                                      Text("15 min"),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    Stack(
                      alignment: Alignment(0.1, 0.7),
                      children: [
                        Stack(
                          children: [
                            Container(
                              height: 250,
                              color: Colors.orange,
                              // decoration: BoxDecoration(
                              //     image: DecorationImage(
                              //   image: AssetImage('assets/images/glasses.png'),
                              // )),
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Container(
                                height: 150,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                  image: AssetImage('assets/images/chawmin.jpeg'),
                                  fit: BoxFit.cover,
                                )),
                              ),
                            ),
                          ],
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Container(
                            width: 240,
                            height: 110,
                            color: Colors.white,
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    "Chawmin ",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Row(
                                    children: [
                                      Icon(Icons.star,
                                          size: 10, color: Colors.green),
                                      Icon(Icons.star,
                                          size: 10, color: Colors.green),
                                      Icon(Icons.star,
                                          size: 10, color: Colors.green),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Text("4.5    "),
                                      Text("2001 Comments"),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Row(
                                    children: [
                                      CircleAvatar(
                                        radius: 5,
                                        backgroundColor: Colors.yellow,
                                      ),
                                      Text(
                                        "Normal",
                                        style: TextStyle(color: Colors.green),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Icon(Icons.location_on,
                                          color: Colors.grey),
                                      Text("1.5 KM"),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Icon(Icons.timer),
                                      Text("32 min"),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    Stack(
                      alignment: Alignment(0.1, 0.7),
                      children: [
                        Stack(
                          children: [
                            Container(
                              height: 250,
                              color: Colors.orange,
                              // decoration: BoxDecoration(
                              //     image: DecorationImage(
                              //   image: AssetImage('assets/images/glasses.png'),
                              // )),
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Container(
                                height: 150,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                  image: AssetImage('assets/images/momo.jpeg'),
                                  fit: BoxFit.cover,
                                )),
                              ),
                            ),
                          ],
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Container(
                            width: 240,
                            height: 110,
                            color: Colors.white,
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    "Momo ",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Row(
                                    children: [
                                      Icon(Icons.star,
                                          size: 10, color: Colors.green),
                                      Icon(Icons.star,
                                          size: 10, color: Colors.green),
                                      Icon(Icons.star,
                                          size: 10, color: Colors.green),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Text("1.5    "),
                                      Text("2501 Comments"),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Row(
                                    children: [
                                      CircleAvatar(
                                        radius: 5,
                                        backgroundColor: Colors.red,
                                      ),
                                      Text(
                                        "Hot",
                                        style: TextStyle(color: Colors.red),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Icon(Icons.location_on,
                                          color: Colors.grey),
                                      Text("1.5 KM"),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Icon(Icons.timer),
                                      Text("32 min"),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                  options: CarouselOptions(
                    height: 250.0,
                    enlargeCenterPage: true,
                    autoPlay: true,
                    aspectRatio: 16 / 9,
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enableInfiniteScroll: true,
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    viewportFraction: 0.8,
                  ),
                ),
              SizedBox(height: 20,),

                PopularFood(),
              ],
            ),
          ),

        )

        // Container(
        //   decoration: BoxDecoration(
        //       image: DecorationImage(
        //     image: AssetImage('assets/images/glasses.png'),
        //   )),
        // ),
        );
  }
}
