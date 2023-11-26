import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_service.dart';
import 'src/Pages/HomePage/HomePage.dart';
import 'src/Pages/HomePage/FirstPage.dart';
import 'src/Pages/HomePage/SecondPage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
        apiKey: "AIzaSyDT0xcs8aja_tug3-wyqeyYOna3DhiikuI",
        authDomain: "flutterapp-24b13.firebaseapp.com",
        projectId: "flutterapp-24b13",
        storageBucket: "flutterapp-24b13.appspot.com",
        messagingSenderId: "427512474659",
        appId: "1:427512474659:web:b1dbce6e39aedb1ab25596"),
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final FirebaseService firebaseService = FirebaseService();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/firstPage': (context) => const FirstPage(),
        '/SecondPage': (context) => const SecondPage(),
      },
    );
  }
}
