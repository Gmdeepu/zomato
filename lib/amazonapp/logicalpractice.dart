import 'package:flutter/material.dart';

class Logicalpractice extends StatefulWidget {
  const Logicalpractice({super.key});

  @override
  State<Logicalpractice> createState() => _LogicalpracticeState();
}

class _LogicalpracticeState extends State<Logicalpractice> {
  String usernam = "aravind";
  String password = "123";
  String output = "";
  Color outputcolor =Colors.black;

  void signpage(String use, String pass) {
    
    if (use == usernam && pass == password) {
      setState(() {
        output = "Login in successful";
        outputcolor =Colors.green;
      });
    } else if (use == "" || pass == "") {
      setState(() {
        output = "It should not be empty";
                outputcolor =const Color.fromARGB(255, 227, 235, 92);

      });
    } else {
      setState(() {
              output = "Invalid username and password";
              outputcolor =Colors.red;
      });
    }
  }

  final usercontroller = TextEditingController();
  final passwordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("data"),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: TextFormField(
                controller: usercontroller,
                decoration: InputDecoration(
                    labelText: "UserName",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30))),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("data"),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: TextFormField(
                controller: passwordcontroller,
                decoration: InputDecoration(
                    labelText: "Password",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30))),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  signpage(usercontroller.text, passwordcontroller.text);
                },
                child: Text("Sign up",)),
            Text(output,style: TextStyle(color: outputcolor))
          ],
        ),
      ),
    );
  }
}
