import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Container(
        decoration:  BoxDecoration(
        image: DecorationImage(
        image: AssetImage("assets/imag8.jpg"), //  مسار الصورة هنا
    fit: BoxFit.cover,

    )
    ),

    ));
  }
}
