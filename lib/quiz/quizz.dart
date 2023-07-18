import 'package:ecomate/quiz/etkenler/quiz_after_test.dart';
import 'package:flutter/material.dart';
import 'package:ecomate/quiz/etkenler/beyin.dart';
TestBeyni testBeyni = TestBeyni();

//super eski benzerliğini aldığı class'lardan inheritlerini kullanabilmek için yazılıyor

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}
int dogrucevap = 0;
int yanliscevap = 0;

class _QuizPageState extends State<QuizPage> {

  List<Icon>scoreKeeper = [];

  void CevapKontrol(bool KullaniciCevap){
    bool dogruCevap = testBeyni.getSoruCevap();

    setState(() {
      if (testBeyni.ProgSon() == true){
        Navigator.push(context, MaterialPageRoute(builder: (context)=> const QuizAfterPage()));
        testBeyni.Reset();
        scoreKeeper = [];
      }
      else {       if(KullaniciCevap == dogruCevap){
        scoreKeeper.add(const Icon(Icons.check,
          color: Colors.green,
        ));
        dogrucevap++;
      }
      else{
        scoreKeeper.add(const Icon(Icons.close,
          color: Colors.red,
        ));
        yanliscevap++;
      }}

      testBeyni.yeniSoru();
    });
  }


  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors:
              [
                Color(0xfffdf7e4),
                Color(0xffffffff),
                Color(0xfffdf7e4)])),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Stack(children: [
            Container(alignment: const Alignment(0.2 ,-0.5),
              decoration: BoxDecoration(

              ),
              child: Text(testBeyni.getSoruText(),
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(margin: EdgeInsets.only(top: height*0.50),
            height: height*0.9,
            decoration: const BoxDecoration(
              color: Color(0xFFD1EDBF),
              boxShadow: [
                BoxShadow(
                  offset: Offset(-1,-3),
                  color: Color(0xFFD1EDBF),
                  blurRadius: 3,
                ),
              ],
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),

              child: ListView(
                children: [
                  SizedBox(height:height*0.07,),

                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: TextButton(
                        style: TextButton.styleFrom(
                          foregroundColor: Colors.greenAccent,
                          backgroundColor: Colors.green,
                        ),
                          onPressed: (){
                          CevapKontrol(true);
                          },
                          child:const Padding(
                            padding: EdgeInsets.all(15.0),
                            child: Text('Doğru',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),),
                          )
                      ),
                    ),
                  ),
                 Expanded(
                   child: Padding(
                     padding: const EdgeInsets.all(20.0),
                     child: TextButton(
                       style: TextButton.styleFrom(
                         foregroundColor: Colors.redAccent,
                         backgroundColor: Colors.red,
                       ),
                       onPressed: (){
                      CevapKontrol(false);
                       },
                       child:const Padding(
                         padding: EdgeInsets.all(15.0),
                         child: Text(
                             'Yanlış',
                         style: TextStyle(
                           color: Colors.white,
                           fontSize: 20,
                         ),
                         ),
                       ),
                      ),
                   ),
                 ),
                ],
              ),
            ),
            Container(
              alignment: AlignmentDirectional.bottomEnd,
              child: Row(children: scoreKeeper,
              ),
            ),
          ],),
        ),
      ),
    );
  }
}
//TODO 1 verilecek soruları stack serilen kısma göre yazdır
//TODO 2 butonları yap
//TODO 3 Skor tablosunu yap
//TODO 4 Görünüşü ayarla
//TODO 5 Bütün her şeyi birbirine entegre et