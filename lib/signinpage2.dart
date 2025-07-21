import 'package:flutter/material.dart';

class Signinpage2 extends StatefulWidget {
  String? text1;
  String? email;
  int? check;

  Signinpage2({super.key, this.text1, this.email, this.check});

  @override
  State<Signinpage2> createState() => _Signinpage2State();
}

class _Signinpage2State extends State<Signinpage2> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [Text(widget.text1.toString()), Text("")],
        ),
      ),
    );
  }
}
