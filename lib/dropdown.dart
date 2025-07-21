import 'package:flutter/material.dart';

class Dropdown extends StatefulWidget {
  const Dropdown({super.key});

  @override
  State<Dropdown> createState() => _DropdownState();
}

class _DropdownState extends State<Dropdown> {
  String dropdown = 'profile';

  var items = [
    'profile',
    'settings',
    'Account',
    'Go premium',
    'Logout',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            DropdownButton(
              dropdownColor: Colors.red,
              focusColor: Colors.blue,
              value: dropdown,
              icon: Icon(Icons.keyboard_arrow_down),
              items: items.map((String items) {
                return DropdownMenuItem(value: items, child: Text(items));
              }).toList(),
              onChanged: (String? newvalue) {
                setState(() {
                  dropdown = newvalue!;
                });
              },
            ),
            PopupMenuButton(
                itemBuilder: (context) => [
                      PopupMenuItem(
                        child: Text("Profile"),
                        value: 1,
                      ),
                      PopupMenuItem(
                        child: Text("Account"),
                        value: 2,
                      ),
                      PopupMenuItem(
                        child: Text("Log In"),
                        value: 3,
                      ),
                      PopupMenuItem(
                        child: Text("Payment Options"),
                        value: 4,
                      )
                    ])
          ],
        ),
      ),
    );
  }
}
