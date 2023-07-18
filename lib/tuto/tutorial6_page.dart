import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Tutorial6Page extends StatelessWidget {
  const Tutorial6Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Karbon ayak izini hesaplayabilirsin.'),
        systemOverlayStyle: SystemUiOverlayStyle.light,
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'images/sayfa6.png',
                width: 300,
              ),
              const SizedBox(height: 16),
              const Text(
                'EcoMate',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.greenAccent,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
