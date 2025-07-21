import 'package:flutter/material.dart';
import 'package:flutter_project/signinpage2.dart';

class Signinpage1 extends StatefulWidget {
  const Signinpage1({super.key});

  @override
  State<Signinpage1> createState() => _Signinpage1State();
}

class _Signinpage1State extends State<Signinpage1> {
  int? _selectedValue;
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();

  bool checkbox1 = false;
  bool checkbox2 = false;
  String getGenderText(int value) {
    switch (value) {
      case 1:
        return "Male";
      case 2:
        return "Female";
      default:
        return "Unknown";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 100, left: 95, right: 80),
                child: Container(
                  child: Text(
                    "Lets Get Started!",
                    style: TextStyle(fontSize: 25),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 95, right: 80),
                child: Container(
                  child: Text("Create your new account"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: TextFormField(
                  controller: name,
                  decoration: InputDecoration(
                      hintText: "Name",
                      hintStyle: TextStyle(color: Colors.grey),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(80))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: TextFormField(
                  controller: email,
                  decoration: InputDecoration(
                      hintText: "Email Address",
                      hintStyle: TextStyle(color: Colors.grey),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(80))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: TextFormField(
                  decoration: InputDecoration(
                      hintText: "Password",
                      hintStyle: TextStyle(color: Colors.grey),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(80))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Row(
                  children: [
                    Radio(
                        value: 1,
                        groupValue: _selectedValue,
                        onChanged: (vlaue) {
                          setState(() {
                            _selectedValue = vlaue!;
                          });
                        }),
                    Text("Male"),
                    Radio(
                        value: 2,
                        groupValue: _selectedValue,
                        onChanged: (vlaue) {
                          setState(() {
                            _selectedValue = vlaue!;
                          });
                        }),
                    Text("Female")
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 150,
                    height: 1,
                    color: Colors.black,
                  ),
                  Text("or"),
                  Container(
                    width: 150,
                    height: 1,
                    color: Colors.black,
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Terms & Conditions",
                style: TextStyle(fontSize: 20),
              ),
              CheckboxListTile(
                  title: Text("Privacy and security"),
                  subtitle: Text(
                      "Privacy protects Personal data while security safeguard the data."),
                  value: checkbox1,
                  onChanged: (bool? val) {
                    setState(() {
                      checkbox1 = val!;
                    });
                  }),
              Divider(
                height: 2,
              ),
              CheckboxListTile(
                  title: Text("Accessibility"),
                  subtitle: Text(
                      "Privacy protects Personal data while security safeguard the data."),
                  value: checkbox2,
                  onChanged: (bool? val) {
                    setState(() {
                      checkbox2 = val!;
                    });
                  }),
              SizedBox(
                height: 5,
              ),
              ElevatedButton(
                  onPressed: () {
                    if (_selectedValue != null) {
                      String gender = getGenderText(_selectedValue!);
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Signinpage2(
                            check: _selectedValue,
                            email: email.text,
                            text1: gender,
                          ),
                        ),
                      );
                    }
                    print(_selectedValue);
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (context) => Signinpage2(
                    //               check: _selectedValue,
                    //               email: email.text,
                    //               text1: name.text,
                    //             )));
                  },
                  child: Text("Log In"))
            ],
          ),
        ),
      ),
    );
  }
}
