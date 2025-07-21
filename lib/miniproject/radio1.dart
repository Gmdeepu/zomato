import 'package:flutter/material.dart';
import 'package:flutter_project/miniproject/radio2.dart';
import 'package:flutter_project/signinpage..dart';
import 'package:flutter_project/signinpage1.dart';

class Radio1 extends StatefulWidget {
  String? get;
  Radio1({super.key, this.get});

  @override
  State<Radio1> createState() => _Radio1State();
}

class _Radio1State extends State<Radio1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>Radio2()));
      },
      backgroundColor: const Color.fromARGB(255, 24, 120, 27),
      foregroundColor: Colors.white,
      child: Icon(Icons.add),
      ),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 115, 191, 117),
        title: Padding(
          padding: const EdgeInsets.only(left:40),
          child: Text("MESSAGE'S"),
        ),
        actions: [
          Icon(Icons.search,size: 30),
          SizedBox(width: 25,),
          Padding(
            padding: const EdgeInsets.only(right: 13),
            child: Icon(Icons.account_box,size: 30,),
          )
        ],
      ),
    
     body:ListView.builder(
      itemCount: 31,
      itemBuilder: (context,index){
          return Card(
            color: Colors.green,
            
            elevation: 10,
            margin: EdgeInsets.all(10),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50)
            ),
            child: ListTile(
              leading: Icon(Icons.format_list_bulleted),
              title: Text("Message $index"
              
              ),
              subtitle: Text("Message sent Successfully"),
            ),

          );
      }
      

    ),
    
  
    );
  }
}
