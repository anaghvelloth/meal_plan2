import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mealplans/historypage.dart';

class Dinner extends StatefulWidget {
  const Dinner({super.key});

  @override
  State<Dinner> createState() => _DinnerState();
}

class _DinnerState extends State<Dinner> {
  List<String> myitems = [
    'Chappathi',
    'Oats',
    'Salad',
    'wheat Dosa',
    'Poori',
    'Nool pathiri',
    'Ottada',
    'macroni',
    'idiyappam',
    'battura',
    'paalappam',
    'upmaav',
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
      body: SafeArea(
        child: Column(children: [
          CarouselSlider(
            items: [
              Container(
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                      image: AssetImage('assets/chappathi.jpg'),
                      fit: BoxFit.cover),
                ),
              ),
              Container(
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.5),
                  image: DecorationImage(
                      image: AssetImage('assets/salad.jpg'), fit: BoxFit.cover),
                ),
              ),
              Container(
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                      image: AssetImage('assets/oats.jpg'), fit: BoxFit.cover),
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
      ),
    );
  }
}
