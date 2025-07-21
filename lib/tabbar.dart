
import 'package:flutter/material.dart';

class Tabbarpage extends StatefulWidget {
  const Tabbarpage({super.key});

  @override
  State<Tabbarpage> createState() => _TabbarpageState();
}

class _TabbarpageState extends State<Tabbarpage> {
  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(length: 3, child: Scaffold(
      appBar: AppBar(
        bottom: TabBar(
          
          tabs: [
          Tab(icon: Icon(Icons.home),text: "Home",),
          Tab(icon: Icon(Icons.star_outline_sharp),text: "Star",),
          Tab(icon: Icon(Icons.menu),text: "Menu",)
        ]),
      ),
      body: TabBarView(children: [
        Center(child: Text("data")),
        Center(child: Text("data")),
        Center(child: Text("data"))
      ]),
    ));
  }
}