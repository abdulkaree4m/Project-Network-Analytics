import 'package:flutter/material.dart';

// صفحة مؤقتة (للتنبيهات - الإعدادات - الأدوات)
class SimplePage extends StatelessWidget {
  final String title;

  const SimplePage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Colors.black,
        foregroundColor: Colors.greenAccent,
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          "هذه صفحة: $title",
          style: const TextStyle(
            fontSize: 22,
            color: Colors.greenAccent,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
