import 'package:flutter/material.dart';

import 'ConfirmBillScrenn/confirm_bill.dart';
import 'const_Widget.dart';

class Order extends StatefulWidget {
  const Order({Key? key}) : super(key: key);

  @override
  State<Order> createState() => _OrderState();
}

class _OrderState extends State<Order> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final fullNameController = TextEditingController();
    final phonenumberController = TextEditingController();
    final addressController = TextEditingController();
    final commentController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back, color: Colors.black),
        ),
        centerTitle: true,
        title: Text(
          "Order Now",
          style: TextStyle(
              color: Colors.black,
              fontSize: size.height * 0.022,
              fontWeight: FontWeight.w700),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Full Name",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: size.height * 0.021,
                  fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            CustomTextField(
              title: "Enter Full Name",
              controller: fullNameController,
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            Text(
              "Phone Number ",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: size.height * 0.021,
                  fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            CustomTextField(
              title: "Enter Phone Number",
              controller: phonenumberController,
              type: TextInputType.number,
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            Text(
              "Address",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: size.height * 0.021,
                  fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            CustomTextField(
              title: "Enter Address",
              controller: addressController,
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            Text(
              "Email",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: size.height * 0.021,
                  fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            CustomTextField(
              title: "Add Email",
              controller: commentController,
              type: TextInputType.name,
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            Center(
              child: InkWell(
                onTap: () {
                  // if (fullNameController.text.isEmpty) {
                  //   snackBar(context, "Please! Enter Full Name");
                  // } else if (phonenumberController.text.isEmpty) {
                  //   snackBar(context, "Please! Enter Phone Number");
                  // } else if (addressController.text.isEmpty) {
                  //   snackBar(context, "Please! Enter Address");
                  // } else if (commentController.text.isEmpty) {
                  //   snackBar(context, "Please! Enter Some Comment");
                  // } else {

                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => CheckBill()));
                  // }
                },
                child: Card(
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Container(
                      alignment: Alignment.center,
                      width: MediaQuery.of(context).size.width * 0.60,
                      height: 40.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        gradient: LinearGradient(colors: [
                          primary,
                          primary,
                        ]),
                      ),
                      child: Text("Continue",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w900,
                              fontSize: 18.0))),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
