import 'package:flutter/material.dart';

extension extString on String {
  bool get isValidEmail {
    final emailRegExp = RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
    return emailRegExp.hasMatch(this);
  }

  bool get isValidPassword {
    final passwordRegExp = RegExp(
        r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\><*~]).{8,}/pre>');
    return passwordRegExp.hasMatch(this);
  }
}

class CustomTextFormField extends StatefulWidget {
  CustomTextFormField(
      {this.bool1, this.hint, this.icon, this.validator, this.controller});

  var hint;
  var icon;
  var bool1;
  var controller;
  final String? Function(String?)? validator;

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      obscureText: widget.bool1 ?? false,
      validator: widget.validator,
      decoration: InputDecoration(
          hintText: widget.hint,
          suffixIcon: widget.icon == null
              ? Container(
                  width: 0,
                  height: 0,
                )
              : IconButton(
                  onPressed: () {
                    if (widget.bool1 == true) {
                      widget.bool1 = false;

                      setState(() {});
                    } else {
                      widget.bool1 = true;
                      setState(() {});
                    }
                  },
                  icon: widget.bool1 == false
                      ? Icon(widget.icon)
                      : Icon(Icons.visibility_off),
                )),
    );
  }
}

// customTextFormField({hint = "", icon, bool1}) {
//   return TextFormField(
//     obscureText: bool1,
//     decoration: InputDecoration(
//         hintText: hint,
//         suffixIcon: icon == null
//             ? Container(
//                 width: 0,
//                 height: 0,
//               )
//             : IconButton(
//                 onPressed: () {
//                   if (bool1 == true) {
//                     bool1 == false;
//                   }
//                 },
//                 icon: Icon(icon))),
//   );
// }

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
