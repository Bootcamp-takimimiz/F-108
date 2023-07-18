import 'package:flutter/material.dart';


class GeriDonus extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Recycle Center',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: DistrictSelectionScreen(),
    );
  }
}

class DistrictSelectionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Geri Dönüşüm Merkezleri')),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    navigateToRecycleCenterScreen(context, 'Esenler');
                  },
                  child: Text('Esenler'),
                ),
                SizedBox(width: 16),
                ElevatedButton(
                  onPressed: () {
                    navigateToRecycleCenterScreen(context, 'Şişli');
                  },
                  child: Text('Şişli'),
                ),
                SizedBox(width: 16),
                ElevatedButton(
                  onPressed: () {
                    navigateToRecycleCenterScreen(context, 'Ataşehir');
                  },
                  child: Text('Ataşehir'),
                ),
              ],
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    navigateToRecycleCenterScreen(context, 'Kağıthane');
                  },
                  child: Text('Kağıthane'),
                ),
                SizedBox(width: 16),
                ElevatedButton(
                  onPressed: () {
                    navigateToRecycleCenterScreen(context, 'Ümraniye');
                  },
                  child: Text('Ümraniye'),
                ),
                SizedBox(width: 16),
                ElevatedButton(
                  onPressed: () {
                    navigateToRecycleCenterScreen(context, 'Güngören');
                  },
                  child: Text('Güngören'),
                ),
              ],
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    navigateToRecycleCenterScreen(context, 'Eyüpsultan');
                  },
                  child: Text('Eyüpsultan'),
                ),
                SizedBox(width: 16),
                ElevatedButton(
                  onPressed: () {
                    navigateToRecycleCenterScreen(context, 'Beyoğlu');
                  },
                  child: Text('Beyoğlu'),
                ),
                SizedBox(width: 16),
                ElevatedButton(
                  onPressed: () {
                    navigateToRecycleCenterScreen(context, 'Başakşehir');
                  },
                  child: Text('Başakşehir'),
                ),
              ],
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    navigateToRecycleCenterScreen(context, 'Kadıköy');
                  },
                  child: Text('Kadıköy'),
                ),
                SizedBox(width: 16),
                ElevatedButton(
                  onPressed: () {
                    navigateToRecycleCenterScreen(context, 'Esenyurt');
                  },
                  child: Text('Esenyurt'),
                ),
                SizedBox(width: 16),
                ElevatedButton(
                  onPressed: () {
                    navigateToRecycleCenterScreen(context, 'Bayrampaşa');
                  },
                  child: Text('Bayrampaşa'),
                ),
              ],
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    navigateToRecycleCenterScreen(context, 'Bahçelievler');
                  },
                  child: Text('Bahçelievler'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void navigateToRecycleCenterScreen(BuildContext context, String selectedDistrict) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => RecycleCenterScreen(selectedDistrict: selectedDistrict),
      ),
    );
  }
}

class RecycleCenterScreen extends StatelessWidget {
  final String selectedDistrict;

  RecycleCenterScreen({required this.selectedDistrict});

