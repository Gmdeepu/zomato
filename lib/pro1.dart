import 'package:flutter/material.dart';
import 'package:flutter_project/new.dart';

class Pro1 extends StatefulWidget {
  const Pro1({super.key});

  @override
  State<Pro1> createState() => _Pro1State();
}

class _Pro1State extends State<Pro1> {
  int _selectedValue = 0;
  bool checkbox1 = true;
  bool checkbox2 =false;
  bool checkbox3 = true;
  bool checkbox4 = false;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(),
      body: Column(
        children: [
          Container(
            alignment: Alignment.center,
            child: Text(
              "Welcome Back",
              style: TextStyle(color: Colors.black, fontSize: 30),
            ),
          ),
          SizedBox(height: 25),
          Row(
            children: [
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(left: 40),
                  child: Text(
                    "Name",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 60, right: 40),
            child: TextFormField(
              decoration: InputDecoration(
                  hintText: "Enter your Name",
                  hintStyle: TextStyle(
                      color: const Color.fromARGB(255, 173, 165, 165)),
                  border: InputBorder.none),
            ),
          ),
          Row(
            children: [
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(top: 10, left: 40),
                  child: Text(
                    "Email",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 60, right: 40, top: 10),
            child: TextFormField(
              decoration: InputDecoration(
                  hintText: "Enter your Email",
                  hintStyle: TextStyle(
                      color: const Color.fromARGB(255, 173, 165, 165)),
                  border: InputBorder.none),
            ),
          ),
          Row(
            children: [
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(top: 10, left: 40),
                  child: Text(
                    "Password",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 60, right: 40, top: 10),
            child: TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                  hintText: "Enter your Password",
                  hintStyle: TextStyle(
                      color: const Color.fromARGB(255, 173, 165, 165)),
                  border: InputBorder.none),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Youtube()));
              },
              style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.only(left: 100, right: 100),
                  backgroundColor: const Color.fromARGB(255, 83, 10, 242)),
              child: Text(
                "Sign In",
                style: TextStyle(color: Colors.white),
              )),
          RadioListTile(
            title: Text("Male"),
            value: 1,
            groupValue: _selectedValue,
            onChanged: (value) {
              setState(() {
                _selectedValue = value!;
              });
            },
          ),
          RadioListTile(
            title: Text("Female"),
            value: 2,
            groupValue: _selectedValue,
            onChanged: (value) {
              setState(() {
                _selectedValue = value!;
              });
            },
          ),
          RadioListTile(
            title: Text("Others"),
            value: 3,
            groupValue: _selectedValue,
            onChanged: (value){
              setState(() {
                _selectedValue = value!;
              });
            },
          ),
          CheckboxListTile(value: checkbox1,
          title: Text("data"),
          subtitle: Text("yrdfgogfutxihouycyfogyciuguyfduft"),
          onChanged: (bool? val){
            setState(() {
              checkbox1 = val!;
            });
          },),
          Divider(height: 3,),
          CheckboxListTile(value: checkbox2, onChanged: (bool? val){
            setState(() {
              checkbox2 = val!;
            });        
          })
        ],
      ),
    );
  }
}
