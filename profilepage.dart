import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:mealplans/userdetails.dart';
import 'package:firebase_core/firebase_core.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final CollectionReference userdetails =
      FirebaseFirestore.instance.collection('userdetails');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.yellow,
          actions: [
            Icon(Icons.more_vert),
          ],
        ),
        body: StreamBuilder(
          stream: UserDetails.snapshots(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              
            }
            return Container();
          },
        ));
  }
}
