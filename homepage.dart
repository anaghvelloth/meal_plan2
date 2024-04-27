import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:mealplans/bottomnavigation.dart';
import 'package:mealplans/breakfast.dart';
import 'package:mealplans/dinner.dart';
import 'package:mealplans/lunch.dart';
import 'package:mealplans/tea.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomePage extends StatefulWidget {
  HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

String datetimenow() {
  var hour = DateTime.now().hour;
  if (hour < 12) {
    return 'Good Morning';
  } else if (hour < 17) {
    return 'Good Afternoon';
  } else if (hour <= 20) {
    return 'Good Evening';
  } else {
    return 'Good Night';
  }
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        SizedBox(
          height: 50,
        ),
        Text(
          datetimenow(),
          style: GoogleFonts.caveat(
              fontWeight: FontWeight.w700, fontSize: 35, color: Colors.black),
        ),
        SizedBox(
          height: 40,
        ),
        Text(
          'Plan Your Meals',
          style: GoogleFonts.caveat(
              color: Colors.black, fontSize: 35, fontWeight: FontWeight.w700),
        ),
        SizedBox(
          height: 50,
        ),
        DatePicker(
          DateTime.now(),
          initialSelectedDate: DateTime.now(),
          selectionColor: Colors.black,
          selectedTextColor: Colors.white,
          height: 90,
          onDateChange: (date) {
            // New date selected
            setState(() {
              var _selectedValue = date;
            });
          },
        ),
        SizedBox(
          height: 20,
        ),
        Center(
          child: Container(
            height: 60,
            width: 300,
            child: Center(
              child: TextButton(
                onPressed: () {
                  Navigator.push(
  context,
  MaterialPageRoute(
    builder: (context) => BreakFast(),
  ),
);

                },
                child: Text(
                  'Breakfast',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.yellow,
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Center(
          child: Container(
            height: 60,
            width: 300,
            child: Center(
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Lunch(),
                      ));
                },
                child: Text(
                  'Lunch',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.yellow,
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Center(
          child: Container(
            height: 60,
            width: 300,
            child: Center(
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Tea(),
                      ));
                },
                child: Text(
                  'Tea',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.yellow,
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Center(
          child: Container(
            height: 60,
            width: 300,
            child: Center(
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Dinner(),
                      ));
                },
                child: Text(
                  'Dinner',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.yellow,
            ),
          ),
        ),
      ]),
    );
    //   child: Column(children: [
    //     SizedBox(
    //       height: 50,
    //     ),
    //     Text(
    //       datetimenow(),
    //       style: GoogleFonts.caveat(
    //           fontWeight: FontWeight.w700, fontSize: 35, color: Colors.black),
    //     ),
    //     SizedBox(
    //       height: 40,
    //     ),
    //     Text(
    //       'Plan Your Meals',
    //       style: GoogleFonts.caveat(
    //           color: Colors.black, fontSize: 35, fontWeight: FontWeight.w700),
    //     ),
    //     SizedBox(
    //       height: 50,
    //     ),
    //     DatePicker(
    //       DateTime.now(),
    //       initialSelectedDate: DateTime.now(),
    //       selectionColor: Colors.black,
    //       selectedTextColor: Colors.white,
    //       height: 90,
    //       onDateChange: (date) {
    //         // New date selected
    //         setState(() {
    //           var _selectedValue = date;
    //         });
    //       },
    //     ),
    //     SizedBox(
    //       height: 20,
    //     ),
    //     Center(
    //       child: Container(
    //         height: 60,
    //         width: 300,
    //         child: Center(
    //           child: TextButton(
    //             onPressed: () {
    //               Navigator.push(
    //                   context,
    //                   MaterialPageRoute(
    //                     builder: (context) => BreakFast(),
    //                   ));
    //             },
    //             child: Text(
    //               'Breakfast',
    //               style: TextStyle(
    //                   color: Colors.black,
    //                   fontSize: 22,
    //                   fontWeight: FontWeight.bold),
    //             ),
    //           ),
    //         ),
    //         decoration: BoxDecoration(
    //           borderRadius: BorderRadius.circular(15),
    //           color: Colors.yellow,
    //         ),
    //       ),
    //     ),
    //     SizedBox(
    //       height: 20,
    //     ),
    //     Center(
    //       child: Container(
    //         height: 60,
    //         width: 300,
    //         child: Center(
    //           child: TextButton(
    //             onPressed: () {
    //               Navigator.push(
    //                   context,
    //                   MaterialPageRoute(
    //                     builder: (context) => Lunch(),
    //                   ));
    //             },
    //             child: Text(
    //               'Lunch',
    //               style: TextStyle(
    //                   color: Colors.black,
    //                   fontSize: 22,
    //                   fontWeight: FontWeight.bold),
    //             ),
    //           ),
    //         ),
    //         decoration: BoxDecoration(
    //           borderRadius: BorderRadius.circular(15),
    //           color: Colors.yellow,
    //         ),
    //       ),
    //     ),
    //     SizedBox(
    //       height: 20,
    //     ),
    //     Center(
    //       child: Container(
    //         height: 60,
    //         width: 300,
    //         child: Center(
    //           child: TextButton(
    //             onPressed: () {
    //               Navigator.push(
    //                   context,
    //                   MaterialPageRoute(
    //                     builder: (context) => Tea(),
    //                   ));
    //             },
    //             child: Text(
    //               'Tea',
    //               style: TextStyle(
    //                   color: Colors.black,
    //                   fontSize: 22,
    //                   fontWeight: FontWeight.bold),
    //             ),
    //           ),
    //         ),
    //         decoration: BoxDecoration(
    //           borderRadius: BorderRadius.circular(15),
    //           color: Colors.yellow,
    //         ),
    //       ),
    //     ),
    //     SizedBox(
    //       height: 20,
    //     ),
    //     Center(
    //       child: Container(
    //         height: 60,
    //         width: 300,
    //         child: Center(
    //           child: TextButton(
    //             onPressed: () {
    //               Navigator.push(
    //                   context,
    //                   MaterialPageRoute(
    //                     builder: (context) => Dinner(),
    //                   ));
    //             },
    //             child: Text(
    //               'Dinner',
    //               style: TextStyle(
    //                   color: Colors.black,
    //                   fontSize: 22,
    //                   fontWeight: FontWeight.bold),
    //             ),
    //           ),
    //         ),
    //         decoration: BoxDecoration(
    //           borderRadius: BorderRadius.circular(15),
    //           color: Colors.yellow,
    //         ),
    //       ),
    //     ),
    //   ]),
    // );
  }
}
