import 'package:flutter/material.dart';

class Tutorial4Page extends StatelessWidget {
  const Tutorial4Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Topluluk özelliği ile sürdürülebilirliğe dair  kendi tecrübelerini paylaşabilir veya diğer üyelerin paylaşımlarından faydalanabilirsin.'),
      ),
      backgroundColor: const Color(0xFF864F00),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'images/sayfa4.png',
              width: 350,
            ),
            const SizedBox(height: 16),
            const Text(
              'Tutorial Sayfası 4',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

