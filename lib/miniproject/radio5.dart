import 'package:flutter/material.dart';

class Radio5 extends StatefulWidget {
  const Radio5({super.key});

  @override
  State<Radio5> createState() => _Radio5State();
}

class _Radio5State extends State<Radio5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            // height: MediaQuery.of(context).size.height / 1.5,
            child: GridView.builder(
              shrinkWrap: true,
                itemCount: 20,
                physics: BouncingScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 30,
                    mainAxisSpacing: 30),
                itemBuilder: (context, index) {
                  return Card(
                    color: Colors.yellow,
                    elevation: 20,
                    child: Text("text $index"),
                  );
                }),
          ),
          ElevatedButton(
              onPressed: () {},
              
              child: Padding(
                padding: const EdgeInsets.only(left: 90, right: 90),
                child: Text(
                  "data",
                ),
              ))
        ],
      ),
    );
  }
}
