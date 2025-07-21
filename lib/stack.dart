import 'package:flutter/material.dart';

class Stackpage extends StatefulWidget {
  const Stackpage({super.key});

  @override
  State<Stackpage> createState() => _StackpageState();
}

class _StackpageState extends State<Stackpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                width: 300,
                height: 400,
                color: Colors.blue,
              ),
              Positioned(
                top: 100,
                left: 50,
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(color: Colors.green, boxShadow: [
                    BoxShadow(
                        color: Colors.grey, spreadRadius: 10, blurRadius: 10)
                  ]),
                ),
              )
            ],
          ),
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(40),
                child: Container(
                  width: 300,
                  height: 300,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 10,
                            spreadRadius: 10,
                            color: Colors.black)
                      ]),
                ),
              ),
              Positioned(
                top: 100,
                left: 130,
                child: Container(
                  child: Icon(
                    Icons.add,
                    size: 150,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
