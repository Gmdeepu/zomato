import 'package:flutter/material.dart';
import 'package:flutter_project/miniproject/radio1.dart';

class Revision extends StatefulWidget {
  const Revision({super.key});

  @override
  State<Revision> createState() => _RevisionState();
}

class _RevisionState extends State<Revision> {
  int? _inputval;
  String getgender(int vall) {
    switch (vall) {
      case 1:
        return "male";
      case 2:
        return "female";
      default:
        return "unknown";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Radio(
              value: 1,
              groupValue: _inputval,
              onChanged: (val) {
                setState(() {
                  _inputval = val!;
                });
              },
            ),
            Text("male"),
            Radio(
              value: 2,
              groupValue: _inputval,
              onChanged: (val) {
                setState(() {
                  _inputval = val!;
                });
              },
            ),
            Text("female"),
            ElevatedButton(
                onPressed: () {
                  if (_inputval != null) {
                    String gen = getgender(_inputval!);
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Radio1(
                                  get: gen,
                                )));
                  }
                },
                child: Text("Sign up"))
          ],
        ),
      ),
    );
  }
}
