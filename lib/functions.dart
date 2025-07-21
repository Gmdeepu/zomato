import 'package:flutter/material.dart';

class Functions extends StatefulWidget {
  const Functions({super.key});

  @override
  State<Functions> createState() => _FunctionsState();
}

class _FunctionsState extends State<Functions> {
  Widget createcontainer(
      {double width = 400,
      double height = 200,
      Widget? child,
      Color color = Colors.blue,
      double borderRadius = 20}) {
    return Container(
        alignment: Alignment.center,
        width: width,
        height: height,
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(borderRadius)),
        child: child);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            createcontainer(
                child: Text(
                  "iegdy7ecg",
                ),
                width: 200,
                color: Colors.green,
                borderRadius: 60)
          ],
        ),
      ),
    );
  }
}
