
import 'package:flutter/material.dart';
import 'package:flutter_project/insta.dart';
import 'package:flutter_project/listgrid.dart';
import 'package:flutter_project/miniproject/radio.dart';
import 'package:flutter_project/moneyapp/firtspage.dart';
import 'package:flutter_project/signinpage..dart';

class Bottom extends StatefulWidget {
  const Bottom({super.key});

  @override
  State<Bottom> createState() => _BottomState();
}

class _BottomState extends State<Bottom> {
  int currentIndex =0;

  final pages =[Firstpage(),Insta(),Signinpage(),Listgrid(),Revision()
    
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar( 
        currentIndex: currentIndex,
        onTap: (int newIndex){
          setState(() {
            currentIndex =newIndex;
          });
        },
        backgroundColor: Colors.white,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,

        items: const[
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.map),label: "Map"),
          BottomNavigationBarItem(icon: Icon(Icons.transfer_within_a_station),label: "Transfer"),
          BottomNavigationBarItem(icon: Icon(Icons.settings),label: "Settings"),
          BottomNavigationBarItem(icon: Icon(Icons.account_box_rounded),label: "Profile")
        ] ),

    );
  }
}