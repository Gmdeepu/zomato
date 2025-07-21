import 'package:flutter/material.dart';

class Functionspractice extends StatefulWidget {
  const Functionspractice({super.key});

  @override
  State<Functionspractice> createState() => _FunctionspracticeState();
}

class _FunctionspracticeState extends State<Functionspractice> {
  Widget con(
      {double width = 100,
      double height = 200,
      Color color = Colors.red,
      double borderRadius = 30,
      Widget? child
      }) {
    return Container(
      width: width,
      height: height,
      child: child,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: color, borderRadius: BorderRadius.circular(borderRadius)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [con(
              child: Icon(Icons.home),
            
          )],
        ),
      ),
    );
  }
}
