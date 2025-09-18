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
    ),

          // زر "ابدأ الاستخدام"
          Align(
            alignment: Alignment.bottomCenter,
            child: SafeArea(
              minimum:  EdgeInsets.only(bottom: 130), // المسافة من الأسفل
              child: SizedBox(
                width: double.infinity,
                height: 60,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 70),
                  child: ElevatedButton(
                    onPressed: () {
                      // الانتقال إلى صفحة ثانية
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  HomeScreen()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey.shade900, // لون الزر
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8), // زوايا دائرية بسيطة
                        side:  BorderSide(
                          color: Colors.greenAccent, // حدود خضراء
                          width: 2,
                        ),
                      ),
                      elevation: 8, // ظل الزر
                      shadowColor: Colors.greenAccent,
                    ),
                    child:  Text(
                      "ابدأ الاستخدام", // نص الزر
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.greenAccent,
                        letterSpacing: 1.2,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ]
    ),


    );
  }
}
