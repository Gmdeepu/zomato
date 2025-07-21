import 'package:flutter/material.dart';
import 'package:flutter_project/new.dart';
import 'package:checkbox_grouped/checkbox_grouped.dart';

class Newapp extends StatefulWidget {
  const Newapp({super.key});

  @override
  State<Newapp> createState() => _NewappState();
}

class _NewappState extends State<Newapp> {
  String dropdownvalue = 'profile';
  var items = ['profile', 'Account', 'Go subscription', 'Log Out'];
  int _selectedValue = 1;
  GroupController multipleCheckController = GroupController(
    isMultipleSelection: true,
    initSelectedItem: List.generate(10, (index) => index),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("kjbukbj"),
            Text("kjbukbj"),
          ],
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            SimpleGroupedCheckbox<int>(
              controller: multipleCheckController,
              itemsTitle: ["1", "2", "4", "5"],
              values: [1, 2, 4, 5],
              groupStyle: GroupStyle(
                  activeColor: Colors.red,
                  itemTitleStyle: TextStyle(fontSize: 13)),
            ),
            DropdownButton(
              focusColor: Colors.red,
              value: dropdownvalue,
              icon: Icon(Icons.keyboard_arrow_down),
              items: items.map(
                (String items) {
                  return DropdownMenuItem(
                    value: items,
                    child: Text(items),
                  );
                },
              ).toList(),
              onChanged: (String? newvalue) {
                setState(() {
                  dropdownvalue = newvalue!;
                });
              },
            ),
            PopupMenuButton(
                itemBuilder: (context) => [
                      PopupMenuItem(child: Text("POP"), value: 1),
                      PopupMenuItem(child: Text("Account"), value: 2),
                      PopupMenuItem(
                        child: Text("Login"),
                        value: 3,
                      ),
                    ]),
            DropdownButton(
              focusColor: Colors.red,
              value: dropdownvalue,
              icon: Icon(Icons.keyboard_arrow_down),
              items: items.map((String items) {
                return DropdownMenuItem(
                  value: items,
                  child: Text(items),
                );
              }).toList(),
              onChanged: (String? newvalue) {
                setState(() {
                  dropdownvalue = newvalue!;
                });
              },
            ),
            PopupMenuButton(
                itemBuilder: (context) => [
                      PopupMenuItem(
                        child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Youtube()));
                            },
                            child: Text("Profile")),
                        value: 1,
                      ),
                      PopupMenuItem(
                        child: Text("Account"),
                        value: 2,
                      ),
                      PopupMenuItem(
                        child: Text("Signup"),
                        value: 3,
                      )
                    ]),
            RadioListTile(
              title: Text('Option 1'), // Display the title for option 1
              subtitle: Text(
                  'Subtitle for Option 1'), // Display a subtitle for option 1
              value: 1, // Assign a value of 1 to this option
              groupValue:
                  _selectedValue, // Use _selectedValue to track the selected option
              onChanged: (value) {
                setState(() {
                  _selectedValue =
                      value!; // Update _selectedValue when option 1 is selected
                });
              },
            ),
            RadioListTile(
              activeColor: Colors.black,
              fillColor: WidgetStatePropertyAll(Colors.amberAccent),
              title: Text('Option 2'), // Display the title for option 2
              subtitle: Text(
                  'Subtitle for Option 2'), // Display a subtitle for option 2
              value: 2, // Assign a value of 2 to this option
              groupValue:
                  _selectedValue, // Use _selectedValue to track the selected option
              onChanged: (value) {
                setState(() {
                  _selectedValue =
                      value!; // Update _selectedValue when option 2 is selected
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
