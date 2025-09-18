import 'package:flutter/material.dart';
import '../home.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/imag8.jpg"), //  مسار الصورة هنا
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(child: Column(
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
        )),
      ),
    );
  }
  /// دالة إنشاء البطاقات
  
}


