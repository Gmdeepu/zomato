import 'package:flutter/material.dart';
import 'package:flutter_project/app.dart';
import 'package:flutter_project/new.dart';
import 'package:flutter_project/signinpage..dart';
import 'package:flutter_project/splash.dart';

class Button extends StatefulWidget {
  const Button({super.key});

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {}),
      body: SafeArea(
        child: Column(
          children: [
            TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Signinpage()));
                },
                child: Text("sub")),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.access_alarm,
                )),
            Padding(
              padding: const EdgeInsets.all(100),
              child: TextButton(
                onPressed: () {},
                child: Text(
                  "submit",
                  style: TextStyle(color: Colors.red),
                ),
              ),
            ),
            IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Youtube()));
              },
              icon: Icon(
                Icons.add_a_photo_outlined,
                size: 60,
                color: Colors.blue,
              ),
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Youtube()));
                },
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Icon(
                    Icons.login,
                    color: const Color.fromARGB(255, 8, 72, 125),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
