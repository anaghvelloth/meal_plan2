import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'historypage.dart';

class Lunch extends StatefulWidget {
  const Lunch({super.key});

  @override
  State<Lunch> createState() => _LunchState();
}

class _LunchState extends State<Lunch> {
  List<String> myitems = [
    'Uchayoon',
    'Chicken Biriyani',
    'Mutton Biriyani',
    'Fish Biriyani',
    'Kuzhi Mandhi',
    'Beef Mandhi',
    'Mutton Mandhi',
    'Neychor',
    'Fried Rice',
    'Egg Biriyani',
    'Dum Biriyani',
    'Kanjiyum puykkum',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.yellow,
      ),
      body: SafeArea(
        child: Column(children: [
          CarouselSlider(
            items: [
              Container(
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.5),
                  image: DecorationImage(
                      image: AssetImage('assets/sadhya.webp'),
                      fit: BoxFit.cover),
                ),
              ),
              Container(
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.5),
                  image: DecorationImage(
                      image: AssetImage('assets/tly-b.jpg'), fit: BoxFit.cover),
                ),
              ),
              Container(
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.5),
                  image: DecorationImage(
                      image: AssetImage('assets/mutton-b.jpg'),
                      fit: BoxFit.cover),
                ),
              ),
            ],
            options: CarouselOptions(
              height: 400.0,
              enlargeCenterPage: false,
              autoPlay: true,
              aspectRatio: 16 / 9,
              autoPlayCurve: Curves.fastOutSlowIn,
              enableInfiniteScroll: true,
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              viewportFraction: 0.9,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Expanded(
            child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 200,
                    childAspectRatio: 3,
                    crossAxisSpacing: 6,
                    mainAxisSpacing: 6),
                itemCount: myitems.length,
                itemBuilder: (BuildContext ctx, index) {
                  return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => history(), // Pass the selected item only
                          ),
                        );
                      },
                      child: Container(
                        height: 5,
                        width: 30,
                        // color: Colors.yellow,
                        child: Center(
                          child: Text(
                            myitems[index],
                            style: GoogleFonts.roboto(fontSize: 17),
                          ),
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.yellow),
                      ),
                    );
                }),
          ),
        ]),
      ),
    );
  }
}
