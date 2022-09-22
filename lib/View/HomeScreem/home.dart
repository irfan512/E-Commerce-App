import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'home_widgets.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List color1 = [
    Colors.black,
    Colors.blueAccent,
    Colors.orange,
    Colors.pink,
    Colors.green
  ];
  List txt = [
    "Lipstick",
    "Lipstick",
    "Lipstick",
    "Lipstick",
    "HairStyle",
  ];
  List image1 = [
    "assets/images/lipstick.jpeg",
    "assets/images/lipstick1.jpeg",
    "assets/images/bag.jpeg",
    "assets/images/handbag.jpeg",
    "assets/images/bag.jpeg",
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Text(
          "Discover",
          style: TextStyle(color: Colors.black, fontSize: 22),
        ),
        centerTitle: true,
        actions: const [
          IconButton(
              onPressed: null,
              icon: Icon(
                Icons.shopping_cart_outlined,
                color: Colors.black,
              ))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: MediaQuery.of(context).size.height,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                customRow("Catergories"),

                // ist listview
                customlistview1(color1: color1, txt: txt, image: image1),

                customRow("Recommend for You"),
                // Second listview
                customListView(
                  color1: color1,
                  txt: txt,
                ),
                SizedBox(
                    // height: size.height * 0.08,
                    ),
                // Slider
                CarouselSlider(
                  items: [
                    Image(image: AssetImage("assets/images/lipstick1.jpeg")),
                    Image(image: AssetImage("assets/images/bag.jpeg")),
                    Image(image: AssetImage("assets/images/bag.jpeg")),
                  ],
                  options: CarouselOptions(
                    initialPage: 0,
                    height: size.height * 0.2,
                    autoPlay: true,
                    aspectRatio: 3.3,
                    enlargeCenterPage: true,
                    autoPlayCurve: Curves.fastOutSlowIn,
                    viewportFraction: 0.9,
                    autoPlayInterval: Duration(seconds: 5),
                  ),
                ),

                customRow("Valentine's Day"),

                // 3rd lidtview
                customListView(color1: color1, txt: txt),

                // Text
                const Text(
                  "Popular Products",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ),

                // GridView
                Expanded(
                  child: GridView.builder(
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      primary: false,
                      itemCount: color1.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 10,
                        childAspectRatio: 0.9,
                      ),
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                      height: 100,
                                      width: 100,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: color1[index],
                                      )),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        txt[index],
                                        style: TextStyle(fontSize: 16),
                                      ),
                                      Text(
                                        "Androa SkinCare",
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.black),
                                      ),
                                      Text(
                                        "\$900",
                                        style: TextStyle(fontSize: 16),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        );
                      }),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
