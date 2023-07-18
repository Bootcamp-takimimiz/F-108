import 'dart:math';
import 'package:flutter/material.dart';

class CalendarApp1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Etkinlik Takvimi',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Etkinlik Takvimi',
            textAlign: TextAlign.center,
          ),
          centerTitle: true,
          backgroundColor: Colors.green, // Yeşil renk eklendi
        ),
        body: CalendarScreen(),
      ),
    );
  }
}

class CalendarScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 12,
      itemBuilder: (context, index) {
        return MonthCalendar(month: index);
      },
    );
  }
}

class MonthCalendar extends StatelessWidget {
  final int month;

  MonthCalendar({required this.month});

  Object? get day => null;

  String _getMonthName() {
    final List<String> monthNames = [
      'Ocak',
      'Şubat',
      'Mart',
      'Nisan',
      'Mayıs',
      'Haziran',
      'Temmuz',
      'Ağustos',
      'Eylül',
      'Ekim',
      'Kasım',
      'Aralık',
    ];
    return monthNames[month];
  }
  String _getRandomConferenceTopic() {
    final List<String> conferenceTopics = [
      'Gıda Sürdürülebilirliği',
      'İşçi Hakları Sürdürülebilirliği',
      'Turizmde Sürdürülebilirlik',
      'Su Kaynakları Sürdürülebilirliği',
      'Enerji Sürdürülebilirliği',
      // Add more conference topics as desired
    ];
    final random = Random();
    return conferenceTopics[random.nextInt(conferenceTopics.length)];
  }
  @override
  Widget build(BuildContext context) {
    final random = Random();
    final daysInMonth = month == 2 ? 31 : DateTime(DateTime.now().year, month + 1, 0).day;
    final List<int> eventDays = [];

    while (eventDays.length < 5) {
      final randomDay = random.nextInt(daysInMonth) + 1;
      if (!eventDays.contains(randomDay)) {
        eventDays.add(randomDay);
      }
    }

    final int treePlantingDay = random.nextInt(daysInMonth) + 1;
    final List<int> conferenceDays = [];
    while (conferenceDays.length < 2) {
      final randomDay = random.nextInt(daysInMonth) + 1;
      if (!eventDays.contains(randomDay) && randomDay != treePlantingDay) {
        conferenceDays.add(randomDay);
      }
    }
    final conferenceTopic = _getRandomConferenceTopic();
    final hasConference = conferenceDays.contains(day);
    final conferenceDescription = hasConference
        ? 'Konferans etkinliği\nTarih: $day ${_getMonthName()}\nSaat: ${random.nextInt(24)}:00\nKonum: ${_getRandomStreetName()}, Türkiye\nKonuşmacı: ${_getRandomSpeaker()}\nKonu: ${_getRandomConferenceTopic()}'
        : '';



    final List<int> bikeTourDays = []; // Yeni değişken
    while (bikeTourDays.length < 4) {
      final randomDay = random.nextInt(daysInMonth) + 1;
      if (!eventDays.contains(randomDay) && !conferenceDays.contains(randomDay) && randomDay != treePlantingDay) {
        bikeTourDays.add(randomDay);
      }
    }

    return Column(
      children: [
        SizedBox(height: 20),
        Text(
          _getMonthName(),
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 20),
        GridView.builder(
          shrinkWrap: true,
          itemCount: daysInMonth,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 7,
          ),
          itemBuilder: (context, index) {
            final day = index + 1;
            final hasEvent = eventDays.contains(day);
            final hasConference = conferenceDays.contains(day);
            final isTreePlantingDay = day == treePlantingDay;
            final isBikeTourDay = bikeTourDays.contains(day);

            final eventDescription = hasEvent
                ? 'Çöp toplama etkinliği\nTarih: $day ${_getMonthName()}\nSaat: ${random.nextInt(24)}:00\nKonum: ${_getRandomStreetName()}, İstanbul\nMalzemeler: Eldiven, maske'
                : '';
            final conferenceDescription = hasConference
                ? 'Konferans etkinliği\nTarih: $day ${_getMonthName()}\nSaat: ${random.nextInt(24)}:00\nKonum: ${_getRandomStreetName()}, Türkiye\nKonuşmacı: ${_getRandomSpeaker()}\nKonu: ${_getRandomConferenceTopic()}'
                : '';
            final treePlantingDescription = isTreePlantingDay
                ? 'Ağaç dikme etkinliği\nTarih: $day ${_getMonthName()}\nSaat: ${random.nextInt(24)}:00\nKonum: ${_getRandomNeighborhoodName()}, İstanbul\nMalzemeler: Kürek, eldiven'
                : '';
            final bikeTourDescription = isBikeTourDay
                ? 'Bisiklet Turu Etkinliği\nTarih: $day ${_getMonthName()}\nSaat: ${random.nextInt(24)}:00\nKonum: ${_getRandomForestName()}\nRota Uzunluğu: ${_getRandomRouteLength()} km\nUyarılar: ${_getRandomSafetyPrecautions()}'
                : '';

            final isCurrentDay = day == DateTime.now().day && month == DateTime.now().month;

            return GestureDetector(
              onTap: () {
                if (hasEvent) {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text('Etkinlik Detayları'),
                        content: Text(eventDescription),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text('Kapat'),
                          ),
                        ],
                      );
                    },
                  );
                } else if (hasConference) {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text('Konferans Detayları'),
                        content: Text(conferenceDescription),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text('Kapat'),
                          ),
                        ],
                      );
                    },
                  );
                } else if (isTreePlantingDay) {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text('Etkinlik Detayları'),
                        content: Text(treePlantingDescription),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text('Kapat'),
                          ),
                        ],
                      );
                    },
                  );
                } else if (isBikeTourDay) {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text('Etkinlik Detayları'),
                        content: Text(bikeTourDescription),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text('Kapat'),
                          ),
                        ],
                      );
                    },
                  );
                } else {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text('Etkinlik Bulunamadı'),
                        content: Text('Seçilen tarihte etkinlik bulunmamaktadır.'),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text('Kapat'),
                          ),
                        ],
                      );
                    },
                  );
                }
              },
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  color: hasEvent
                      ? Colors.green
                      : hasConference
                      ? Colors.blue
                      : isTreePlantingDay
                      ? Colors.yellow
                      : isBikeTourDay
                      ? Colors.red
                      : isCurrentDay
                      ? Colors.yellow
                      : Colors.white,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      day.toString(),
                      style: TextStyle(
                        fontWeight: isCurrentDay ? FontWeight.bold : FontWeight.normal,
                      ),
                    ),
                    if (hasEvent) Text('🗑️', style: TextStyle(fontSize: 24)),
                    if (hasConference) Text('📚', style: TextStyle(fontSize: 24)),
                    if (isTreePlantingDay) Text('🌳', style: TextStyle(fontSize: 24)),
                    if (isBikeTourDay) Text('🚲️', style: TextStyle(fontSize: 24)),
                  ],
                ),
              ),
            );
          },
        ),
      ],
    );
  }
  String _getRandomForestName() {
    final List<String> forestNames = [
      'Karadeniz Ormanı',
      'Marmara Ormanı',
      'İç Anadolu Ormanı',
      'Akdeniz Ormanı',
      'Ege Ormanı',
    ];
    final random = Random();
    return forestNames[random.nextInt(forestNames.length)];
  }

  int _getRandomRouteLength() {
    final random = Random();
    return random.nextInt(31) + 10; // 10 ile 40 arasında rastgele bir sayı
  }

  String _getRandomSafetyPrecautions() {
    final List<String> precautions = [
      'Lastik basınçlarını kontrol etmeyi unutmayın.',
      'Trafik kurallarına dikkat edin.',
      'Su içmeyi ve sık sık mola vermeyi unutmayın.',
      'Bisikletiniz ile yola çıkmadan önce tekerleklerinizi kontrol edin ve tamir setinizle, yedek lastiğinizi yanınıza almayı unutmayın.',
    'Bisiklet sporu ekipmanları olan kask, dizlik ve dirsekliklerinizi takmadan yola çıkmayın.',
    'Bisikletinizin sele ve gidonunu fiziksel özelliklerinize göre ayarlamayı ihmal etmeyin.',
      'Bisiklete binmeden önce bol bol su için ve ağır yiyecekler yemekten kaçının.',
    'Ara ara molalar vererek dinlenin.',
    ];
    final random = Random();
    return precautions[random.nextInt(precautions.length)];
  }
  String _getRandomSubTopic() {
    final List<String> subTopics = [
      'Gıda Sürdürülebilirliği',
      'İşçi Hakları Sürdürülebilirliği',
      'Turizmde Sürdürülebilirlik',
      'Su Kaynakları Sürdürülebilirliği',
      'Enerji Sürdürülebilirliği',
    ];
    final random = Random();
    return subTopics[random.nextInt(subTopics.length)];
  }
  String _getRandomUniversityName() {
    final List<String> universities = [
      'Boğaziçi Üniversitesi',
      'İstanbul Teknik Üniversitesi',
      'Orta Doğu Teknik Üniversitesi',
      'Hacettepe Üniversitesi',
      'Koç Üniversitesi',
    ];
    final random = Random();
    return universities[random.nextInt(universities.length)];
  }

  String _getRandomConferenceRoomName() {
    final List<String> conferenceRooms = [
      'Beyaz Salon',
      'Kırmızı Salon',
      'Mavi Salon',
      'Yeşil Salon',
      'Sarı Salon',
    ];
    final random = Random();
    return conferenceRooms[random.nextInt(conferenceRooms.length)];
  }

  String _getRandomSpeaker() {
    final List<String> companies = [
      'OpenAI',
      'Google',
      'Microsoft',
      'Amazon',
      'Apple',
    ];
    final List<String> titles = [
      'Prof. Dr.',
      'Dr.',
      'Doç. Dr.',
      'Yrd. Doç. Dr.',
      'Arş. Gör. Dr.',
    ];
    final List<String> names = [
      'Ahmet Yılmaz',
      'Mehmet Demir',
      'Ayşe Kaya',
      'Fatma Şahin',
      'Ali Aksoy',
    ];
    final random = Random();
    final company = companies[random.nextInt(companies.length)];
    final title = titles[random.nextInt(titles.length)];
    final name = names[random.nextInt(names.length)];
    return '$company - $title $name';
  }

  String _getRandomNeighborhoodName() {
    final List<String> neighborhoods = [
      'Kadıköy',
      'Beşiktaş',
      'Şişli',
      'Beyoğlu',
      'Karaköy',
    ];
    final random = Random();
    return neighborhoods[random.nextInt(neighborhoods.length)];
  }

  String _getRandomStreetName() {
    final List<String> streetNames = [
      'İstiklal Caddesi',
      'Bağdat Caddesi',
      'Abdi İpekçi Caddesi',
      'İnönü Caddesi',
      'Nişantaşı',
    ];
    final random = Random();
    return streetNames[random.nextInt(streetNames.length)];
  }
}
