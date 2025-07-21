import 'package:flutter/material.dart';

class LogicalExample extends StatefulWidget {
  @override
  _LogicalExampleState createState() => _LogicalExampleState();
}

class _LogicalExampleState extends State<LogicalExample> {
  String username = "admin";
  String password = "1234";
  String message = "";
  int number = 4;
  Color col = Colors.white;

  void checkLogin(String user, String pass) {
    if (user == username && pass == password) {
      setState(() {
        message = "✅ Login Successful";
        col = Colors.green;
      });
    } else if (user == "" || pass == "") {
      setState(() {
        message = "⚠️ Fields cannot be empty";
        col= Colors.amber;
      });
    } else {
      setState(() {
    
        message = "❌ Invalid username or password";
        col = Colors.red;
      });
    }
  }

  final userController = TextEditingController();
  final passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Logical Operator Example")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: userController,
              decoration: InputDecoration(labelText: "Username"),
            ),
            TextField(
              controller: passController,
              decoration: InputDecoration(labelText: "Password"),
              obscureText: true,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                checkLogin(userController.text, passController.text);
              },
              child: Text("Login"),
            ),
            const SizedBox(height: 40),
            Text(message,
                style: TextStyle(
                    fontSize: 18,
                    color: col
                        
                        )),
          ],
        ),
      ),
    );
  }
}
