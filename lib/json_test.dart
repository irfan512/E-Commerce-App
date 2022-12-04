

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:students_project/test.dart';

class demo extends StatefulWidget {
  const demo({Key? key}) : super(key: key);

  @override
  State<demo> createState() => _demoState();
}

class _demoState extends State<demo> {
  addCount() async {
    count++;
    var pref = await SharedPreferences.getInstance();
    pref.setInt("ahsan", count);
    getCount();
  }

  getCount() async {
    var pref = await SharedPreferences.getInstance();
    var data = pref.getInt("ahsan");
    if (data != null) {
      count = data;
      setState(() {});
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getCount();
  }

  clearCount() async {
    var pref = await SharedPreferences.getInstance();
    pref.remove('ahsan');      
    count = 0;
    setState(() {});
  }

  


  removeCount() async {
    count--;
    var pref = await SharedPreferences.getInstance();
    pref.setInt("ahsan", count);
    getCount();
  }

  var count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {
        // count++;

        // addCount();
       }),
      appBar: AppBar(
        title: Text('Demo'),
        centerTitle: true,
        actions: [
          InkWell(
              onTap: (() {
                clearCount();
              }),
              child: Icon(
                Icons.reset_tv_rounded,
                size: 20,
              )),
        ],
      ),
      body: Center(
          child: Column(
        children: [
          Text(
            "$count",
            style: TextStyle(fontSize: 100, fontWeight: FontWeight.bold),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                  onPressed: () {
                    addCount();
                  },
                  icon: Icon(Icons.add)),
              IconButton(
                  onPressed: () {
                    if(count > 0){
                    removeCount();
                    }
                  },
                  icon: Icon(Icons.remove)),
            ],
          ),
        ],
      )),
    );
  }
}
