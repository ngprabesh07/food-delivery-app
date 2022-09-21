import 'package:flutter/material.dart';

class PopularFood extends StatelessWidget {
  const PopularFood({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: SingleChildScrollView(
        child: Column(children: [
          Text(
            "Popular Food Items :",
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.blue),
          ),
          Card(
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    height: 80,
                    width: 80,
                    // color: Colors.orange,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/nutrition.jpeg'))),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Nutrition Food Meal .......",
                      style: TextStyle(
                          color: Colors.orange, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "with chinese cook",
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                          fontWeight: FontWeight.bold),
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
                        Icon(Icons.location_on, color: Colors.grey),
                        Text("1.5 KM"),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(Icons.two_wheeler),
                        Text("32 min"),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
          Card(
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    height: 80,
                    width: 80,
                    // color: Colors.orange,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/sweet.jpeg'))),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Sweet Food Meal .......",
                      style: TextStyle(
                          color: Colors.orange, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "with american cook hehe",
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                          fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 5,
                          backgroundColor: Colors.yellow,
                        ),
                        Text(
                          "Normal",
                          style: TextStyle(color: Colors.yellow),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(Icons.location_on, color: Colors.grey),
                        Text("1.5 KM"),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(Icons.two_wheeler),
                        Text("32 min"),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
          Card(
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    height: 80,
                    width: 80,
                    // color: Colors.orange,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/vegan.jpeg'))),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Vegan Food Meal .......",
                      style: TextStyle(
                          color: Colors.orange, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "with chinese cook",
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                          fontWeight: FontWeight.bold),
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
                        Icon(Icons.location_on, color: Colors.grey),
                        Text("1.5 KM"),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(Icons.two_wheeler_outlined),
                        Text("32 min"),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
