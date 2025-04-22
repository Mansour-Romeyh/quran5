import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quran5/core/constant/appfonts.dart';
import 'package:quran5/core/constant/approutes.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        decoration: const BoxDecoration(
          color: Color(0xFF5C2C0C), // بني محمر غامق كخلفية
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              ' مرحبا بك في تطبيق الورد اليومي لحفظ القران الكريم',
              textAlign: TextAlign.center,
              style: Appfonts.fonttagwal.copyWith(
                color: Color(0xFFFFD700), // ذهبي
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 50),
            _buildButton(
              text: 'السور',
              icon: Icons.book,
              onPressed: () => Get.toNamed(Approutes.homeview),
            ),
            const SizedBox(height: 20),
            _buildButton(
              text: 'المفضلة',
              icon: Icons.favorite,
              onPressed: () => Get.toNamed(Approutes.favorite),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildButton({
    required String text,
    required IconData icon,
    required VoidCallback onPressed,
  }) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xFF8B4513), // بني أفتح للأزرار
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              color: Color(0xFF3E1E0A), // ظل بني غامق
              blurRadius: 10,
              offset: const Offset(0, 5),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                color: Color(0xFFFFD700), // ذهبي
                size: 30,
              ),
              const SizedBox(width: 10),
              Text(
                text,
                style: Appfonts.fonttagwal.copyWith(
                  color: Color(0xFFFFD700), // ذهبي
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
