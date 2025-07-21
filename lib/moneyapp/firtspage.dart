import 'dart:ffi';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project/moneyapp/secondpage.dart';

class Firstpage extends StatefulWidget {
  const Firstpage({super.key});

  @override
  State<Firstpage> createState() => _FirstpageState();
}

class _FirstpageState extends State<Firstpage> {
  @override
  Widget build(BuildContext context) {
    List<Widget> carouselItems = [
      Container(
        width: 600,
        height: 600,
        child: Image.asset("assets/card1.png"),
      ),
      Container(
        width: 600,
        height: 600,
        child: Image.asset("assets/card2.png"),
      ),
      Container(
        width: 600,
        height: 600,
        child: Image.asset("assets/card3.png"),
      ),
      Container(
        width: 600,
        height: 600,
        child: Image.asset("assets/card1.png"),
      ),
    ];
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 222, 217, 217),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(top: 20, left: 30),
                  child: Text(
                    "Good morning,Terry",
                    style: TextStyle(fontSize: 27),
                  ),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 0, left: 32),
                    child: Text(
                      "Welcome to Neobank",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: Container(
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 232, 230, 230),
                            borderRadius: BorderRadius.circular(10)),
                        child: IconButton(
                            onPressed: () {
                              showModalBottomSheet(
                                  backgroundColor: Colors.transparent,
                                  context: context,
                                  builder: (BuildContext context) {
                                    return Container(
                                      height: 480,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.vertical(
                                              top: Radius.circular(20))),
                                      child: Padding(
                                        padding: const EdgeInsets.all(4),
                                        child: Column(
                                          children: [
                                            Container(
                                              width: 45,
                                              height: 4,
                                              decoration: BoxDecoration(
                                                  color: Colors.black,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          20)),
                                            ),
                                            Expanded(
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        vertical: 10),
                                                child: ListView.builder(
                                                    itemCount: 20,
                                                    itemBuilder:
                                                        (BuildContext context,
                                                            int index) {
                                                      return ListTile(
                                                        title: Text(
                                                            "error messages..........."),
                                                        subtitle: Text(
                                                            "k hgy tfbh hhhhhhh"),
                                                      );
                                                    }),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    );
                                  });
                            },
                            icon: Icon(Icons.notification_add_outlined))),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Container(
                  width: 400,
                  height: 200,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Your balance",
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 20),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "\$3,200.00",
                                  style: TextStyle(fontSize: 40),
                                ),
                                SizedBox(
                                  width: 100,
                                ),
                                Icon(Icons.visibility_off)
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: Container(
                                  width: 300,
                                  child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.black),
                                      onPressed: () {
                                        showModalBottomSheet<void>(
                                          context: context,
                                          backgroundColor: Colors.transparent,
                                          isScrollControlled: true,
                                          builder: (BuildContext context) {
                                            return Container(
                                              height: 480,
                                              decoration: BoxDecoration(
                                                color: Colors.black,
                                                borderRadius:
                                                    BorderRadius.vertical(
                                                  top: Radius.circular(20),
                                                ),
                                              ),
                                              child: Column(
                                                children: [
                                                  // Drag Handle
                                                  Padding(
                                                    padding: const EdgeInsets
                                                        .symmetric(
                                                        vertical: 12.0),
                                                    child: Container(
                                                      width: 40,
                                                      height: 5,
                                                      decoration: BoxDecoration(
                                                        color: Colors.grey[700],
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10),
                                                      ),
                                                    ),
                                                  ),

                                                  // ListView
                                                  Expanded(
                                                    child: ListView.builder(
                                                      itemCount: 10,
                                                      physics:
                                                          BouncingScrollPhysics(),
                                                      itemBuilder:
                                                          (BuildContext context,
                                                              int index) {
                                                        return SizedBox(
                                                          width: 200,
                                                          child: ListTile(
                                                            tileColor: Colors
                                                                .transparent,
                                                            leading: Container(
                                                              width: 60,
                                                              height: 60,
                                                              decoration:
                                                                  BoxDecoration(
                                                                shape: BoxShape
                                                                    .circle,
                                                                color: Colors
                                                                    .white,
                                                              ),
                                                              child: Icon(Icons
                                                                  .account_box),
                                                            ),
                                                            title: Text(
                                                              "Name",
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .white),
                                                            ),
                                                            subtitle: Text(
                                                              "25 July",
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .grey),
                                                            ),
                                                          ),
                                                        );
                                                      },
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            );
                                          },
                                        );
                                      },
                                      child: Text(
                                        "Add Money",
                                        style: TextStyle(color: Colors.white),
                                      ))),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Container(
                      child: Text(
                        "Your cards",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 130,
                  ),
                  Container(
                    child: Text(
                      "+ New card",
                      style: TextStyle(fontSize: 17),
                    ),
                  )
                ],
              ),
              Container(
                child: CarouselSlider(
                    items: carouselItems,
                    options: CarouselOptions(
                      autoPlay: true,
                      enlargeCenterPage: true,
                    )),
              ),
              Container(
                width: 350,
                height: 150,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15),
                          child: Text(
                            "Transactions",
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: GestureDetector(
                                onTap: () {
                                  showModalBottomSheet<void>(
                                      context: context,
                                      backgroundColor: Colors.transparent,
                                      builder: (BuildContext context) {
                                        return Container(
                                          height: 500,
                                          decoration: BoxDecoration(
                                              color: Colors.black,
                                              borderRadius:
                                                  BorderRadius.vertical(top: Radius.circular(20))),
                                          child: Column(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.all(8),
                                                child: Container(
                                                  width: 45,
                                                  height: 4,
                                                  decoration: BoxDecoration(
                                                      color: Colors.grey,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              25)),
                                                ),
                                              ),
                                              Text("Comments",style: TextStyle(color: Colors.white),),
                                              Expanded(
                                                child: Padding(
                                                  padding: const EdgeInsets.symmetric(vertical: 8),
                                                  child: ListView.builder(
                                                      itemCount: 10,
                                                      itemBuilder:
                                                          (BuildContext context,
                                                              int index) {
                                                        return ListTile(
                                                          leading: Icon(
                                                            Icons
                                                                .notification_add,
                                                            color: Colors.white,
                                                            size: 25,
                                                          ),
                                                          title: Text(
                                                            "You may receive new messages",
                                                            style: TextStyle(
                                                                color:
                                                                    Colors.white),
                                                          ),
                                                        );
                                                      }),
                                                ),
                                              ),
                                            ],
                                          ),
                                        );
                                      });
                                },
                                child: Container(
                                  width: 40, 
                                  height: 40,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              "assets/starbucks.png"))),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Column(
                              children: [
                                Text(
                                  "Starbucks Cofee",
                                  style: TextStyle(fontSize: 20),
                                ),
                                Text(
                                  "October 17,09:00 PM",
                                  style: TextStyle(color: Colors.grey),
                                )
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 12),
                            child: Text(
                              "See all",
                              style: TextStyle(fontSize: 15),
                            ),
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Text("-\$44.80"),
                          Container(
                            width: 50,
                            height: 25,
                            child: Text("+\$1.65"),
                            decoration: BoxDecoration(
                                color: Colors.lightGreen,
                                borderRadius: BorderRadius.circular(50)),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
