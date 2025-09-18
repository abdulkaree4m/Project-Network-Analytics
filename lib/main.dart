import 'package:flutter/material.dart';
import 'home.dart';
void main() {
  runApp( NetworkApp());
}
class NetworkApp extends StatelessWidget {
  const NetworkApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Home(),);
  }
}
