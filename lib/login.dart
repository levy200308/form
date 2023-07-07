import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:formulaire/mybtn.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

import 'package:formulaire/mytextfield.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  void signUserIn() async {
    
    
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text
    );
  }

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        return Scaffold(
          backgroundColor: Colors.white,
          body: Column(
            children: [
              SizedBox(height: 60,),

              //username connect
             MyTextField(
              controller: emailController,
              hintText: 'email',
              obscureText: false,
             ),

              SizedBox(height: 20,),
              
              //password
            MyTextField(
              controller: passwordController,
              obscureText: true,
              hintText: 'password',
            ),
            SizedBox(height: 25,),

              MyBtn(
                onTap: signUserIn,
              ),
            

            ],
          ),
        );
      }
    );
  }
}