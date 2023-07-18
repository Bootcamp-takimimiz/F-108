import 'package:ecomate/main.dart';
import 'package:flutter/material.dart';
import 'package:ecomate/quiz/quizz.dart';
class QuizAfterPage extends StatelessWidget {
  const QuizAfterPage({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return  Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(colors: [
          Color(0xfffdf7e4),
          Color(0xffffffff),
          Color(0xfffdf7e4),
        ],),
      ),
      child:  SafeArea(
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: ListView(
            children: [
              Center(
                child: Column(
                    children: [
                      const Text('Test bitmiştir',
                        style: TextStyle(
                            fontSize: 50,
                            fontWeight: FontWeight.w500,
                            color: Colors.black
                        ),
                      ),
                      aralik(sol: 50, sag: 50),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text('Doğru',
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 20
                                ),
                              ),
                              const Divider(
                                color: Colors.black,
                                thickness: 1,
                                endIndent: 40,
                                indent: 40,
                              ),
                              Text('$dogrucevap',
                                style: const TextStyle(
                                  fontSize: 50,
                                  fontWeight: FontWeight.w200,
                                  color: Colors.black,
                                ),),
                            ],
                          ),
                          Column(
                            children: [
                              const Text('Yanlış',
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 20
                                ),
                              ),
                              const Divider(
                                color: Colors.black,
                                thickness: 1,
                                endIndent: 40,
                                indent: 40,
                              ),
                              Text('$yanliscevap',
                                style: const TextStyle(
                                  fontSize: 50,
                                  fontWeight: FontWeight.w200,
                                  color: Colors.black,
                                ),),
                            ],
                          ),
                        ],
                      ),
                      aralik(sol: 50, sag: 50),
                      const Center(
                          child:
                          Text('Detaylı Bilgiler',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                              color: Colors.black,
                            ),
                          )),
                      aralik(sol: 100, sag: 100),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Bilgi(bilgi:'1: Suyun geri dönüşümü mümkündür. Su geri dönüşümü, arıtma tesislerinde veya ileri arıtma teknolojilerinde kullanılarak kullanılmış veya kirli suyun temizlenerek tekrar kullanılabilir hale getirilmesini ifade eder.'),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Bilgi(bilgi: '2: Sürdürülebilir tarım yöntemleri toprak verimliliğini artırabilir. Sürdürülebilir tarım, doğal kaynakların korunması, çevresel etkilerin azaltılması ve toprak sağlığının korunması amacıyla kullanılan bir dizi yöntem ve uygulamayı içerir.'),

                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Bilgi(bilgi: '3: Ulaşım yöntemlerimizi seçerek ekolojik ayak izimizi azaltabiliriz. Ulaşım faaliyetleri, fosil yakıt kullanımı, sera gazı emisyonları ve çevresel etkiler gibi nedenlerle önemli bir ekolojik ayak izi oluşturur.'),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Bilgi(bilgi: '4: Geri dönüşüm işlemi sırasında plastik şişeler tamamen erimez. Plastik şişeler genellikle geri dönüşüm sürecinde eritilir, ancak tamamen çözünmezler.'),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Bilgi(bilgi: '5: Biyolojik çeşitlilik kaybı çevrenin sürdürülebilirliği için önemli bir sorundur. Biyolojik çeşitlilik, dünya üzerindeki tüm canlı türlerinin ve ekosistemlerin çeşitliliğini ifade eder'),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Bilgi(bilgi: '6: Kağıt geri dönüşümü ağaç kesimini azaltmada etkili bir yöntemdir. Kağıt geri dönüşümü, atık kağıtların toplanması, geri kazanılması ve yeni kağıt üretimi için kullanılması sürecini ifade eder'),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Bilgi(bilgi: '7: İklim değişikliği doğal afetlerin sıklığını ve şiddetini artırır. İklim değişikliği, dünya genelinde hava ve iklim koşullarında belirgin değişikliklere yol açan uzun vadeli bir süreçtir. Bu değişiklikler, doğal afetlerin oluşumunu etkileyebilir ve mevcut afetlerin şiddetini artırabilir.'),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Bilgi(bilgi: '8: Çevre dostu ürünlerin fiyatları, genel olarak standart ürünlere kıyasla daha yüksek olabilir, ancak bu durum her zaman geçerli değildir.'),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Bilgi(bilgi: '9: Suyu tasarruflu kullanmak yalnızca bireysel olarak etkili değildir, aynı zamanda toplumsal bir fark yaratır'),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Bilgi(bilgi: '10: Sürdürülebilirlik doğal kaynakların tükenmesini önlemeyi amaçlar. Sürdürülebilirlik, mevcut nesillerin ihtiyaçlarını karşılamak için doğal kaynakları kullanırken gelecek nesillerin ihtiyaçlarını da göz önünde bulunduran bir yaklaşımı ifade eder'),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Bilgi(bilgi: '11: Plastik şişeler geri dönüştürüldüğünde, yeniden kullanılabilir hammadde elde edilir ve yeni plastik ürünlerin üretiminde kullanılır.'),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Bilgi(bilgi: '12: Çevre dostu ürünlerin kullanımı, karbon ayak izimizi azaltmada önemli bir rol oynar. Karbon ayak izi, bir kişi, bir organizasyon veya bir ürünün sera gazı emisyonlarının neden olduğu sera etkisine katkısını ifade eder'),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Bilgi(bilgi: '13: Biyoçeşitlilik, ekosistemlerin sağlıklı işleyişi için önemlidir. Biyoçeşitlilik, bir ekosistemde bulunan canlı türlerinin çeşitliliği ve bu türler arasındaki genetik çeşitliliği ifade eder. Ekosistemlerdeki canlı türlerinin çeşitliliği, ekosistemlerin dayanıklılığını, işlevselliğini ve sürdürülebilirliğini sağlar. '),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Bilgi(bilgi: '14: Çevre dostu ulaşım yöntemlerini tercih etmek, sürdürülebilirlik açısından oldukça etkilidir. Çevre dostu ulaşım yöntemleri, daha az enerji tüketen, daha az sera gazı emisyonu yapan ve çevresel etkileri azaltan seçeneklerdir '),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Bilgi(bilgi: '15: Çevre dostu temizlik ürünleri  genellikle doğal veya biyo-bazlı bileşenlere dayanır ve daha az kimyasal içerirler. Bu ürünler genellikle çevre ve sağlık üzerinde daha az etkiye sahiptir'),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                          decoration: BoxDecoration(
                            color: const Color(0xffffffff),
                            boxShadow: const [
                              BoxShadow(
                                color: Color(0xffabdbb9),
                                offset: Offset(4, 4),
                                blurRadius: 6,
                                spreadRadius: 2,
                              ),],
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child:TextButton(
                            onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> const LoginApp()));
                            },
                            child: const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text('Ana Sayfa',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w300
                                ),
                              ),
                            ),)),
                      SizedBox(height: 20,),
                    ]
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
class Bilgi extends StatelessWidget {
  Bilgi({super.key,required this.bilgi});
  String bilgi;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:BoxDecoration(
        color: const Color(0xffabdbb9),
        borderRadius: BorderRadius.circular(8),
      ) ,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text('$bilgi',
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w300,
          ),
        ),
      ),
    );
  }
}

class aralik extends StatelessWidget {
  aralik({super.key,required this.sol,required this.sag});
  double sol ;
  double sag;
  @override
  Widget build(BuildContext context) {
    return  Divider(
      color: Colors.black,
      thickness: 1,
      endIndent: sol,
      indent: sag,
    );
  }
}
