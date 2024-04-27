import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class score extends StatefulWidget {
  const score({super.key});

  @override
  State<score> createState() => _scoreState();
}

class _scoreState extends State<score> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        automaticallyImplyLeading: false,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back)),
        centerTitle: true,
        title: (Text('ScorePage')),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 70,
              width: 400,
              color: Color.fromARGB(255, 234, 224, 35),
              child: Padding(
                padding: EdgeInsets.all(15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Timing', 
                      style: TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                    ),
                    Text(
                      'Notify me',
                      style: TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                    )
                  ],
                ),
              ),
            ),

            // Row(
            //   children: [
            //     Padding(
            //       padding: const EdgeInsets.all(15),
            //       child: Container(height: 40,width: 400,
            //         'Timing',
            //         style:
            //             TextStyle(fontSize: 25, backgroundColor: Colors.yellow),
            //       ),
            //     ),
            //     Padding(
            //       padding: const EdgeInsets.all(15),
            //       child: Text(
            //         'Notify me',
            //         style: TextStyle(fontSize: 25),
            //       ),
            //     ),
            //   ],
            //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // ),
            ListView.separated(
              shrinkWrap: true,
              itemBuilder: (ctx, index) {
                return switches(
                  index: index,
                );
              },
              separatorBuilder: (ctx, index) {
                return Divider(
                  color: Colors.black,
                  thickness: 1,
                );
              },
              itemCount: 4,
            ),
          ],
        ),
      ),
      // body: Column(
      //   children: [
      //     SizedBox(height: 15),
      //     Center(
      //       child: Text(
      //         'Timings',
      //         style: GoogleFonts.caveat(
      //             fontSize: 30,
      //             fontWeight: FontWeight.bold,
      //             color: Colors.black),
      //       ),
      //     ),
      //     ListView.separated(
      //       itemBuilder: (ctx,index){},
      //       separatorBuilder: (ctx, index) {
      //         return Divider();
      //       },
      //       itemCount: 30,
      //     ),
      //   ],
      // ),
      //  Column(
      //   children: [
      //     Center(
      //       child: Text('Breakfast',style: TextStyle(color: const Color.fromARGB(255, 228, 224, 224),fontWeight: FontWeight.w100),),
      //     ),
      //   ],
      // ),
    );
  }
}

class switches extends StatefulWidget {
  switches({required this.index});
  int index;
  @override
  State<switches> createState() => _switchesState();
}

class _switchesState extends State<switches> {
  List<String> foodtime = ['Breakfast', 'Lunch', 'Tea', 'Dinner'];
  List<String> time = [
    "time: 8:00am",
    "time: 1:00pm",
    "time: 4.30pm",
    "time: 8:00pm",
  ];
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        foodtime[widget.index],
        style: TextStyle(fontSize: 40),
      ),
      subtitle: Text(
        time[widget.index],
        style: TextStyle(fontSize: 20),
      ),
      trailing: Switch(
        value: isSelected,
        activeColor: Colors.black,
        onChanged: (value) {
          setState(() {
            isSelected = !isSelected;
          });
        },
      ),
    );
  }
}
