import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'historypage.dart';

class Tea extends StatefulWidget {
  const Tea({super.key});

  @override
  State<Tea> createState() => _TeaState();
}

class _TeaState extends State<Tea> {
  List<String> myitems = [
    'Tea',
    'Coffee',
    'Kattan',
    'Horlicks',
    'Boost',
    'Milk',
    'Parippuvada',
    'Unnakkai',
    'Pazham Nerache',
    'Kaaypola',
    'Kezhangpori',
    'Koyikkaal',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
      ),
      body: Column(children: [
        CarouselSlider(
          items: [
            Container(
              margin: EdgeInsets.all(6.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                image: DecorationImage(
                    image: AssetImage('assets/tea.jpg'), fit: BoxFit.cover),
              ),
            ),
            Container(
              margin: EdgeInsets.all(6.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.5),
                image: DecorationImage(
                    image: AssetImage('assets/coffee.jpg'), fit: BoxFit.cover),
              ),
            ),
            Container(
              margin: EdgeInsets.all(6.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                image: DecorationImage(
                    image: AssetImage('assets/kattan.jpg'), fit: BoxFit.cover),
              ),
            ),
          ],
          options: CarouselOptions(
            height: 400.0,
            enlargeCenterPage: true,
            autoPlay: true,
            aspectRatio: 16 / 9,
            autoPlayCurve: Curves.fastOutSlowIn,
            enableInfiniteScroll: true,
            autoPlayAnimationDuration: Duration(milliseconds: 600),
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
                  crossAxisSpacing: 5,
                  mainAxisSpacing: 5),
              itemCount: myitems.length,
              itemBuilder: (BuildContext ctx, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>history() // Pass the selected item only
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
    );
  }
}
