import 'package:flutter/material.dart';

class CalendarApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sürdürülebilir Yaşam İlerleme Takvimi',
      theme: ThemeData(
        primarySwatch: Colors.green,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: CalendarScreen(),
    );
  }
}

class CalendarScreen extends StatefulWidget {
  @override
  _CalendarScreenState createState() => _CalendarScreenState();
}

class _CalendarScreenState extends State<CalendarScreen> {
  int _currentMonthIndex = 0;
  List<String> _months = [
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

  List<int> _daysInMonth = [
    31, // Ocak
    30, // Şubat
    31, // Mart
    30, // Nisan
    31, // Mayıs
    30, // Haziran
    31, // Temmuz
    31, // Ağustos
    30, // Eylül
    31, // Ekim
    30, // Kasım
    31, // Aralık
  ];

  List<List<String>> _notes = List<List<String>>.generate(
    12,
        (index) => List<String>.generate(31, (index) => ''),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Sürdürülebilir Yaşam İlerleme Takvimi',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.white,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                _months[_currentMonthIndex],
                style: TextStyle(
                  color: Colors.green,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16),
              GridView.builder(
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 7,
                ),
                itemBuilder: (context, index) {
                  final day = index + 1;
                  final note = _notes[_currentMonthIndex][day - 1];
                  return GestureDetector(
                    onTap: () {
                      _showNoteDialog(context, day, note);
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.green),
                      ),
                      child: Center(
                        child: Text(
                          day.toString(),
                          style: TextStyle(
                            color: Colors.green,
                          ),
                        ),
                      ),
                    ),
                  );
                },
                itemCount: _daysInMonth[_currentMonthIndex],
              ),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    icon: Icon(Icons.arrow_back),
                    color: Colors.green,
                    onPressed: () {
                      setState(() {
                        if (_currentMonthIndex > 0) {
                          _currentMonthIndex--;
                        }
                      });
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.arrow_forward),
                    color: Colors.green,
                    onPressed: () {
                      setState(() {
                        if (_currentMonthIndex < 11) {
                          _currentMonthIndex++;
                        }
                      });
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showNoteDialog(BuildContext context, int day, String note) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(
          'Not Al',
          style: TextStyle(
            color: Colors.green,
            fontWeight: FontWeight.bold,
          ),
        ),
        content: TextFormField(
          initialValue: note,
          onChanged: (value) {
            setState(() {
              _notes[_currentMonthIndex][day - 1] = value;
            });
          },
          decoration: InputDecoration(
            labelText: 'Not',
          ),
        ),
        actions: [
          TextButton(
            child: Text(
              'Kapat',
              style: TextStyle(
                color: Colors.green,
              ),
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      ),
    );
  }
}
