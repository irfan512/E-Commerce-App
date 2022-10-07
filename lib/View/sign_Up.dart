import 'package:flutter/material.dart';
import 'package:students_project/View/const_Widget.dart';
import 'package:students_project/View/root.dart';
import 'package:students_project/View/sign_In.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

//0xffE63B2C
class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Sign Up",
                  style: TextStyle(
                      color: Color(0xffE63B2C),
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Sign up to join",
                  style: TextStyle(color: Colors.black54, fontSize: 16),
                ),
                SizedBox(
                  height: 65,
                ),
                Text(
                  "Name",
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
                CustomTextFormField(hint: "Enter Full Name"),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Email",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
                CustomTextFormField(hint: "Enter Email"),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Password",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
                CustomTextFormField(
                  hint: "Enter Password",
                  icon: Icons.remove_red_eye,
                  bool1: true,
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Confirm Password",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
                CustomTextFormField(
                  hint: "Confirm Password",
                  icon: Icons.remove_red_eye,
                  bool1: true,
                ),
                SizedBox(
                  height: 40,
                ),
                Center(
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: ((context) => Root())));
                    },
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.07,
                      width: MediaQuery.of(context).size.width * 0.80,
                      decoration: BoxDecoration(
                          color: Color(
                            0xffE63B2C,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: Center(
                          child: Text(
                        "Sign Up",
                        style: TextStyle(color: Colors.white),
                      )),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "have an account?",
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) => SignIn())));
                        },
                        child: Text(
                          "Sign In",
                          style: TextStyle(
                            color: Color(
                              0xffE63B2C,
                            ),
                          ),
                        )),
                  ],
                )
              ]),
        ),
      ),
    );
  }
}
