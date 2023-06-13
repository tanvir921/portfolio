import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:portfolio/ui/home/home_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: firebaseConfig);
  runApp(MyApp());
}

const firebaseConfig = FirebaseOptions(
    apiKey: "AIzaSyAkvUix45Y8sTjJTBP7rPfyc26CF96ImDU",
    authDomain: "portfolio-tanvir-ahmed.firebaseapp.com",
    projectId: "portfolio-tanvir-ahmed",
    storageBucket: "portfolio-tanvir-ahmed.appspot.com",
    messagingSenderId: "923594793281",
    appId: "1:923594793281:web:ba89ece822250c17c241c0",
    measurementId: "G-H95NCQP1RG");

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tanvir Ahmed',
      home: HomeScreen(),
    );
  }
}
