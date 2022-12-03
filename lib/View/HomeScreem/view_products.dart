import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:students_project/View/const_Widget.dart';

import 'home_widgets.dart';

class ViewProducts extends StatelessWidget {
  var  t;
  ViewProducts(this.t);

List color1 = [
    Colors.black,
    Colors.blueAccent,
    Colors.orange,
    Colors.pink,
    Colors.green
  ];
  @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: primary,
          centerTitle: true,
          title: Text("Products"),
        ),
        body: ListView.builder(
          itemCount: t.length,
          itemBuilder: (context,index) {
            return InkWell(
              onTap: (){
                print("click");
                // showAlertDialog(context);
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
                                    color: color1[index],
                                  )),
                              Text(
                                "${t[index].get('name')}",
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(fontSize: 16),
                              ),
                              Text(
                                "${t[index].get('category')}",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black),
                              ),
                              Text(
                                '${t[index].get('price')}',
                                style: TextStyle(fontSize: 16),
                              ),
                            ],
                          ),
                        ),
            );
                   
          }
        ),
      );
  }
}


// {
//   "name": "Arham"
// }

// FirebaseFirestore.instance.collection('users').doc(id).update(
//   {
//     "name":"Arham Sarwar"
//   }
// );