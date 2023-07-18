import 'package:flutter/material.dart';
import 'dart:math';

// Kod İlayda Cengizhan-Kaan Akbuğa tarafından yazılmıştır.

class SurdurulebilirlikUygulamasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.green),
      home: AnaSayfa(),
    );
  }
}

class AnaSayfa extends StatelessWidget {
  final List<Map<String, dynamic>> paylasimlar = [
    {
      'kullaniciAdi': 'İlayda Cengizhan',
      'aciklama': 'Geri dönüşüme katkı sağlamak için cam şişelerimi geri dönüşüm kutusuna attım!',
      'profilIcon': 'assets/iconkadın.png',
      'begeniSayisi': 10,
      'yorumlar': [
        {'kullaniciAdi': 'Gizem Derici', 'yorum': 'Harika bir adım! 🌱'},
      ],
    },
    {
      'kullaniciAdi': 'Gizem Derici',
      'aciklama': 'Bugün bisikletle işe giderek karbon ayak izimi azalttım!',
      'profilIcon': 'assets/icongizem.png',
      'begeniSayisi': 5,
      'yorumlar': [
        {'kullaniciAdi': 'Gizem Derici', 'yorum': 'Yapıcı bir örnek, böyle devam et! 🚴‍♀️'},
      ],
    },
    {
      'kullaniciAdi': 'Kaan Akbuğa',
      'aciklama': 'Artık market poşetleri yerine kumaş poşet kullanıyorum! 🌿',
      'profilIcon': 'assets/iconkaan.png',
      'begeniSayisi': 8,
      'yorumlar': [
        {'kullaniciAdi': 'Gizem Derici', 'yorum': 'Teşekkürler, dünyamız için önemlisiniz!'},
      ],
    },
    {
      'kullaniciAdi': 'Ali Acar',
      'aciklama': 'Ofisimizde kağıt yerine dijital belgeler kullanmaya başladık!',
      'profilIcon': 'assets/iconali.png',
      'begeniSayisi': 15,
      'yorumlar': [
        {'kullaniciAdi': 'Merve', 'yorum': 'Sürdürülebilirlik için çabalarınız takdire şayan!🌱'},
        {'kullaniciAdi': 'Dilan', 'yorum': 'Bunu görmek çok güzel!'}
      ],
    },
    // Diğer paylaşımlar buraya eklenebilir...
  ];

  final List<String> yorumlar = [
    'Harika bir adım! 🌱',
    'Yapıcı bir örnek, böyle devam et! 🚴‍♀️',
    'Bunu görmek çok güzel!',
    'Teşekkürler, dünyamız için önemlisiniz!',
    'Sürdürülebilirlik için çabalarınız takdire şayan!',
    'Bu katkınızla doğaya yardım ediyorsunuz, teşekkürler!'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sürdürülebilirlik Paylaşımları'),
      ),
      body: ListView.builder(
        itemCount: paylasimlar.length,
        itemBuilder: (context, index) {
          return PaylasimKarti(paylasim: paylasimlar[index], yorumlar: yorumlar);
        },
      ),
    );
  }
}

class PaylasimKarti extends StatefulWidget {
  final Map<String, dynamic> paylasim;
  final List<String> yorumlar;
  final Random random = Random();

  PaylasimKarti({required this.paylasim, required this.yorumlar});

  @override
  _PaylasimKartiState createState() => _PaylasimKartiState();
}

class _PaylasimKartiState extends State<PaylasimKarti> {
  bool _begendi = false;
  bool _kaydedildi = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(widget.paylasim['profilIcon']),
              radius: 20,
            ),
            title: Text(widget.paylasim['kullaniciAdi']),
            trailing: IconButton(
              icon: Icon(Icons.flag),
              onPressed: () {
                _showSikayetPenceresi();
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              widget.paylasim['aciklama'],
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  IconButton(
                    icon: Icon(Icons.thumb_up, color: _begendi ? Colors.blue : null),
                    onPressed: () {
                      setState(() {
                        _begendi = !_begendi;
                        if (_begendi) {
                          widget.paylasim['begeniSayisi']++;
                        } else {
                          widget.paylasim['begeniSayisi']--;
                        }
                      });
                    },
                  ),
                  SizedBox(width: 4),
                  Text('${widget.paylasim['begeniSayisi']} Beğeni'),
                ],
              ),
              Row(
                children: [
                  IconButton(
                    icon: Icon(Icons.comment_outlined),
                    onPressed: () {
                      _showYorumPenceresi();
                    },
                  ),
                  SizedBox(width: 4),
                  Text('${widget.paylasim['yorumlar'].length} Yorum'),
                ],
              ),
              IconButton(
                icon: Icon(Icons.save, color: _kaydedildi ? Colors.green : null),
                onPressed: () {
                  setState(() {
                    _kaydedildi = !_kaydedildi;
                  });
                },
              ),
            ],
          ),
          SizedBox(height: 8),
          ...widget.paylasim['yorumlar'].map((yorum) => YorumWidget(yorum: yorum['yorum'])).toList(),
        ],
      ),
    );
  }

  void _showYorumPenceresi() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        String yeniYorum = '';
        return AlertDialog(
          title: Text('Yorum Yap'),
          content: TextField(
            onChanged: (value) {
              yeniYorum = value;
            },
            decoration: InputDecoration(hintText: 'Yorumunuzu buraya yazın'),
          ),
          actions: [
            ElevatedButton(
              onPressed: () {
                setState(() {
                  widget.paylasim['yorumlar'].add({
                    'kullaniciAdi': 'Kullanici', // Burada gerçek kullanıcı adı eklemek için giriş ekranı vb. kullanmanız gerekebilir.
                    'yorum': yeniYorum,
                  });
                });
                Navigator.of(context).pop();
              },
              child: Text('Gönder'),
            ),
          ],
        );
      },
    );
  }

  void _showSikayetPenceresi() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        String sikayetAciklama = '';
        return AlertDialog(
          title: Text('Şikayet Bildir'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Bu gönderiyle ilgili neyi şikayet ediyorsunuz?'),
              SizedBox(height: 8),
              TextField(
                onChanged: (value) {
                  sikayetAciklama = value;
                },
                maxLines: 3,
                decoration: InputDecoration(
                  hintText: 'Açıklama',
                  border: OutlineInputBorder(),
                ),
              ),
            ],
          ),
          actions: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
                _showGonderildiPenceresi();
              },
              style: ElevatedButton.styleFrom(primary: Colors.green),
              child: Text('Gönder'),
            ),
          ],
        );
      },
    );
  }

  void _showGonderildiPenceresi() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Şikayet Gönderildi'),
          content: Text('Şikayetiniz başarıyla gönderildi. Teşekkür ederiz.'),
          actions: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              style: ElevatedButton.styleFrom(primary: Colors.green),
              child: Text('Tamam'),
            ),
          ],
        );
      },
    );
  }
}

class YorumWidget extends StatelessWidget {
  final String yorum;

  YorumWidget({required this.yorum});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          backgroundImage: AssetImage('assets/iconkadın2.png'),
          radius: 8,
        ),
        SizedBox(width: 4),
        Icon(Icons.comment, size: 16, color: Colors.grey), // Yorum iconu
        SizedBox(width: 4),
        Text(yorum),
      ],
    );
  }
}
