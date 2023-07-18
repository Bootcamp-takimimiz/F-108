import 'package:flutter/material.dart';

class Tutorial8Page extends StatelessWidget {
  const Tutorial8Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('EcoMate'),
      ),
      backgroundColor: const Color(0xFFFFFFFF),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'images/sayfa8.png',
              width: 300,
            ),
            const SizedBox(height: 16),
            const Text(
              'Marka önerileri ile sürdürülebilirliğe önem veren markaları keşfedebilirsin.',
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
