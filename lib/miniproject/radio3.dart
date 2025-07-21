import 'package:flutter/material.dart';

class Radio3 extends StatefulWidget {
  const Radio3({super.key});

  @override
  State<Radio3> createState() => _Radio3State();
}

class _Radio3State extends State<Radio3> {
  List<String> text =["hgchjhggiuoygfh","kyoyyoyo8yoyyoiyoyoyyo","eihe","etr","totr","gfgdfe","rrh",];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            ListView.builder(
              itemCount: text.length,
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) {
                return Card(
                  color: Colors.blue,
                  elevation: 10,
                  margin: EdgeInsets.all(10),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 30,right: 30,top: 20),
                    child: SizedBox(
                      width: 60,
                      child: Text(text[index],overflow: TextOverflow.clip,maxLines: 2,)),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
