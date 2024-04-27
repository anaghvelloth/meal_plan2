import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:mealplans/firebase_options.dart';
import 'package:mealplans/homepage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:mealplans/welcomepage.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.android,
  );
  runApp(MealPlans());
}

class MealPlans extends StatelessWidget {
  const MealPlans({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: WelcomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
