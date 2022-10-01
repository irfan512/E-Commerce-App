import 'package:flutter/material.dart';

Widget customTextFormField() {
  return TextFormField(
    decoration: InputDecoration(
      hintText: "email@gmail.com",
    ),
  );
}

Widget customTextFormField2() {
  return TextFormField(
    decoration: InputDecoration(
        hintText: "***********", suffixIcon: Icon(Icons.remove_red_eye)),
  );
}

Widget customSignUpTxtField1() {
  return TextFormField(
    decoration: InputDecoration(hintText: "Please type full name"),
  );
}

Widget customSignUpTxtField2() {
  return TextFormField(
    decoration: InputDecoration(hintText: "email@gmail.com"),
  );
}

Widget customSignUpTxtField3() {
  return TextFormField(
    decoration: InputDecoration(
        hintText: "*********", suffixIcon: Icon(Icons.remove_red_eye)),
  );
}

const primary = Color(0xFFFF7D31);

// ////////////////////////////////

snackBar(context, text) {
  return ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    content: Text(text),
    duration: Duration(milliseconds: 300),
  ));
}

class CustomTextField extends StatelessWidget {
  final title, controller, type, lines;
  CustomTextField({this.controller, this.title, this.type, this.lines});
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: TextField(
        controller: controller,
        keyboardType: type,
        cursorColor: primary,
        maxLines: lines,
        autofocus: false,
        style: TextStyle(fontSize: 12),
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.only(left: 10, right: 10),
          fillColor: Colors.white,
          // filled: true,
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.red),
            borderRadius: BorderRadius.circular(10.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: primary, width: 1),
            borderRadius: BorderRadius.circular(10),
          ),
          disabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: primary, width: 1),
            borderRadius: BorderRadius.circular(10),
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(color: primary, width: 1),
            borderRadius: BorderRadius.circular(10),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: primary, width: 1),
            borderRadius: BorderRadius.circular(10),
          ),
          hintText: " $title",
          hintStyle: TextStyle(color: Colors.black38, fontSize: 12),
        ),
      ),
    );
  }
}
