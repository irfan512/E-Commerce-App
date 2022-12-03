import 'package:flutter/material.dart';
import 'package:students_project/test.dart';

class TestDemo extends StatelessWidget {
  const TestDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("DEMO DATA")),
      body: ListView.builder(
        itemCount: data.length,
        itemBuilder: (context,i) {
          return Container(
            margin: EdgeInsets.all(5),
            color: Colors.yellow[300],
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage("${data[i]['thumbnailUrl']}"),
              ),
              title: Text("${data[i]['title']}"),
              trailing: Text("${data[i]['id']}"),
            ),
          );
        }
      ),
    );
  }
}