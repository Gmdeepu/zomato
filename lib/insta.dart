import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project/instavalues.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class Insta extends StatefulWidget {
  const Insta({super.key});

  @override
  State<Insta> createState() => _InstaState();
}

class _InstaState extends State<Insta> {
  void main()
{
        var a = true;
        var b = false;
          // Printing the Values of a & b
        print("a: $a , b: $b\n");
    
        // Using And Operator
        print("a && b = ${a&&b}");
    
        // Using Or Operator
        print("a || b = ${a||b}");
    
        // Using Not Operator
        print("!a = ${!a}");
}
  List<Widget> carouselItems = [
    Container(
      width: 400,
      height: 400,
      child: Image.asset("assets/img1.jpg"),
    ),
    Container(
      width: 400,
      height: 600,
      child: Image.asset("assets/img2.jpg"),
    ),
    Container(
      width: 400,
      height: 600,
      child: Image.asset("assets/img3.jpg"),
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "Instagram",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        actions: [
          Icon(
            MdiIcons.heartOutline,
            color: Colors.white,
          ),
          SizedBox(
            width: 25,
          ),
          Icon(
            MdiIcons.chatOutline,
            color: Colors.white,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 100,
              child: ListView.builder(
                  itemCount: img.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      margin: EdgeInsets.all(3),
                      width: 90,
                      height: 90,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          shape: BoxShape.circle,
                          gradient: LinearGradient(
                              colors: [Colors.orange, Colors.purple],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight)),
                      child: Padding(
                        padding: const EdgeInsets.all(6),
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(100),
                              child: Image.asset(
                                img[index].image.toString(),
                                fit: BoxFit.cover,
                              )),

                            
                        ),
                      ),
                       
                    );
                    
                   
                  },),
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.all(8),
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage("assets/img2.jpg"),
                          fit: BoxFit.cover)),
                ),
                Text(
                  "instagram_user",
                  style: TextStyle(color: Colors.white),
                ),
                Icon(
                  Icons.verified,
                  color: Colors.blue,
                  size: 15,
                ),
              ],
            ),
            Container(
              height: 300,
              color: Colors.white,
              child: CarouselSlider(
                  items: carouselItems,
                  options: CarouselOptions(
                    
                    height: 300,
                    autoPlay: true,
                    enlargeCenterPage: true,
                    enableInfiniteScroll: true,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(5),
              child: Row(
                children: [
                  Icon(
                    MdiIcons.heart,
                    color: const Color.fromARGB(255, 194, 226, 9),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    MdiIcons.chatOutline,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    MdiIcons.send,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 260,
                  ),
                  Icon(
                    MdiIcons.bookmarkOutline,
                    color: Colors.white,
                  )
                ],
              ),
            ),
             Row(
              children: [
                Container(
                  margin: EdgeInsets.all(8),
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage("assets/img2.jpg"),
                          fit: BoxFit.cover)),
                ),
                Text(
                  "instagram_user",
                  style: TextStyle(color: Colors.white),
                ),
                Icon(
                  Icons.verified,
                  color: Colors.blue,
                  size: 15,
                ),
                Spacer(),
                Icon(Icons.more_vert_outlined)
              ],
            ),
            Container(
              height: 300,
              color: Colors.white,
              child: CarouselSlider(
                  items: carouselItems,
                  options: CarouselOptions(
                    height: 400,
                    autoPlay: true,
                    enlargeCenterPage: true,
                    enableInfiniteScroll: true,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(5),
              child: Row(
                children: [
                  Icon(
                    MdiIcons.heart,
                    color: Colors.red,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    MdiIcons.chatOutline,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    MdiIcons.send,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 260,
                  ),
                  Icon(
                    MdiIcons.bookmarkOutline,
                    color: Colors.white,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
