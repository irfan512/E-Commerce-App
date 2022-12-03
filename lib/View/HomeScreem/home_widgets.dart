import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:students_project/View/HomeScreem/view_products.dart';

import '../item_srceen.dart';

Widget customRow(context, text, docs) {
  return Row(
    // mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        text,
        style: TextStyle(
            color: Colors.black, fontSize: 20, fontWeight: FontWeight.w700),
      ),
      InkWell(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (_) => ViewProducts(docs)));
          },
          child: Text(
            "View all",
            style: TextStyle(
                color: Colors.orange,
                fontSize: 17,
                fontWeight: FontWeight.w500),
          ))
    ],
  );
}

final nameController = TextEditingController();
final categoryController = TextEditingController();
final priceController = TextEditingController();

showAlertDialog(BuildContext context, id, {name, price, category}) {
  nameController.text = name;
  categoryController.text = category;
  priceController.text = price;
  // set up the buttons
  Widget cancelButton = TextButton(
    child: Text("Cancel"),
    onPressed: () {},
  );
  Widget continueButton = ElevatedButton(
    child: Text("UPDATE PRICE"),
    onPressed: () {
      FirebaseFirestore.instance.collection('products').doc(id).update({
        "name": nameController.text,
        "category": categoryController.text,
        "price": priceController.text
      });

      Navigator.pop(context);
    },
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("Update Details"),
    content: Text("Please update anything"),
    actions: [
      TextField(
        controller: nameController,
        decoration:
            InputDecoration(label: Text("Name"), border: OutlineInputBorder()),
      ),
      SizedBox(
        height: 10,
      ),
      TextField(
        controller: categoryController,
        decoration: InputDecoration(
            label: Text("Category"), border: OutlineInputBorder()),
      ),
      SizedBox(
        height: 10,
      ),
      TextField(
        controller: priceController,
        decoration:
            InputDecoration(label: Text("Price"), border: OutlineInputBorder()),
      ),
      SizedBox(
        height: 10,
      ),
      // cancelButton,
      continueButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}

Widget customListView({context, color1, txt}) {
  return StreamBuilder(
      stream: FirebaseFirestore.instance.collection('products').snapshots(),
      builder: (context, AsyncSnapshot snapshot) {
        if (snapshot.hasData && snapshot.data != null) {
          QuerySnapshot data = snapshot.data;

          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              customRow(context, "Recommend for You", data.docs),
              Container(
                height: 200,
                child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: data.docs.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      DocumentSnapshot item = data.docs[index];
                      return InkWell(
                        onTap: () {
                          /// Item Detail Screen
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) => ItemScreen(arham: item,)));
                          // print(data.docs[index].id);
                          // showAlertDialog(context,data.docs[index].id, category: data.docs[index].get('category') ,price: data.docs[index].get('price') ,name: data.docs[index].get('name') );
                        },
                        child: Container(
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
                                    color: Colors.red,
                                  )),
                              Text(
                                "${snapshot.data.docs[index].get('name')}",
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(fontSize: 16),
                              ),
                              Text(
                                "${item.get('category')}",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black),
                              ),
                              Text(
                                '${item.get('price')}',
                                style: TextStyle(fontSize: 16),
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
              ),
            ],
          );
        }

        return Center(
          child: CircularProgressIndicator.adaptive(),
        );
      });
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
