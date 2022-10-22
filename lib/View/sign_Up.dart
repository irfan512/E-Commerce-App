import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
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
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

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
                CustomTextFormField(
                  hint: "Enter Full Name",
                  controller: nameController,
                ),
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
                CustomTextFormField(
                  hint: "Enter Email",
                  controller: emailController,
                ),
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
                  controller: passwordController,
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
                  controller: confirmPasswordController,
                  hint: "Confirm Password",
                  icon: Icons.remove_red_eye,
                  bool1: true,
                ),
                SizedBox(
                  height: 40,
                ),
                Center(
                  child: InkWell(
                    onTap: () async{
                      FocusScope.of(context).unfocus();
                      if (nameController.text.isEmpty) {
                        snackBar(context, "Please! Enter Name");
                      } else if (emailController.text.isEmpty) {
                        snackBar(context, "Please! Enter Email");
                      } else if (passwordController.text.isEmpty) {
                        snackBar(context, "Please! Enter Password");
                      }  else if (passwordController.text.length < 8) {
                        snackBar(context, "Please! Enter at least 8 characters");
                      }else if (confirmPasswordController.text.isEmpty) {
                        snackBar(context, "Please! Enter Confirm Password");
                      } else {
                        try {
                         var data = await FirebaseAuth.instance.createUserWithEmailAndPassword(
                              email: emailController.text,
                              password: passwordController.text);
                              print(data);
                              if(data.user != null){
                              var id = data.user!.uid;
                              FirebaseFirestore.instance.collection('users').doc(id).set({
                                'email':emailController.text,
                                'password':passwordController.text,
                                'name':nameController.text,
                              });
                              


                      Navigator.push(context,
                          MaterialPageRoute(builder: ((context) => Root())));
                              }
                        } catch (e) {
                          snackBar(context, e.toString());
                        }
                      }
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
