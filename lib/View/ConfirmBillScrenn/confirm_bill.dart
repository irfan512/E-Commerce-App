import 'package:flutter/material.dart';
import 'package:students_project/View/ConfirmBillScrenn/widgets.dart';

class CheckBill extends StatefulWidget {
  @override
  State<CheckBill> createState() => _CheckBillState();
}

class _CheckBillState extends State<CheckBill> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        title: Text(
          "Confirm Bill",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 150,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  customrow("Delivery Address", "Change"),
                  Text("Home"),
                  customrow1(Icons.location_on, "680 Move Court, New York, US"),
                  customrow1(Icons.person, "Usama Shoaib"),
                  customrow1(Icons.call, "+923075328306"),
                ],
              ),
            ),
            ExpansionTile(
              tilePadding: EdgeInsets.zero,
              title: Text(
                "Order Bill",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                    fontSize: 18),
              ),
              children: [
                customrow2(),
                customrow3("Price", "72.00"),
                customrow3("Shipping fee", "12.00"),
                customrow4(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [Text("\$-10.00")],
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            customrow("Total Bill", "\$74.00"),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 40,
              decoration: BoxDecoration(
                color: Color(0xffE63C2B),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Center(
                child: Text(
                  "Continue",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
