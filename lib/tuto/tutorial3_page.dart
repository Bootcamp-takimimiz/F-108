
import 'package:flutter/material.dart';

class Tutorial3Page extends StatelessWidget {
  const Tutorial3Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Konum özelliği ile en yakın geri dönüşüm noktasına ulaşabilirsin'),
      ),
      backgroundColor: const Color(0xFFFFFFFF),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'images/sayfa3.png',
              width: 350,
            ),
            const SizedBox(height: 20),
            const Text(
              'EcoMate',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                color: Colors.green,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
