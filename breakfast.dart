import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:mealplans/historypage.dart';

class BreakFast extends StatefulWidget {
  BreakFast({super.key});

  @override
  State<BreakFast> createState() => _BreakFastState();
}

int counter = 1;
String currentMeal = '';

class _BreakFastState extends State<BreakFast> {
  // int currentindex = 0;
  // bool oncolorChanged = false;
  List<String> myitems = [
    'Dosa',
    'Idli',
    'Vellappam',
    'Pathiri',
    'Poori',
    'Puttu',
    'Chappathi',
    'Macroni',
    'Idiyappam',
    'Iattura',
    'Paalappam',
    'Upmaav',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('select your food item'),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: Color.fromARGB(255, 22, 17, 17),
          ),
        ),
        //actions: [],
        backgroundColor: Colors.yellow,
      ),
      body: SafeArea(
        child: Column(
          children: [
            CarouselSlider(
              items: [
                Container(
                  margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.5),
                    image: DecorationImage(
                        image: AssetImage('assets/masala-dosa.jpg'),
                        fit: BoxFit.cover),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.5),
                    image: DecorationImage(
                        image: AssetImage('assets/puttu&curry.jpg'),
                        fit: BoxFit.cover),
                  ),
                ),
              ],
              options: CarouselOptions(
                height: 400.0,
                enlargeCenterPage: true,
                autoPlay: true,
                aspectRatio: 15 / 9,
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
                      crossAxisSpacing: 5,
                      mainAxisSpacing: 5),
                  itemCount: myitems.length,
                  itemBuilder: (BuildContext ctx, index) {
                    return GestureDetector(
                      onTap: () {
                        Fluttertoast.showToast(
                          msg: "meal succeessfully added",
                          toastLength: Toast
                              .LENGTH_SHORT, // Duration for which the toast is visible
                          gravity: ToastGravity
                              .BOTTOM, // Position of the toast on the screen
                          backgroundColor: Colors.black.withOpacity(
                              0.7), // Background color of the toast
                          textColor:
                              Colors.white, // Text color of the toast message
                          fontSize: 16.0, // Font size of the toast message
                        );
                        currentMeal = myitems[index];
                        print('currentMeal:$currentMeal');
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //     builder: (context) => History(myitems: [
                        //       myitems[index]
                        //     ]), // Pass the selected item only
                        //   ),
                        // );

                        // setState(() {

                        //   for (var i = 0; i <= currentindex; i++) {
                        //       setState(() {
                        //         oncolorChanged = true;

                        //       });
                        //   }
                        // });
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
          ],
        ),
      ),
    );
  }
}
