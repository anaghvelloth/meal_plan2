import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mealplans/bottomnavigation.dart';
import 'package:mealplans/homepage.dart';
import 'package:mealplans/userdetails.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            SizedBox(
              height: 200,
            ),
            Center(
              child: Text(
                "Log in to your account",
                style: GoogleFonts.caveat(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 30,
                ),
              ),
            ),
            SizedBox(height: 70),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextField(
                  style: TextStyle(color: Colors.grey),
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(7),
                    ),
                    hintText: 'Username',
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(7),
                    ),
                    hintText: 'email',
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextField(
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(7),
                    ),
                    hintText: 'password ',
                  ),
                ),
              ),
            ),
            ElevatedButton(
              child: Text(
                'Done',
                style: TextStyle(color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BottomNavigatorapp(),
                    ));
              },
            ),
          ]),
        ),
      ),
    );
  }
}
