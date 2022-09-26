import 'package:flutter/material.dart';
import 'package:students_project/View/ProfileScreen/person_widgets.dart';

class Profile extends StatefulWidget {
  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final color = [
    Colors.red,
    Colors.green,
    Colors.yellow[900],
    Colors.deepPurple
  ];

  final txt = [
    "About Information",
    "MyOrder",
    "Payment Method",
    "Delivery Address"
  ];
  final icon = [
    Icons.person,
    Icons.shopping_cart,
    Icons.payment,
    Icons.location_on
  ];
  final icon2 = [
    Icons.settings,
    Icons.sms,
    Icons.info,
  ];
  final icon3 = [
    Icons.chevron_right,
    Icons.chevron_right,
    Icons.chevron_right,
    Icons.chevron_right,
  ];

  final color2 = [
    Colors.black,
    Colors.blue,
    Colors.deepPurple,
  ];
  final txt3 = ["2", "6", "5", "248"];
  final txt4 = ["Posts", "Orders", "With Likes", "Likes"];
  final txt2 = [
    "Setting",
    "Contact with us",
    "About Us",
  ];
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                height: size.height * 0.34,
                decoration: BoxDecoration(
                    color: Colors.deepOrange,
                    borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(15),
                        bottomRight: Radius.circular(15))),
                child: Padding(
                  padding: const EdgeInsets.only(top: 35),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            height: 74,
                            width: 74,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                        "assets/images/images (6).jpg")),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(100)),
                                color: Colors.transparent,
                                // ignore: prefer_const_literals_to_create_immutables
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.white, spreadRadius: 2)
                                ]),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          const Text(
                            "Hassan khan",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                                fontSize: 16),
                          ),
                          const Text(
                            "442@gmail.com",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                                fontSize: 16),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                  bottom: -30,
                  left: 0,
                  right: 0,
                  child: Center(
                    child: Container(
                      width: size.width * .82,
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(child: customContainer(txt3, txt4)),
                      ),
                    ),
                  ))
            ],
          ),
          SizedBox(
            height: 30,
          ),
          customCard(context, color, txt, icon, icon3),
          customCard4(context, color2, txt2, icon2, icon3)
        ]),
      ),
    );
  }
}
