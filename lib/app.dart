import 'package:flutter/material.dart';
import 'package:flutter_project/new.dart';
import 'package:flutter_project/splash.dart';

class Demo extends StatefulWidget {
  const Demo({super.key});

  @override
  State<Demo> createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
     
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("Google",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                  )),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 25, left: 6),
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 15, left: 18),
                        child: Text(
                          "Search or type url",
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                      ),
                      width: 380,
                      height: 60,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: const Color.fromARGB(255, 74, 78, 76)),
                    ),
                  ),
                ],
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Text(
                    "Login Or Sign Up",
                    style: TextStyle(
                        color: const Color.fromARGB(255, 231, 226, 226),
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Container(color: Colors.amber,
                height: 200,
                child: TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                      hintText: "Enter your name",
                      hintStyle: TextStyle(
                          color: const Color.fromARGB(255, 199, 187, 187),
                          fontSize: 20),
                      border: InputBorder.none),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 100),
                      child: InkWell(
                        child: MaterialButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text(
                              "Login",
                              style: TextStyle(color: Colors.white),
                            ),
                            highlightColor: Colors.white,
                            splashColor: Colors.lightBlue,
                            color: Color.fromARGB(255, 74, 78, 76)),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    MaterialButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> Youtube()));
                      },
          
                      child: Text(
                        "Signup",
                        style: TextStyle(color: Colors.white),
                      ),
                      highlightColor: Colors.white,
                      splashColor: Colors.lightBlue,
                      color: Color.fromARGB(255, 74, 78, 76),
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
