import 'package:flutter/material.dart';
import 'package:flutter_project/signinpage..dart';
import 'listval.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';


class Listgrid extends StatefulWidget {
  const Listgrid({super.key});

  @override
  State<Listgrid> createState() => _ListgridState();
}

class _ListgridState extends State<Listgrid> {

  List<Widget> carouselItems = [
  Container( width: 600,       
  height: 500,
    child: Image.asset('assets/img1.jpg',fit: BoxFit.cover,)),
  Container(width: 400,
  height: 500,
    child: Image.asset('assets/img2.jpg',fit: BoxFit.cover,)),
  Container(width: 400,
  height: 500,
    child: Image.asset('assets/img3.jpg',fit: BoxFit.cover,)),
];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "Instagram",
          style: TextStyle(color: Colors.white,fontFamily: "Fredoka_Condensed-Semibold"),
        ),
        actions: [
          Icon(
            MdiIcons.heartOutline,
            size: 30,
            color: Colors.white,
          ),
          SizedBox(
            width: 20,
          ),
          Icon(
            MdiIcons.chatOutline,
            color: Colors.white,
            size: 30,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 150,
              child: ListView.builder(
                  itemCount: val.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                      children: [
                        Container(
                          margin: EdgeInsets.all(5),
                          width: 90,
                          height: 90,
                          decoration: BoxDecoration(
                            border: Border.all(
                              
                            ),
                            shape: BoxShape.circle,color: Colors.black,
                            gradient: LinearGradient(
                              colors: [
                                Colors.purple,
                                Colors.orange
                              ], // Instagram-like gradient
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(4),
                            child: Container(
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle, color: Colors.black),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(100),
                                child: Image.asset(
                                  val[index].image.toString(),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Text(
                          "Name",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    );
                  }),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(6),
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage("assets/img3.jpg"),
                      fit: BoxFit.cover,
                      ),
                        shape: BoxShape.circle, color: Colors.white),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: Text(
                    "Instagram_user",
                    style: TextStyle(color: Colors.white),
                  ),
                  
                ),
                Icon(Icons.verified,color: Colors.blue,size: 16,)
              ],
            ),
        
              Container(
                
                height: 425,
                color: Colors.white,
                child: Column(
                  children: [
                    CarouselSlider(
                      
                      items: carouselItems,
                      options: CarouselOptions(
                        height: 400,
                        // Customize the height of the carousel
                        autoPlay: true, // Enable auto-play
                        enlargeCenterPage: true, // Increase the size of the center item
                        enableInfiniteScroll: false, // Enable infinite scroll
                        onPageChanged: (index, reason) {
                          // Optional callback when the page changes
                          // You can use it to update any additional UI components
                        },
                      ),
                    ),
                    Icon(Icons.heart_broken_sharp,color: Colors.white,)
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    Icon(MdiIcons.heart,color: Colors.red,),SizedBox(width: 7),
                    Icon(MdiIcons.chatOutline,color: Colors.white,),SizedBox(width: 7,),
                    Icon(MdiIcons.send,color: Colors.white,),Spacer(),
                    Icon(MdiIcons.bookmarkOutline,color: Colors.white,),
                    
                  ],
                ),
              ),
              Row(mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text("Liked by aravind_2020 and others....",style: TextStyle(color: Colors.white),),
                  ),
                ],
              ),
              SizedBox(height: 15,),
                Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(6),
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage("assets/img3.jpg"),
                      fit: BoxFit.cover,
                      ),
                        shape: BoxShape.circle, color: Colors.white),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: Text(
                    "polimernews",
                    style: TextStyle(color: Colors.white),
                  ),
                  
                ),
                Icon(Icons.verified,color: Colors.blue,size: 16,)
              ],
            ),
          
              Container(
                
                height: 425,
                color: Colors.white,
                child: Column(
                  children: [
                    CarouselSlider(
                      
                      items: carouselItems,
                      options: CarouselOptions(
                        height: 400,
                        // Customize the height of the carousel
                        autoPlay: true, // Enable auto-play
                        enlargeCenterPage: true, // Increase the size of the center item
                        enableInfiniteScroll: false, // Enable infinite scroll
                        onPageChanged: (index, reason) {
                          
                          // Optional callback when the page changes
                          // You can use it to update any additional UI components
                        },
                      ),
                    ),
                    Icon(Icons.heart_broken_sharp,color: Colors.white,)
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    Icon(MdiIcons.heart,color: Colors.red,),SizedBox(width: 7),
                    Icon(MdiIcons.chatOutline,color: Colors.white,),SizedBox(width: 7,),
                    Icon(MdiIcons.send,color: Colors.white,),SizedBox(width: 260,),
                    Icon(MdiIcons.bookmarkOutline,color: Colors.white,)
                  ],
                ),
              )
          ],
        ),
      ),
    );
  }
}
