import 'package:flutter/material.dart';

class Favorite extends StatelessWidget {
  const Favorite({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
              size: 20,
            ),
          ),
          elevation: 0,
          backgroundColor: Colors.white,
          title: const Text(
            "Favorite",
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          centerTitle: true,
        ),
        body: Center(
          child: Wrap(
            children: [
              for (int index = 0; index < 6; index++)
                Padding(
                  padding: EdgeInsets.all(4),
                  child: Card(
                    child: Stack(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * .4,
                          margin: EdgeInsets.all(5),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 100,
                                  width: MediaQuery.of(context).size.width * .4,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                      image: AssetImage(
                                          "assets/images/bottle.png"),
                                    ),
                                    // color: Colors.amber
                                  ),
                                ),
                                Text(
                                  "Head Phone",
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.black),
                                ),
                                Text(
                                  "Androa SkinCare",
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black),
                                ),
                                Text(
                                  "\$900",
                                  style: TextStyle(fontSize: 16),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                            right: 10,
                            left: 100,
                            top: 10,
                            child: CircleAvatar(
                              // radius: 30,
                              backgroundColor: Colors.white24,
                              child: Icon(
                                Icons.favorite,
                                color: Colors.redAccent,
                                size: 25,
                              ),
                            )),
                      ],
                    ),
                  ),
                ),
            ],
          ),
        ));
  }
}
