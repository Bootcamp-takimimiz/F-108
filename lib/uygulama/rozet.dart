import 'package:flutter/material.dart';
import 'dart:async';

class Badge extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Zaman Sayacı Uygulaması',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: BadgeScreen(),
    );
  }
}

class BadgeScreen extends StatefulWidget {
  @override
  _BadgeScreenState createState() => _BadgeScreenState();
}

class _BadgeScreenState extends State<BadgeScreen> {
  int buttonPressCount = 0;
  int badgeLevel = 0;
  List<String> badges = [];
  bool buttonDisabled = false;
  int countdown = 86400; // 24 saatlik geri sayım (24 saat x 60 dakika x 60 saniye = 86400 saniye)
  Timer? timer;

  void _startTimer() {
    timer = Timer.periodic(Duration(seconds: 1), (Timer t) {
      setState(() {
        if (countdown > 0) {
          countdown--;
        } else {
          timer!.cancel();
          buttonDisabled = false;
        }
      });
    });
  }

  void _incrementButtonPressCount() {
    if (buttonDisabled) return;

    setState(() {
      buttonPressCount++;
    });

    if (buttonPressCount % 10 == 0) {
      setState(() {
        badgeLevel = buttonPressCount ~/ 10;
        badges.add('Rozet $badgeLevel. Seviye');
      });
      _showCongratulationsDialog();
    }

    setState(() {
      buttonDisabled = true;
      countdown = 86400; // 24 saatlik geri sayım (24 saat x 60 dakika x 60 saniye = 86400 saniye)
    });

    _startTimer();
  }

  void _showCongratulationsDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Center(child: Text('Tebrikler!')), // Başlığı Center widget'ı içine alın
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Tebrikler, yeni bir seviyeye ulaştınız.'),
              SizedBox(height: 10),
              Text('Sürdürülebilirliğe yaptığınız katkı için minnettarız!'),
            ],
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Tamam'),
            ),
          ],
        );
      },
    );
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    int hours = countdown ~/ 3600; // Saat hesaplaması
    int minutes = (countdown % 3600) ~/ 60; // Dakika hesaplaması
    int seconds = countdown % 60; // Saniye hesaplaması

    String countdownDisplay = '${hours.toString().padLeft(2, '0')}:${minutes.toString().padLeft(2, '0')}:${seconds.toString().padLeft(2, '0')}';

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        centerTitle: true, // Başlığı ortalamak için centerTitle özelliğini true olarak ayarlayın
        title: Text(
          'Ecomate Aktifliğim',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Ecomate Kullandığım Gün Sayısı:',
            ),
            Text(
              '$buttonPressCount',
              style: Theme.of(context).textTheme.headline4,
            ),
            SizedBox(height: 20),
            Text(
              'Geri Sayım: $countdownDisplay',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: buttonDisabled ? null : _incrementButtonPressCount,
              child: Text(
                'Butona Bas',
              ),
            ),
            SizedBox(height: 40),
            if (badgeLevel > 0) // Eğer badgeLevel 0'dan büyükse, yani rozet varsa göster
              Text(
                'Tebrikler, $badgeLevel. Seviye Oldunuz!',
                style: TextStyle(fontSize: 16),
              ),
            SizedBox(height: 20),
            ListView.builder(
              shrinkWrap: true,
              itemCount: badges.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Icon(Icons.star),
                  title: Text(badges[index]),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
