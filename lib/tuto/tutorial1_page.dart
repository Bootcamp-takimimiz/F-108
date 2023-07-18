import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false ,
      title: 'Tutorial Uygulaması',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),

      initialRoute: '/',
      routes: {
        '/': (context) => const Tutorial1Page(),
        '/tutorial2': (context) => const Tutorial2Page(),
        '/tutorial3': (context) => const Tutorial3Page(),
        '/tutorial4': (context) => const Tutorial4Page(),
        '/tutorial5': (context) => const Tutorial5Page(),
        '/tutorial6': (context) => const Tutorial6Page(),
        '/tutorial7': (context) => const Tutorial7Page(),
        '/tutorial8': (context) => const Tutorial8Page(),
        '/tutorial9': (context) => const Tutorial9Page(),
      },
    );
  }
}

class Tutorial1Page extends StatelessWidget {
  const Tutorial1Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('EcoMate'),
        centerTitle: true,
      ),
      backgroundColor: const Color(0xFFFFF8E5),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Image.asset(
                'images/sayfa1.png',
                width: 400,
              ),
            ),
          ),
          const SizedBox(height:20),

          const Center(
            child: Text(
              'Hoşgeldin\n\n Uygulama özelliklerini öğrenmek \n\n için ileri butonunu kullanabilirsin.',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w400,
                color: Colors.green,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height:70),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/tutorial2');
            },
            child: const Text('İleri'),
          ),
        ],
      ),
    );
  }

}

class Tutorial2Page extends StatelessWidget {
  const Tutorial2Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('EcoMate'),
        centerTitle: true,
      ),
      backgroundColor: const Color(0xFF7CBD7D),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'images/sayfa2.png',
              width: 300,
            ),
            const SizedBox(height: 16),
            const Text(
              'Takvim özelliğiyle geri dönüşüme ve sürdürülebilirliğe dair yaptıklarını kişisel takvimine ekleyebilirsin.\n\nEtkinlik takvimi ile etkinlikler hakkında fikir sahibi olabilirsin.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(height: 25),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/tutorial3');
              },
              child: const Text('İleri'),
            ),
          ],
        ),
      ),
    );
  }
}

class Tutorial3Page extends StatelessWidget {
  const Tutorial3Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('EcoMate'),
        centerTitle: true,
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
            const SizedBox(height: 16),
            const Text(
              'Konum özelliği ile en yakın geri dönüşüm noktasına ulaşabilirsin.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                color: Colors.green,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/tutorial4');
              },
              child: const Text('İleri'),
            ),
          ],
        ),
      ),
    );
  }
}

class Tutorial4Page extends StatelessWidget {
  const Tutorial4Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('EcoMate'),
        centerTitle: true,
      ),
      backgroundColor: const Color(0xFF864F00),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'images/sayfa4.png',
              width: 350,
            ),
            const SizedBox(height: 16),
            const Text(
              'Topluluk özelliği ile sürdürülebilirliğe dair kendi tecrübelerini paylaşabilirsin. \n\nDiğer üyelerin paylaşımlarından faydalanabilirsin.',
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
                Navigator.pushNamed(context, '/tutorial5');
              },
              child: const Text('İleri'),
            ),
          ],
        ),
      ),
    );
  }
}

class Tutorial5Page extends StatelessWidget {
  const Tutorial5Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('EcoMate'),
        centerTitle: true,
      ),
      backgroundColor: const Color(0xFFFFFFFF),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'images/sayfa5.png',
              width: 400,
            ),
            const SizedBox(height: 40),
            const Text(
              'Sürdürülebilirlik ve geri dönüşümle ilgili derlenmiş makalelere ulaşabilirsin.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                color: Colors.green,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/tutorial6');
              },
              child: const Text('İleri'),
            ),
          ],
        ),
      ),
    );
  }
}

class Tutorial6Page extends StatelessWidget {
  const Tutorial6Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('EcoMate'),
        centerTitle: true,
        systemOverlayStyle: SystemUiOverlayStyle.light,
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'images/sayfa6.png',
                width: 300,
              ),
              const SizedBox(height: 16),
              const Text(
                'Karbon ayak izini hesaplayabilirsin.',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.green,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/tutorial7');
                },
                child: const Text('İleri'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Tutorial7Page extends StatelessWidget {
  const Tutorial7Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('EcoMate'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'images/sayfa7.png',
              width: 300,
            ),
            const SizedBox(height: 50),
            const Text(
              'Not defteri ile geri dönüşüme dair notlarını \n\n bir uygulama da derleyebilirsin.',
              style: TextStyle(
                fontSize: 20,
                color: Colors.green,
                fontWeight: FontWeight.w400,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/tutorial8');
              },
              child: const Text('İleri'),
            ),
          ],
        ),
      ),
    );
  }
}


class Tutorial8Page extends StatelessWidget {
  const Tutorial8Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('EcoMate'),
        centerTitle: true,
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
              'Geri dönüşüm ve  sürdürebilirliğe dair eğlenceli testimize katılabilirsin.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                color: Colors.green,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(height: 16),

            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/tutorial9');
              },
              child: const Text('İleri'),
            ),
          ],
        ),
      ),
    );
  }
}

class Tutorial9Page extends StatelessWidget {
  const Tutorial9Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('EcoMate'),
        centerTitle: true,
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