  @override
  Widget build(BuildContext context) {
    String centerName = '';
    String address = '';
    String phoneNumber = '';
    String website = '';
    String email = '';

    // Geri dönüşüm merkezlerinin bilgilerini semte göre eşleştir
    if (selectedDistrict == 'Esenler') {
      centerName = 'Esenler Belediyesi Geri Dönüşüm Transfer Merkezi';
      address = 'Oruçreis, Ipekyolu Cd NO:11, 34230 Esenler/İstanbul';
      phoneNumber = '(0212) 629 96 73';
      website = 'http://www.istanbulgeridonusum.com.tr/';
      email = 'info@istanbulgeridonusum.com.tr';
    } else if (selectedDistrict == 'Şişli') {
      centerName = 'Geri Dönüşümün Merkezi';
      address = 'Merkez, Harzemşah Sk. 9/a, 34050 Şişli/İstanbul';
      phoneNumber = '547 939 02 74'; // Şişli geri dönüşüm merkezi telefon numarası
      website = 'Bilinmiyor'; // Şişli geri dönüşüm merkezi web sitesi
      email = 'Bilinmiyor'; // Şişli geri dönüşüm merkezi e-posta adresi
    } else if (selectedDistrict == 'Beyoğlu') {
      centerName = 'Avrupa Yakası Hurda Geri Dönüşüm Merkezi Hizmet Noktası';
      address = 'Firuzağa, Cihangir Sauna, Türkgücü Cd. No: 24/3, 34425 Beyoğlu/İstanbul';
      phoneNumber = '0552 644 77 75'; // Beyoğlu geri dönüşüm merkezi telefon numarası
      website = 'Bilinmiyor'; // Beyoğlu geri dönüşüm merkezi web sitesi
      email = 'Bilinmiyor'; // Beyoğlu geri dönüşüm merkezi e-posta adresi
    } else if (selectedDistrict == 'Başakşehir') {
      centerName = 'Geri dönüşüm merkezi';
      address = 'Şahintepe, Aşık Veysel Cd., 34494 Başakşehir/İstanbul';
      phoneNumber = '0532 631 63 62'; // Başakşehir geri dönüşüm merkezi telefon numarası
      website = 'Bilinmiyor'; // Başakşehir geri dönüşüm merkezi web sitesi
      email = 'Bilinmiyor'; // Başakşehir geri dönüşüm merkezi e-posta adresi
    } else if (selectedDistrict == 'Bayrampaşa') {
      centerName = 'Plastik geri dönüşüm';
      address = 'Vatan, Emel Sk. No:11, 34035 Bayrampaşa/İstanbul';
      phoneNumber = '0539 794 09 28'; // Bayrampaşa geri dönüşüm merkezi telefon numarası
      website = 'Bilinmiyor'; // Bayrampaşa geri dönüşüm merkezi web sitesi
      email = 'Bilinmiyor'; // Bayrampaşa geri dönüşüm merkezi e-posta adresi

    } else if (selectedDistrict == 'Bahçelievler') {
      centerName = 'KALEM Geri Dönüşüm';
      address = 'Zafer, Bahargülü Sk. No:18 D:1, 34194 Bahçelievler/İstanbul';
      phoneNumber = '0535 832 96 07'; // Bahçelievler geri dönüşüm merkezi telefon numarası
      website = 'Bilinmiyor'; // Bahçelievler geri dönüşüm merkezi web sitesi
      email = 'Bilinmiyor'; // Bahçelievler geri dönüşüm merkezi e-posta adresi
    }
    else if (selectedDistrict == 'Kağıthane') {
      centerName = 'Doğanay Geri Dönüşüm';
      address = 'Yeşilce, Seçilmiş Sk. No:4, 34418 Kâğıthane/İstanbul';
      phoneNumber = 'yok';
      website = 'Bilinmiyor';
      email = 'Bilinmiyor';
    }
    else if (selectedDistrict == 'Ümraniye') {
      centerName = 'Geri Dönüşüm Çöp Kutusu';
      address = 'Tatlısu, Nurettin Duman Sk. No:12/C, 34774 Ümraniye/İstanbul';
      phoneNumber = '(0216) 466 68 00';
      website = 'https://geridonusumkovasi.com/';
      email = 'info@efesteel.com';
    }
    else if (selectedDistrict == 'Ataşehir') {
      centerName = 'Özkan Geri Dönüşüm';
      address = 'Aşık Veysel, 3027. Sk. No:16, 34707 Ataşehir/İstanbul';
      phoneNumber = '(0212) 886 13 35';
      website = 'http://ozkangeridonusum.com/iletisim.html';
      email = 'info@ozkangeridonusum.com';
    }
    else if (selectedDistrict == 'Esenyurt') {
      centerName = 'Obalılar Geri Dönüşüm';
      address = 'Akçaburgaz, 1632. Sk. No:38, 34517 Esenyurt/İstanbul';
      phoneNumber = '(0212) 886 61 61';
      website = 'http://www.obalilar.com.tr/';
      email = 'Bilinmiyor';
    }
    else if (selectedDistrict == 'Kadıköy') {
      centerName = 'Aslan Geri Dönüşüm';
      address = ' Fikirtepe, Dispanser Sk. no:9, 34720 Kadıköy/İstanbul';
      phoneNumber = '0532 514 21 20';
      website = 'Bilinmiyor';
      email = 'Bilinmiyor';
    }
    else if (selectedDistrict == 'Güngören') {
      centerName = 'ync geri dönüşüm';
      address = ' Sanayi, Orpak Sk. No:16, 34160 Güngören/İstanbul';
      phoneNumber = '0532 778 99 25';
      website = 'https://yncgeridonusum.com/';
      email = 'info@yncgeridonusum.com';
    }else if (selectedDistrict == 'Eyüpsultan') {
      centerName = 'Tarhan Geri Dönüşüm';
      address = 'Eyüp Merkez, Bahçeli Sk. No:3, 34055 Eyüpsultan/İstanbul';
      phoneNumber = 'yok';
      website = 'Bilinmiyor';
      email = 'Bilinmiyor';
    } return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Geri Dönüşüm Merkezleri')),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Merkez Adı:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(centerName, style: TextStyle(fontSize: 16)),
            SizedBox(height: 16),
            Text(
              'Adres:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(address, style: TextStyle(fontSize: 16)),
            SizedBox(height: 16),
            Text(
              'İletişim Telefonu:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(phoneNumber, style: TextStyle(fontSize: 16)),
            SizedBox(height: 16),
            Text(
              'Web Sitesi:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(website, style: TextStyle(fontSize: 16)),
            SizedBox(height: 16),
            Text(
              'E-posta Adresi:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(email, style: TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }
}

