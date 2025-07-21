
import 'package:flutter/material.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text("FaceBook",
            style: TextStyle(fontWeight: FontWeight.bold,color: const Color.fromARGB(255, 69, 129, 177)),),
          ),

        actions: [Padding(
          padding: const EdgeInsets.only(right: 10),
          child: Icon(Icons.message_outlined),
          
        ),Padding(
          padding: const EdgeInsets.only(right: 10),
          child: Icon(Icons.search_sharp),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: Icon(Icons.add,),
        )],
        ),
    body: Column(children: [Row(
      children: [
        Text("hello ",),Text("hello ")
      ],
    ),Text("hello "),Text("hello "),
    InkWell(
      child: IconButton(onPressed: (){
        Navigator.pop(context);
      },
       icon: Icon(Icons.home)),
    )
    ],) ,
      );
    }
  }