import 'package:flutter/material.dart';

class CarbonFootprintCalculator extends StatefulWidget {
  @override
  _CarbonFootprintCalculatorState createState() =>
      _CarbonFootprintCalculatorState();
}

class _CarbonFootprintCalculatorState extends State<CarbonFootprintCalculator> {
  double electricityConsumption = 0.0;
  double vehicleFuelConsumption = 0.0;
  double airTravelDistance = 0.0;
  double meatConsumption = 0.0;
  double dairyConsumption = 0.0;
  double fruitVegConsumption = 0.0;
  double paperWaste = 0.0;
  double plasticWaste = 0.0;
  double foodWaste = 0.0;
  double heatingConsumption = 0.0;
  double coolingConsumption = 0.0;
  double waterConsumption = 0.0;

  double carbonFootprint = 0.0;

  void calculateCarbonFootprint() {
    setState(() {
      carbonFootprint =
          carbonFootprintFromElectricity(electricityConsumption) +
              carbonFootprintFromVehicle(vehicleFuelConsumption) +
              carbonFootprintFromAirTravel(airTravelDistance) +
              carbonFootprintFromMeat(meatConsumption) +
              carbonFootprintFromDairy(dairyConsumption) +
              carbonFootprintFromFruitVeg(fruitVegConsumption) +
              carbonFootprintFromPaperWaste(paperWaste) +
              carbonFootprintFromPlasticWaste(plasticWaste) +
              carbonFootprintFromFoodWaste(foodWaste) +
              carbonFootprintFromHeating(heatingConsumption) +
              carbonFootprintFromCooling(coolingConsumption) +
              carbonFootprintFromWater(waterConsumption);
    });
  }

  double carbonFootprintFromElectricity(double electricityConsumption) {
    double carbonFactor = 0.5; // Elektrik tüketimine bağlı bir karbon faktörü
    return electricityConsumption * carbonFactor;
  }

  double carbonFootprintFromVehicle(double fuelConsumption) {
    double carbonFactor = 2.3; // Yakıt tüketimine bağlı bir karbon faktörü
    return fuelConsumption * carbonFactor;
  }

  double carbonFootprintFromAirTravel(double distance) {
    double carbonFactor = 0.15; // Uçuş mesafesine bağlı bir karbon faktörü
    return distance * carbonFactor;
  }

  double carbonFootprintFromMeat(double consumption) {
    double carbonFactor = 6.5; // Et tüketimine bağlı bir karbon faktörü
    return consumption * carbonFactor;
  }

  double carbonFootprintFromDairy(double consumption) {
    double carbonFactor = 4.2; // Süt ürünleri tüketimine bağlı bir karbon faktörü
    return consumption * carbonFactor;
  }

  double carbonFootprintFromFruitVeg(double consumption) {
    double carbonFactor = 1.1; // Sebze-meyve tüketimine bağlı bir karbon faktörü
    return consumption * carbonFactor;
  }

  double carbonFootprintFromPaperWaste(double waste) {
    double carbonFactor = 1.2; // Kağıt atığına bağlı bir karbon faktörü
    return waste * carbonFactor;
  }

  double carbonFootprintFromPlasticWaste(double waste) {
    double carbonFactor = 3.0; // Plastik atığına bağlı bir karbon faktörü
    return waste * carbonFactor;
  }

  double carbonFootprintFromFoodWaste(double waste) {
    double carbonFactor = 0.5; // Gıda atığına bağlı bir karbon faktörü
    return waste * carbonFactor;
  }

  double carbonFootprintFromHeating(double consumption) {
    double carbonFactor = 0.9; // Isıtma tüketimine bağlı bir karbon faktörü
    return consumption * carbonFactor;
  }

  double carbonFootprintFromCooling(double consumption) {
    double carbonFactor = 0.6; // Soğutma tüketimine bağlı bir karbon faktörü
    return consumption * carbonFactor;
  }

