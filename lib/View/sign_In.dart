import 'package:flutter/material.dart';
import 'package:students_project/View/root.dart';
import 'package:students_project/View/sign_Up.dart';

import 'Const_Widget.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

//0xffE63B2C
class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Sign In",
                style: TextStyle(
                    color: Color(0xffE63B2C),
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "Sign in to continue",
                style: TextStyle(color: Colors.black54, fontSize: 16),
              ),
              SizedBox(
                height: 65,
              ),
              Text(
                "Email",
                style: TextStyle(color: Colors.black, fontSize: 16),
              ),
              customTextFormField(),
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
              customTextFormField2(),
              SizedBox(
                height: 40,
              ),
              InkWell(
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
                    "Login",
                    style: TextStyle(color: Colors.white),
                  )),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account?",
                    style: TextStyle(color: Colors.black, fontSize: 16),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => SignUp())));
                      },
                      child: Text(
                        "Sign UP",
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
    );
  }
}
