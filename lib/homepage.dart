// import 'package:flutter/material.dart';
// import 'package:flutter_project/insta.dart';
// import 'package:flutter_project/miniproject/radio.dart';
// import 'package:flutter_project/new.dart';
// import 'package:flutter_project/signinpage..dart';

// class BottomNavBarExample extends StatefulWidget {
//   const BottomNavBarExample({super.key});

//   @override
//   State<BottomNavBarExample> createState() => _BottomNavBarExampleState();
// }

// class _BottomNavBarExampleState extends State<BottomNavBarExample> {
//   int _currentIndex = 0;

//   // Example pages
//   final _pages = [Insta(), Revision(), Signinpage()];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: _pages[_currentIndex],
//       bottomNavigationBar: BottomNavigationBar(
//         currentIndex: _currentIndex,
//         onTap: (int newIndex) {
//           setState(() {
//             _currentIndex = newIndex;
//           });
//         },
//         backgroundColor: Colors.black,
//         selectedItemColor: Colors.orange,
//         unselectedItemColor: Colors.grey,
//         showUnselectedLabels: true,
//         type: BottomNavigationBarType.fixed, // or .shifting for animation

//         items: const [
//           BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
//           BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
//           BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_project/insta.dart';
import 'package:flutter_project/new.dart';
import 'package:flutter_project/signinpage..dart';

class Bottomnav extends StatefulWidget {
  const Bottomnav({super.key});

  @override
  State<Bottomnav> createState() => _BottomnavState();
}

class _BottomnavState extends State<Bottomnav> {
  int currentIndex =  0;

  final pagess =[Insta(),Youtube(),Signinpage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: pagess[currentIndex],
     
     bottomNavigationBar: BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: (int newIndex){
        setState(() {
          currentIndex = newIndex;
        });
      },
      backgroundColor: Colors.black,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.grey,
      type: BottomNavigationBarType.fixed,
      
      
      items: const[
        BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.search),label: "Search"),
        BottomNavigationBarItem(icon: Icon(Icons.account_box_rounded),label: "")
      ]),
    );
  }
}