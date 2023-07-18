import 'package:flutter/material.dart';

class Tutorial5Page extends StatelessWidget {
  const Tutorial5Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sürdürülebilirlik ve geri dönüşümle ilgili derlenmiş makalelere ulaşabilirsin.'),
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'images/sayfa5.png',
              width: 400,
            ),
            const SizedBox(height: 40),
            const Text(
              'EcoMate',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                color: Colors.greenAccent,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

