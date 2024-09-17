// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Screen3 extends StatefulWidget {
  const Screen3({super.key});

  @override
  State<Screen3> createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
  List<String> front = [
    'assets/pictures/front (1).jpg',
    'assets/pictures/front (18).jpg',
    'assets/pictures/front (2).jpeg',
    'assets/pictures/front (3).jpg',
    'assets/pictures/front (5).jpg',
    'assets/pictures/front (6).jpg',
    'assets/pictures/front (7).jpg',
    'assets/pictures/frontan (1).jpeg',
    'assets/pictures/frontan (2).jpeg',
    'assets/pictures/frontan (3).jpeg',
    'assets/pictures/frontan (4).jpeg',
    'assets/pictures/frontan (5).jpeg',
    'assets/pictures/front (9).jpg',
    'assets/pictures/front (10).jpg',
    'assets/pictures/frontan (1).jpg',
    'assets/pictures/frontan (2).jpg',
    'assets/pictures/frontan (3).jpg',
    'assets/pictures/frontan (4).jpg',
    'assets/pictures/frontan (5).jpg',
    'assets/pictures/frontan (6).jpg',
    'assets/pictures/frontan (7).jpg',
    'assets/pictures/frontan (8).jpg',
    'assets/pictures/frontan (9).jpg',
    'assets/pictures/frontan (11).jpg',
    'assets/pictures/frontan (12).jpg',
    'assets/pictures/frontan (13).jpg',
    'assets/pictures/frontan (14).jpg',
    'assets/pictures/frontan (15).jpg',
    'assets/pictures/frontan (16).jpg',
    'assets/pictures/frontan (17).jpg',
    'assets/pictures/frontan (18).jpg',
    'assets/pictures/frontan (19).jpg',
    'assets/pictures/frontan (20).jpg',
    'assets/pictures/frontan (21).jpg',
    'assets/pictures/frontan (22).jpg',
    'assets/pictures/frontan (23).jpg',
    'assets/pictures/frontan (24).jpg',
    'assets/pictures/front (12).jpg',
    'assets/pictures/front (13).jpg',
    'assets/pictures/front (14).jpg',
    'assets/pictures/front (15) copy.jpg',
    'assets/pictures/front (16).jpg',
    'assets/pictures/front (17).jpg',
    'assets/pictures/front (20).jpeg',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 81, 26, 22),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 81, 26, 22),
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        title: Text(
          'Front Hand Designs',
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.favorite,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Expanded(
              child: GridView.builder(
                  itemCount: front.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 4.0,
                      mainAxisSpacing: 4.0,
                      childAspectRatio: 0.8),
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: 100,
                              ),
                              Center(
                                  child: InteractiveViewer(
                                clipBehavior: Clip.none,
                                boundaryMargin: const EdgeInsets.all(8.0),
                                minScale: 1.0,
                                maxScale: 4.0,
                                child: Image.asset(
                                  front[index],
                                  height: 550,
                                  width: 400,
                                  fit: BoxFit.fitWidth,
                                ),
                              )),
                              SizedBox(
                                height: 40,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Icon(
                                    Icons.share,
                                    color: Colors.white,
                                    size: 30,
                                  ),
                                  Icon(
                                    Icons.favorite_outline,
                                    color: Colors.white,
                                    size: 30,
                                  ),
                                  Icon(
                                    Icons.swap_horiz,
                                    color: Colors.white,
                                    size: 35,
                                  )
                                ],
                              ),
                            ],
                          );
                        }));
                      },
                      child: Container(
                        height: 200,
                        width: 200,
                        child: ClipRRect(
                          borderRadius:
                              BorderRadius.circular(13.0), // Rounded edges
                          child: Image.asset(
                            front[index],
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    );
                  }))
        ],
      ),
    );
  }
}
