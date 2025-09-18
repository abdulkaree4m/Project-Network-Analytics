import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // خلفية الشاشة الأساسية
      body: Stack(
        children: [
      // صورة خلفية
      Positioned.fill(
      child: Image.asset(
        "assets/imag3.jpg",
        fit: BoxFit.cover,
      ),
    ),]
    ),


    );
  }
}
