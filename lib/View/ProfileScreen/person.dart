import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:students_project/View/ProfileScreen/person_widgets.dart';
import 'package:students_project/View/sign_In.dart';

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
  void initState() {
    super.initState();
    fetchUserDetail();
  }
  var data;
  fetchUserDetail() async {
    var id = FirebaseAuth.instance.currentUser!.uid;
     data =
        await FirebaseFirestore.instance.collection('users').doc(id).get();
        setState(() {
          
        });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(      
      body: data == null ? Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircularProgressIndicator.adaptive(),
          Text("Please Wait!"),
        ],
      ) ) : SingleChildScrollView(
        child:  Column(
          children: [
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
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * .05),
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
                            Text(
                              data.get('name'),
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16),
                            ),
                            Text(
                               data.get('email'),
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
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(
                              child: customContainer(context, txt3, txt4)),
                        ),
                      ),
                    )),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            customCard(context, color, txt, icon, icon3),
            customCard4(context, color2, txt2, icon2, icon3),
            InkWell(
              onTap: () {
                FirebaseAuth.instance.signOut();
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (_) => SignIn()),
                    (route) => false);
              },
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Row(children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.04,
                    width: MediaQuery.of(context).size.width * 0.08,
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Icon(Icons.logout, size: 18, color: Colors.white),
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  Text('Sign Out'),
                  Spacer(),
                  // Icon(icon3[index])
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
