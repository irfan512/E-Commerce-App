import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class ItemScreen extends StatefulWidget {
  @override
  State<ItemScreen> createState() => _ItemScreenState();
}

class _ItemScreenState extends State<ItemScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEFDCD5),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          Icon(Icons.favorite_border_outlined, color: Colors.black),
          SizedBox(
            width: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 30),
            child: Icon(Icons.insert_link, color: Colors.black),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image(height: 170, image: AssetImage("assets/images/bottle.png")),
            // SizedBox(height: MediaQuery.of(context).size.height * 0.20),

            Center(
              child: Container(
                height: MediaQuery.of(context).size.height * .5,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: SingleChildScrollView(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Christin bottel",
                            style: TextStyle(
                              color: Colors.black45,
                            ),
                          ),
                          SizedBox(height: 5),
                          const Text("Fantasist Night Cream",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold)),
                          SizedBox(height: 8),
                          Row(
                            children: [
                              Icon(Icons.shopping_cart,
                                  size: 17, color: Colors.orange[600]),
                              const SizedBox(
                                width: 8,
                              ),
                              const Text(
                                "4.6k",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                width: 50,
                              ),
                              Icon(Icons.remove_red_eye,
                                  size: 17, color: Colors.orange[600]),
                              const SizedBox(
                                width: 8,
                              ),
                              const Text(
                                "12.4k",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          SizedBox(height: 9),
                          Row(children: [
                            const Text(
                              "Rating",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              width: 12,
                            ),
                            Icon(
                              Icons.star,
                              size: 17,
                              color: Colors.orange[400],
                            ),
                            Icon(
                              Icons.star,
                              size: 17,
                              color: Colors.orange[400],
                            ),
                            Icon(
                              Icons.star,
                              size: 17,
                              color: Colors.orange[400],
                            ),
                            Icon(
                              Icons.star,
                              size: 17,
                              color: Colors.orange[400],
                            ),
                            Icon(
                              Icons.star,
                              size: 17,
                              color: Colors.orange[400],
                            ),
                            const SizedBox(
                              width: 12,
                            ),
                            const Text(
                              "(129 Votes)",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                              ),
                            ),
                            Spacer(),
                            Text(
                              "\$24.00",
                              style: TextStyle(
                                  color: Colors.orange[500],
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            )
                          ]),
                          SizedBox(height: 10),
                          const ReadMoreText(
                            'FlLK framework to build high-quality native (super fast) interfaces for iOS and Android apps with the unified codebas FlLK framework to build high-quality native (super fast) interfaces for iOS and Android apps with the unified codebase.',

                            trimLines: 1,
                            trimLength: 140,
                            preDataText: "AMANDA",
                            preDataTextStyle:
                                TextStyle(fontWeight: FontWeight.w500),
                            style: TextStyle(color: Colors.black),
                            colorClickableText: Colors.deepOrange,
                            // trimMode: TrimMode.Line,
                            trimCollapsedText: '...Show more',
                            trimExpandedText: ' show less',
                          ),
                          ExpansionTile(
                            tilePadding: EdgeInsets.zero,
                            expandedAlignment: Alignment.topLeft,
                            textColor: Colors.black,
                            iconColor: Colors.black,
                            title: Text("Quality"),
                            children: [Text("We Provde World Best Quality")],
                          ),
                          ExpansionTile(
                            tilePadding: EdgeInsets.zero,
                            expandedAlignment: Alignment.topLeft,
                            childrenPadding: EdgeInsets.zero,
                            expandedCrossAxisAlignment:
                                CrossAxisAlignment.start,
                            textColor: Colors.black,
                            iconColor: Colors.black,
                            title: Text("Warrenty"),
                            children: [Text("We Provde World Best Quality")],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Row(
                                  children: [
                                    Card(
                                      elevation: 6,
                                      child: Container(
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(100)),
                                        child: Icon(
                                          Icons.add,
                                          size: 20,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 15,
                                    ),
                                    Text(
                                      "1",
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 16),
                                    ),
                                    SizedBox(
                                      width: 15,
                                    ),
                                    Card(
                                      elevation: 6,
                                      child: Container(
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(100)),
                                        child: Icon(
                                          Icons.remove,
                                          size: 20,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: Colors.deepOrange,
                                ),
                                height: 40,
                                child: MaterialButton(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12)),
                                  onPressed: null,
                                  child: Row(
                                    children: [
                                      Text(
                                        "Add to Cart",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Icon(
                                        Icons.arrow_forward,
                                        size: 20,
                                        color: Colors.white,
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          )
                        ]),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
