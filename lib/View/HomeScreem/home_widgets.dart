import 'package:flutter/material.dart';

import '../item_srceen.dart';

Widget customRow(text) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        text,
        style: const TextStyle(
            color: Colors.black, fontSize: 20, fontWeight: FontWeight.w700),
      ),
      const InkWell(
          child: Text(
        "View all",
        style: TextStyle(
            color: Colors.orange, fontSize: 17, fontWeight: FontWeight.w500),
      ))
    ],
  );
}

Widget customListView({context, color1, txt}) {
  return Container(
    height: 200,
    child: InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => ItemScreen()));
      },
      child: ListView.builder(
          itemCount: color1.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Container(
              width: 150,
              margin: EdgeInsets.all(10),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      height: 100,
                      width: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: color1[index],
                      )),
                  Text(
                    txt[index] +
                        "asmndgasjhdgasdjhgasdjhgadjhgasdjsgdjhagdjhgadsjgajsdgajsdgsajdh",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
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
            );
          }),
    ),
  );
}

Widget customlistview1({
  color1,
  txt,
  image,
}) {
  return Container(
    height: 150,
    child: ListView.builder(
        padding: EdgeInsets.zero,
        shrinkWrap: true,
        itemCount: txt.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: ((context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 10,
            ),
            child: Column(
              children: [
                Container(
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(image: AssetImage(image[index])),
                    // color: color1[index],
                  ),
                ),
                Text(txt[index]),
              ],
            ),
          );
        })),
  );
}
