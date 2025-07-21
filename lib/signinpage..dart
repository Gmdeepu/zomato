import 'package:flutter/material.dart';
import 'package:flutter_project/signinpage1.dart';

class Signinpage extends StatefulWidget {
  const Signinpage({super.key});

  @override
  State<Signinpage> createState() => _SigninpageState();
}

class _SigninpageState extends State<Signinpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 237, 66, 66),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color.fromARGB(255, 240, 127, 127),
        title: Padding(
          padding: const EdgeInsets.only(
            left: 50,
          ),
          child: Text(
            "Zomato",
            style: TextStyle(
                color: const Color.fromARGB(255, 246, 34, 19),
                fontSize: 30,
                fontWeight: FontWeight.bold),
          ),
        ),
        actions: [
          Icon(
            Icons.search_rounded,
            size: 30,
          ),
          SizedBox(
            width: 15,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Icon(
              Icons.menu,
              size: 30,
            ),
          )
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 80,
          ),
          Container(
              width: 300,
              height: 100,
              child: Padding(
                padding: const EdgeInsets.only(left: 40),
                child: Text(
                  "Food Delevery ",
                  style: TextStyle(color: Colors.white, fontSize: 34),
                ),
              )),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 120, right: 100),
            child: Text(
              "Place your first order for free !",
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 215, 49, 37),
                padding: EdgeInsets.only(left: 80, right: 80)),
            onPressed: () {},
            child: Text(
              "Order Now",
              style: TextStyle(color: Colors.white),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 215, 49, 37),
                padding: EdgeInsets.only(left: 95, right: 95)),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Signinpage1()));
            },
            child: Text(
              "Log IN",
              style: TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
