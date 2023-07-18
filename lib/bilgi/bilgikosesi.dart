//Gizem Derici

import 'package:ecomate/bilgi/screens/home_screen.dart';
import 'package:ecomate/bilgi/screens/reader_screen.dart';
import 'package:flutter/material.dart';



class Bilgi extends StatelessWidget {
  const Bilgi({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}
