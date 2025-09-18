import 'package:flutter/material.dart';
import 'simple_page.dart';


// صفحة الأدوات (Tools)
class ToolsPage extends StatelessWidget {
  const ToolsPage({super.key});

  @override
  Widget build(BuildContext context) {
    // قائمة الأدوات
    final tools = [
      {"title": "قائمة الشبكات", "icon": Icons.wifi},
      {"title": "تفاصيل الشبكة", "icon": Icons.info_outline},
      {"title": "فحص Ping", "icon": Icons.waves},
      {"title": "Traceroute", "icon": Icons.alt_route},
      {"title": "فحص المنافذ", "icon": Icons.dns},
      {"title": "Whois", "icon": Icons.language},
      {"title": "الأجهزة المتصلة", "icon": Icons.devices},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("الأدوات"),
        backgroundColor: Colors.black,
        foregroundColor: Colors.greenAccent,
        centerTitle: true,
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.black, Colors.green],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: GridView.builder(
          padding: const EdgeInsets.all(16),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // عمودين
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
            childAspectRatio: 1, // الكروت مربعة
          ),
          itemCount: tools.length,
          itemBuilder: (context, index) {
            return _buildToolCard(
              context,
              tools[index]["title"] as String,
              tools[index]["icon"] as IconData,
            );
          },
        ),
      ),
    );
  }

  // بطاقة أداة (Tool Card)
  Widget _buildToolCard(BuildContext context, String title, IconData icon) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        borderRadius: BorderRadius.circular(20),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => SimplePage(title: title)),
          );
        },
        child: Container(
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.greenAccent, width: 1.5),
            boxShadow: [
              BoxShadow(
                color: Colors.greenAccent.withOpacity(0.4),
                blurRadius: 8,
                spreadRadius: 2,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, color: Colors.greenAccent, size: 40),
              const SizedBox(height: 10),
              Text(
                title,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.greenAccent,
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
