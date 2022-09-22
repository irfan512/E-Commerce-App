import 'package:flutter/material.dart';

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

Widget customListView({color1, txt}) {
  return Expanded(
    child: ListView.builder(
        itemCount: color1.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: FittedBox(
              fit: BoxFit.fill,
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
                    crossAxisAlignment: CrossAxisAlignment.start,
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
          );
        }),
  );
}

Widget customlistview1({
  color1,
  txt,
  image,
}) {
  return Expanded(
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
