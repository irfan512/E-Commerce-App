import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:students_project/View/const_Widget.dart';
import 'package:students_project/View/root.dart';
import 'package:students_project/View/sign_Up.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

//0xffE63B2C
class _SignInState extends State<SignIn> {
  final formkey = GlobalKey<FormState>();
  TextEditingController email = TextEditingController();
  TextEditingController passward = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(      
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Form(
            key: formkey,
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
                  CustomTextFormField(
                    controller: email,
                    hint: "Enter Email",
                    validator: (val) {
                      if (!val!.isValidEmail) return 'Enter valid email';
                    },
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
                    controller: passward,
                    hint: "Password",
                    icon: Icons.remove_red_eye,
                    bool1: true,
                    validator: (val) {
                      // if (!val!.isValidPassword) return 'Enter valid password';
                    },
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Center(
                    child: InkWell(
                      onTap: () async{
                        FocusScope.of(context).unfocus();
                        if (formkey.currentState!.validate()) {

                          try{
                           var user = await FirebaseAuth.instance.signInWithEmailAndPassword(email: email.text, password: passward.text);
                          if(user.user != null){
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (_) => Root(),
                            ),
                          );
                          }
                          }catch(e){
                            snackBar(context, e.toString() );
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
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        child: Center(
                            child: Text(
                          "Login",
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
        ),
      ),
    );
  }
}
