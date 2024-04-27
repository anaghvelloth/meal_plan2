import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:mealplans/bottomnavigation.dart';
import 'package:mealplans/googlesign.dart';
import 'package:mealplans/homepage.dart';
import 'package:mealplans/signup.dart';
import 'package:mealplans/userdetails.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:sign_in_button/sign_in_button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController passwordController = new TextEditingController();
  TextEditingController emailController = new TextEditingController();
  // User? _user;
  // Future<void> signInWithGoogle(BuildContext context) async {
  //   try {
  //     final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
  //     if (googleUser == null) {
  //       throw Exception("Google Sign-In was canceled.");
  //     }
  //     final GoogleSignInAuthentication googleAuth =
  //         await googleUser.authentication;
  //     final AuthCredential credential = GoogleAuthProvider.credential(
  //       accessToken: googleAuth.accessToken,
  //       idToken: googleAuth.idToken,
  //     );
  //     final UserCredential authResult =
  //         await FirebaseAuth.instance.signInWithCredential(credential);
  //     _user = authResult.user;

  // Navigate to the home page after successful sign-in
  //     ();

  //     Navigator.pushReplacement(
  //       context,
  //       MaterialPageRoute(builder: (context) => LoginPage()),
  //     );
  //   } catch (error) {
  //     print("Google Sign-In Error: $error");
  //   }
  // }
  // List<String> email = [];
  // List<String> password = [];

  // void setdatatosharedpreferences() async {
  //   final prefs = await SharedPreferences.getInstance();
  //   await prefs.setStringList('username', username);
  //   await prefs.setStringList('password', password);
  // }

  // getdatatosharedpreferences() async {
  //   final prefss = await SharedPreferences.getInstance();
  //   username = prefss.getStringList('username')!;
  // }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(children: [
            SizedBox(
              height: 250,
            ),
            Text(
              "WELCOME",
              style: GoogleFonts.caveat(
                  color: Color.fromARGB(255, 22, 21, 21),
                  fontWeight: FontWeight.w600,
                  fontSize: 25),
            ),
            SizedBox(height: 35),
            // Center(
            //   child: Center(
            //     child: Container(
            //       child: Center(
            //         child: TextFormField(
            //           decoration: InputDecoration(
            //               border: InputBorder.none,
            //               hintText: "e mail or username",
            //               hintStyle: TextStyle(color: Colors.white),
            //               floatingLabelBehavior: FloatingLabelBehavior.never),
            //         ),
            //       ),
            //       height: 50,
            //       width: 300,
            //       decoration: BoxDecoration(
            //           borderRadius: BorderRadius.circular(25),
            //           color: Colors.brown[600]),
            //     ),
            //   ),
            // ),
            Container(
              height: 70,
              width: 300,
              child: Center(
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(7),
                    ),
                    hintText: 'email ',
                  ),
                  controller: emailController,
                ),
              ),
            ),
            // SizedBox(
            //   height: 15,
            // ),
            SizedBox(height: 10),
            Center(
              child: Container(
                height: 70,
                width: 300,
                child: Center(
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
                    controller: passwordController,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25), color: Colors.white),
              height: 35,
              width: 150,
              child: ElevatedButton(
                onPressed: () async {
                  await login();
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //       builder: (context) => HomePage(),
                  //     ));
                },
                style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
                child: Text(style: TextStyle(color: Colors.white), 'Sign in'),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            // TextButton(
            //   onPressed: () {
            //     Navigator.push(
            //         context,
            //         MaterialPageRoute(
            //           builder: (context) => SignupPage(),
            //         ));
            //   },
            //   child: Text(
            //     'Already have an account Sign up',
            //     style: TextStyle(color: Colors.black, fontSize: 12),
            //   ),
            // ),
            SizedBox(
              height: 1,
            ),
            Text(
              'or',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 15,
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                height: 50,
                width: 300,
                // color: Colors.black,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 184, 184, 184)),

                child: SignInButton(
                  Buttons.google,
                  onPressed: () async {
                    await signInWithGoogle();
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => BottomNavigatorapp(),
                        ));
                  },
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SignupPage(),
                    ));
              },
              child: Text(
                'Already have an account Sign up',
                style: TextStyle(color: Colors.black, fontSize: 12),
              ),
            ),
          ]),
        ),
      ),
    );
  }

  Future<void> login() async {
    // FirebaseAuth dataauth = FirebaseAuth.instance;
    // dataauth.createUserWithEmailAndPassword(
    //     email: emailController.text, password: passwordController.text);
    // Navigator.pushReplacement(
    //     context,
    //     MaterialPageRoute(
    //       builder: (context) => UserDetails(),
    //     ));
    try {
      final credential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(
            email: emailController.text,
            password: passwordController.text,
          )
          .then((value) => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => HomePage(),
              )));
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }
  }
}
