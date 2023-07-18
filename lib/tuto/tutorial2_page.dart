
import 'package:flutter/material.dart';

class Tutorial2Page extends StatelessWidget {
  const Tutorial2Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tutorial Sayfası 2'),
      ),
      backgroundColor: const Color(0xFF7CBD7D), // FFF8E5 renk kodu
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'images/sayfa2.png', //
              width: 300,
            ),
            const SizedBox(height: 16),
            const Text(
              'Takvim özelliğiyle geri dönüşüme ve sürdürübilirliğe dair yaptıklarını kişisel takvimine ekleyebilirsin.\n\nEtkinlik takvimi ile etkinlikler hakkında fikir sahibi olabilirsin.',
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
