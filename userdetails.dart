import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mealplans/bottomnavigation.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

class UserDetails extends StatefulWidget {
  const UserDetails({super.key});

  @override
  State<UserDetails> createState() => _HomePageState();

  static snapshots() {}
}

class _HomePageState extends State<UserDetails> {
  final CollectionReference<Map<String, dynamic>> details =
      FirebaseFirestore.instance.collection('userdetails');
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 60,
              ),
              Center(
                child: Text(
                    style: GoogleFonts.caveat(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 30),
                    "Enter Your Details"),
              ),
              SizedBox(height: 70),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(9.0),
                  // child: Container(
                  //   height: 60,
                  //   width: 400,
                  //   decoration: BoxDecoration(
                  //       color: Colors.transparent,
                  //       border: Border.all(color: Colors.black),
                  //       borderRadius: BorderRadius.circular(10),),
                  // ),
                  // TextField(
                  //   style: TextStyle(color: Colors.grey),
                  //   keyboardType: TextInputType.text,
                  //   decoration: InputDecoration(
                  //     border: OutlineInputBorder(
                  //       borderRadius: BorderRadius.circular(7),
                  //     ),
                  //     hintText: 'Name',
                  //   ),
                  // ),
                ),
              ),
              // SizedBox(height: 10),
              // Center(
              //   child: Padding(
              //     padding: const EdgeInsets.all(9.0),
              //     child: TextField(
              //       decoration: InputDecoration(
              //         border: OutlineInputBorder(
              //           borderRadius: BorderRadius.circular(7),
              //         ),
              //         hintText: 'email',
              //       ),
              //     ),
              //   ),
              // ),
              // SizedBox(height: 10),
              // Center(
              //   child: Padding(
              //     padding: const EdgeInsets.all(9.0),
              //     child: TextField(
              //       decoration: InputDecoration(
              //         border: OutlineInputBorder(
              //           borderRadius: BorderRadius.circular(7),
              //         ),
              //         hintText: 'phone number',
              //       ),
              //     ),
              //   ),
              // ),
              // SizedBox(height: 20),
              // Center(
              //   child: TextField(
              //     decoration: InputDecoration(
              //       border: OutlineInputBorder(
              //         borderRadius: BorderRadius.circular(7),
              //       ),
              //       hintText: '',
              //     ),
              //   ),
              // ),
              // SizedBox(height: 10),
              // Center(
              //   child: Padding(
              //     padding: const EdgeInsets.all(9.0),
              //     child: TextField(
              //       decoration: InputDecoration(
              //         border: OutlineInputBorder(
              //           borderRadius: BorderRadius.circular(7),
              //         ),
              //         hintText: 'Age',
              //       ),
              //     ),
              //   ),
              // ),
              // SizedBox(height: 10),
              // Center(
              //   child: Padding(
              //     padding: const EdgeInsets.all(9.0),
              //     child: TextField(
              //       decoration: InputDecoration(
              //         border: OutlineInputBorder(
              //           borderRadius: BorderRadius.circular(7),
              //         ),
              //         hintText: 'Weight',
              //       ),
              //     ),
              //   ),
              // ),
              SizedBox(
                height: 450,
              ),
              Center(
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => BottomNavigatorapp()));
                  },
                  child: Text(
                    'Done',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
