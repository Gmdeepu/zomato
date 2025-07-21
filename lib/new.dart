import 'package:flutter/material.dart';

class Youtube extends StatefulWidget {
  const Youtube({super.key});

  @override
  State<Youtube> createState() => _YoutubeState();
}

class _YoutubeState extends State<Youtube> {
  TextEditingController name = TextEditingController();
  final GlobalKey<FormState> _nameFormKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: (const Color.fromARGB(255, 18, 18, 18)),
        appBar: AppBar(
          backgroundColor: (const Color.fromARGB(255, 18, 18, 18)),
          leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.menu_rounded,
              color: Colors.white,
            ),
          ),
          title: Padding(
            padding: const EdgeInsets.only(bottom: 3),
            child: Text(
              "WhatsApp",
              style: TextStyle(color: Colors.white),
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Icon(
                Icons.search_rounded,
                color: Colors.white,
              ),
            )
          ],
        ),
        body: Form(
          key: _nameFormKey,
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(left: 15),
                margin: EdgeInsets.all(5),
                width: 450,
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: const Color.fromARGB(255, 78, 77, 77),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.search,
                      color: const Color.fromARGB(255, 171, 168, 168),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Text(
                        "Ask Meta ai or Search",
                        style: TextStyle(
                            color: const Color.fromARGB(255, 171, 168, 168),
                            fontSize: 16),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                width: 300,
                height: 300,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.green),
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: TextFormField(
                  obscureText: true,
                  controller: name,
                  validator: (val) => val!.isEmpty || !val.contains("@")
                      ? "enter a valid eamil"
                      : null,
                  decoration: InputDecoration(
                      hintText: "enter the number",
                      prefixIcon: Icon(Icons.search),
                      hintStyle: TextStyle(
                          color: Colors.amber, fontWeight: FontWeight.bold),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30))),
                ),
              ),  Padding(
                padding: const EdgeInsets.all(18.0),
                child: TextFormField(
                  obscureText: true,
                  controller: name,
                  validator: (val) => val!.isEmpty || !val.contains("@")
                      ? "enter a valid eamil"
                      : null,
                  decoration: InputDecoration(
                      hintText: "enter the number",
                      prefixIcon: Icon(Icons.search),
                      hintStyle: TextStyle(
                          color: Colors.amber, fontWeight: FontWeight.bold),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30))),
                ),
              ),
              TextButton(
                  onPressed: () {
                    if (_nameFormKey.currentState!.validate()) {
                      print("sucess");
                    } else {}
                  },
                  child: Text("Click"))
            ],
          ),
        ));
  }
}
