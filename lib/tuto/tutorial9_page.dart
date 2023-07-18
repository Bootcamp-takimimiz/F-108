import 'package:flutter/material.dart';

class Tutorial9Page extends StatelessWidget {
  const Tutorial9Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('EcoMate'),
      ),
      backgroundColor: const Color(0xFF7FE8A5),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'images/sayfa9.png',
              width: 350,
            ),
            const SizedBox(height: 16),
            const Text(
              'Geri dönüşüm ve  sürdürebilirliğe dair eğlenceli testimize katılabilirsin.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/');
              },
              child: const Text('Anasayfa'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/bilgi_testi');
              },
              child: const Text('Bilgi Testi'),
            ),
          ],
        ),
      ),
    );
  }
}
