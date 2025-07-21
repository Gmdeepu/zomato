import 'package:flutter/material.dart';

class Radio4 extends StatefulWidget {
  const Radio4({super.key});

  @override
  State<Radio4> createState() => _Radio4State();
}

class _Radio4State extends State<Radio4> {
  List<String> tex = ["apple","samsung","vivo","redmi",];
  List<Icon> ico =[Icon(Icons.add),Icon(Icons.search)];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height / 1,
            child: ListView.builder(
                itemCount: 4,
                
                itemBuilder: (context, index) {
                  return Card(
                    color: Colors.red,
                    elevation: 15,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)),
                    margin: EdgeInsets.all(10),
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: SizedBox(
                        
                          height: 50,
                          width: 300,
                          child: Text(tex[index],
                              overflow: TextOverflow.clip,),),
                    ),
                  );
                }),
          ),
          
        ],
      ),
    );
  }
}