  double carbonFootprintFromWater(double consumption) {
    double carbonFactor = 0.3; // Su tüketimine bağlı bir karbon faktörü
    return consumption * carbonFactor;
  }

  Widget buildFeedbackSection() {
    List<String> energySavingTips = [
      'Işığı kullanmadığınızda kapatın.',
      'Enerji verimli ampuller kullanın.',
      'Kullanmadığınız elektronik cihazları fişten çekin.',
    ];

    List<String> transportationTips = [
      'Toplu taşıma veya araç paylaşımını kullanın.',
      'Kısa mesafelerde yürüyün veya bisiklete binin.',
      'Yakıt verimli araçları tercih edin.',
    ];

    List<String> foodConsumptionTips = [
      'Yerel ve mevsiminde üretilen gıdalar tüketin.',
      'Et ve süt ürünleri tüketimini azaltın.',
      'Gıda israfını minimum düzeye indirin.',
    ];

    List<String> wasteGenerationTips = [
      'Kağıt, plastik ve cam atıklarını geri dönüştürün.',
      'Organik atıkları kompostlayın.',
      'Tek kullanımlık ürünlerden kaçının.',
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Text(
          'Karbon Ayak İzini Azaltmak İçin Öneriler:',
          style: TextStyle(
            color: Colors.green,
            fontSize: 19.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 15.0),
        const Text(
          'ENERJİ TASARRUFU:',
          style: TextStyle(
            color: Colors.orangeAccent,
            fontSize: 17.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        for (String tip in energySavingTips)
          Text('- $tip'),
        const SizedBox(height: 15.0),
        const Text(
          'ULAŞIM:',
          style: TextStyle(
            color: Colors.blueAccent,
            fontSize: 17.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        for (String tip in transportationTips)
          Text('- $tip'),
        const SizedBox(height: 15.0),
        const Text(
          'YEMEK TÜKETİMİ:',
          style: TextStyle(
            color: Colors.purpleAccent,
            fontSize: 17.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        for (String tip in foodConsumptionTips)
          Text('- $tip'),
        const SizedBox(height: 15.0),
        const Text(
          'ATIK OLUŞTURMA:',
          style: TextStyle(
            color: Colors.lightGreen,
            fontSize: 17.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        for (String tip in wasteGenerationTips)
          Text('- $tip'),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('KARBON AYAK İZİ HESAPLAYICI'
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Text(
                  'Değerleri Girin:',
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 19.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 14.0),
                TextField(
                  decoration: const InputDecoration(
                    labelText: 'Elektrik Tüketimi (kWh)',
                  ),
                  keyboardType: TextInputType.number,
                  onChanged: (value) {
                    setState(() {
                      electricityConsumption = double.parse(value);
                    });
                  },
                ),
                TextField(
                  decoration: const InputDecoration(
                    labelText: 'Araç Yakıt Tüketimi (Litre)',
                  ),
                  keyboardType: TextInputType.number,
                  onChanged: (value) {
                    setState(() {
                      vehicleFuelConsumption = double.parse(value);
                    });
                  },
                ),
                TextField(
                  decoration: const InputDecoration(
                    labelText: 'Uçak Seyahatleri (km)',
                  ),
                  keyboardType: TextInputType.number,
                  onChanged: (value) {
                    setState(() {
                      airTravelDistance = double.parse(value);
                    });
                  },
                ),
                // Diğer değerleri buraya ekleyin

                const SizedBox(height: 18.0),
                ElevatedButton(
                  onPressed: calculateCarbonFootprint,
                  child: const Text('HESAPLA'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.green,
                  ),
                ),
                const SizedBox(height: 16.0),
                Text(
                  'Karbon Ayak İzi: $carbonFootprint',
                  style: const TextStyle(
                    color: Colors.teal,
                    fontSize: 19.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 16.0),
                buildFeedbackSection(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
