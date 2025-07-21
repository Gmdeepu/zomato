
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_project/amazonapp/loginpage.dart';

class Splashpage extends StatefulWidget {
  const Splashpage({super.key});

  @override
  State<Splashpage> createState() => _SplashpageState();
}

class _SplashpageState extends State<Splashpage> {
 void initState(){
  Timer(Duration(seconds: 2),(){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>Loginpage()));
  });
  super.initState();
 }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 150),
              child: Container(
                width: 300,
                height: 500,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage("assets/splashimg.png"))
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}