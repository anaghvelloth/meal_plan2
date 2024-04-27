// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:mealplans/breakfast.dart';

// class History extends StatefulWidget {
//   final List<String> myitems;

//   const History({Key? key, required this.myitems}) : super(key: key);

//   @override
//   State<History> createState() => _HistoryState();

//   void addItem(String item) {
//     // Function to add item to the list
//     myitems.add(item);
//   }
// }

// class _HistoryState extends State<History> {
//   List<String> _myitems = [];

//   @override
//   void initState() {
//     super.initState();
//     _myitems.addAll(widget.myitems); // Initialize the list
//   }

//   @override
//   void didUpdateWidget(covariant History oldWidget) {
//     super.didUpdateWidget(oldWidget);
//     _myitems = List.from(widget.myitems); // Update the list when it changes
//   }

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         body: Column(
//           children: [
//             Center(
//               child: Text(
//                 'calories',
//                 style: GoogleFonts.caveat(
//                   color: Colors.black,
//                   fontWeight: FontWeight.w300,
//                   fontSize: 40,
//                 ),
//               ),
//             ),
//             Expanded(
//               child: Container(
//                 height: 300, // Adjust the height according to your needs
//                 child: ListView.builder(
//                   itemCount: _myitems.length, // Use the updated list
//                   itemBuilder: (context, index) {
//                     return Padding(
//                       padding: const EdgeInsets.symmetric(
//                         horizontal: 20,
//                         vertical: 15,
//                       ),
//                       child: Container(
//                         height: 60,
//                         decoration: BoxDecoration(
//                           border: Border.all(color: Colors.black),
//                           borderRadius: BorderRadius.circular(20),
//                         ),
//                         child: Center(
//                           child: Text(
//                             currentMeal,
//                             style: TextStyle(fontSize: 20,color: Colors.black),
//                           ),
//                         ),
//                       ),
//                     );
//                   },
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:mealplans/breakfast.dart';

class history extends StatefulWidget {
  const history({super.key});

  @override
  State<history> createState() => _historyState();
}

class _historyState extends State<history> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: Container(
              height: 60,
              width: 260,
              color: Colors.yellow,
              child: Text(
                currentMeal,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold), 
              ),
            ),
          ),
        ],
      ),
    );
  }
}
