import 'package:flutter/material.dart';
import 'package:flutter_project/app.dart';
import 'package:flutter_project/splash.dart';

class Firstapp extends StatefulWidget {
  const Firstapp({super.key});

  @override
  State<Firstapp> createState() => _FirstappState();
}

class _FirstappState extends State<Firstapp> {
  String dropdown = 'profile';
  var items = [
    'profile',
    'Account',
    'Go premium',
    'Home'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.home_max_rounded),
      ),
      body: SafeArea(
        child: Column(
          children: [
            TextButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Demo()));
            }, child: Text("Login")),
            IconButton(onPressed: () {
               Navigator.push(context, MaterialPageRoute(builder: (context)=>Demo()));
            }, icon: Icon(Icons.login_rounded)),
            ElevatedButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Splash()));
            }, child: Text("sign up")),
            Padding(
              padding: const EdgeInsets.all(100),
              child: DropdownButton(
                focusColor: Colors.green,
                value: dropdown,
                icon: Icon(Icons.keyboard_arrow_down_outlined),
                items : items.map((String items){
                  return DropdownMenuItem(value: items,
                  child: Text(items),);
                }).toList(),
                onChanged: (String? newvalue){
                  setState(() {
                    dropdown =newvalue!;
                  });
                },
              ),
            ),
          PopupMenuButton(itemBuilder: (context)=>[
            PopupMenuItem(child: Text("profile"),value: 1,),
            PopupMenuItem(child: Text("Account"),value: 2,),
          ])
          ],
        ),
      ),
    );
  } 
}
