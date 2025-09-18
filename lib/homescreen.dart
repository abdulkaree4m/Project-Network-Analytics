import 'package:flutter/material.dart';
import '../home.dart'; // ← استدعاء صفحة البداية
import 'tools_page.dart';
import 'simple_page.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(

        decoration:  BoxDecoration(
          image: DecorationImage(
            image: AssetImage("Imag/imag8.jpg"), //  مسار الصورة هنا
            fit: BoxFit.cover, //  تغطي الشاشة كاملة
          ),
        ),

        child: SafeArea(
          child: Column(
            children: [
              // AppBar مخصص مع زر الرجوع
              Padding(
                padding:  EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    IconButton(
                      icon:  Icon(Icons.arrow_back, color: Colors.white,size: 31),
                      onPressed: () {
                        // العودة إلى صفحة البداية
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) =>  Home()),
                        );
                      },
                    ),
                    SizedBox(width: 10),
                    Text(
                      "القائمة الرئيسية",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.2,
                      ),
                    ),
                  ],
                ),
              ),

              // البطاقات الرئيسية
              Expanded(
                child: GridView.count(
                  crossAxisCount: 3,//الاعمدة
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  padding: const EdgeInsets.all(16),
                  children: [
                    _buildMainCard(
                      context,
                      "الأدوات",
                      Icons.build,
                      const ToolsPage(),
                    ),
                    _buildMainCard(
                      context,
                      "التنبيهات",
                      Icons.notifications,
                      const SimplePage(title: "التنبيهات"),
                    ),
                    _buildMainCard(
                      context,
                      "الإعدادات",
                      Icons.settings,
                      const SimplePage(title: "الإعدادات"),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// دالة إنشاء البطاقات
  Widget _buildMainCard(BuildContext context, String title, IconData icon, Widget page) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (_) => page));
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.greenAccent, width: 2),
          boxShadow: [
            BoxShadow(
              color: Colors.greenAccent,
              blurRadius: 10,
              spreadRadius: 2,
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, color: Colors.greenAccent, size: 50),
            const SizedBox(height: 12),
            Text(
              title,
              style: const TextStyle(
                color: Colors.greenAccent,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
