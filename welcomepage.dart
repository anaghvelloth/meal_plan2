import 'package:flutter/material.dart';
import 'package:mealplans/signinpage.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 125,
            ),
            Center(
              child: Text(
                'Say good bye to daily stress\n and plan your daily menu \nwith "Your Meal Planner..."',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.normal),
              ),
            ),
            // SizedBox(
            //   height: 25,
            // ),
            Image.asset(
              'assets/mealicon.png',
              height: 400,
              width: 400,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginPage(),
                    ));
              },
              child: Container(
                height: 50,
                width: 300,
                child: Center(
                  child: Text(
                    'Get Started',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
