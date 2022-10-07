import 'package:flutter/material.dart';

customrow(txt1, txt2) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        txt1,
        style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700, fontSize: 18),
      ),
      Text(
        txt2,
        style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
      )
    ],
  );
}

customrow1(icn, txt) {
  return Row(
    children: [
      Icon(
        icn,
        size: 15,
        color: Color(0xffE63B2C),
      ),
      SizedBox(
        width: 10,
      ),
      Text(
        txt,
        style: TextStyle(fontWeight: FontWeight.w600, color: Colors.black),
      )
    ],
  );
}

customrow2() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text("Procuct"),
      Row(
        children: [Text("3 Hours"), Icon(Icons.arrow_drop_down)],
      )
    ],
  );
}

customrow3(txt1, txt2) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(txt1),
      Text(txt2),
    ],
  );
}
 customrow4() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text("Have a promo code?"),
     Icon(Icons.keyboard_arrow_right)
    ],
  );
}