import 'package:flutter/material.dart';
import 'package:flutter_project/miniproject/radio3.dart';

class Radio2 extends StatefulWidget {
  const Radio2({super.key});

  @override
  State<Radio2> createState() => _Radio2State();
}

class _Radio2State extends State<Radio2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
                children: [
          SizedBox(
            height: MediaQuery.of(context).size.height*1,
            child: GridView.builder(
              physics: NeverScrollableScrollPhysics(),
                gridDelegate:
                    SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
                itemCount: 30,
                itemBuilder: (context, index) {
                  return Card(
                    color: Colors.green,
                    child: Text("message $index"),
                  );
                }),
          ),
          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Radio3()));
          }, child: Text("data"))
                ],
              ),
        ));
  }
}
