import 'package:flutter/material.dart';

class Tutorial4Page extends StatelessWidget {
  const Tutorial4Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('EcoMate'),
      ),
      backgroundColor: const Color(0xFF4CAF50),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'images/sayfa7.png',
              width: 300,
            ),
            const SizedBox(height: 50),
            const Text(
              'Not defteri ile geri dönüşüme dair notlarını bir uygulama da derleyebilirsin.',
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
