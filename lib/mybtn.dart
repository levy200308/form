import 'package:flutter/material.dart';

class MyBtn extends StatelessWidget {

  
  final Function()? onTap;

  const MyBtn({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(25),
        margin: EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(color: Colors.black),
        child: Center(child: Text('Sign In', style: TextStyle(color: Colors.white),),),
      ),
    );
  }
}