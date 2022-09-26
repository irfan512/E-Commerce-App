import 'package:flutter/material.dart';

Widget customCard(context, color, txt, icon, icon3) {
  return Padding(
    padding: const EdgeInsets.all(15),
    child: Card(
      child: Column(
        children: [
          for (int index = 0; index < color.length; index++)
            Padding(
              padding: const EdgeInsets.all(15),
              child: Row(children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.04,
                  width: MediaQuery.of(context).size.width * 0.08,
                  decoration: BoxDecoration(
                      color: color[index],
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Icon(icon[index], size: 18, color: Colors.white),
                ),
                SizedBox(
                  width: 40,
                ),
                Text(txt[index]),
                Spacer(),
                Icon(icon3[index])
              ]),
            ),
        ],
      ),
    ),
  );
  //   SizedBox(
  //     width: 10,
  //   ),
}

Widget customCard4(context, color2, txt2, icon2, icon3) {
  return Padding(
    padding: const EdgeInsets.only(
      left: 15,
      right: 15,
    ),
    child: Card(
      child: Column(
        children: [
          for (int index = 0; index < color2.length; index++)
            Padding(
              padding: const EdgeInsets.all(15),
              child: Row(children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.04,
                  width: MediaQuery.of(context).size.width * 0.08,
                  decoration: BoxDecoration(
                      color: color2[index],
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Icon(icon2[index], size: 18, color: Colors.white),
                ),
                SizedBox(
                  width: 40,
                ),
                Text(txt2[index]),
                Spacer(),
                Icon(icon3[index])
              ]),
            ),
        ],
      ),
    ),
  );
}

Widget customContainer(txt3, txt4) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      for (int index = 0; index < txt3.length; index++)
        Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                txt3[index],
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 15),
              ),
              SizedBox(
                height: 4,
              ),
              Text(
                txt4[index],
                style: TextStyle(color: Colors.black, fontSize: 12),
              )
            ],
          ),
        )
    ],
  );
}
