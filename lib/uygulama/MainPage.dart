import 'package:ecomate/bilgi/bilgikosesi.dart';
import 'package:ecomate/markalar/markalar.dart';
import 'package:ecomate/quiz/quiz_yonlendirme_ekran.dart';
import 'package:ecomate/tuto/tutorial1_page.dart';
import 'package:ecomate/uygulama/community.dart';
import 'package:ecomate/uygulama/etkinlik.dart';
import 'package:ecomate/uygulama/geridonusum.dart';
import 'package:ecomate/uygulama/karbon.dart';
import 'package:ecomate/uygulama/not.dart';
import 'package:ecomate/uygulama/profil.dart';
import 'package:ecomate/uygulama/surdurulebiliryasamlar.dart';
import 'package:flutter/material.dart';


class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return  Container(
      decoration: const BoxDecoration(
          gradient:
          RadialGradient(colors: [
            Color(0xfffdf7e4),
            Color(0xffffffff),
            Color(0xfffdf7e4),
          ],),
      ),
      child:  Scaffold(
        backgroundColor: Colors.transparent,
      body: Stack(
        children: [
        SafeArea(
          child: Column(
            children:  [
              Stack(
                children:[ Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                        height: height*0.07,
                        width: width*0.12,
                        decoration: BoxDecoration(
                          color: const Color(0xffd1edbf),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        padding: const EdgeInsets.all(12),
                        child:GestureDetector(
                          onTap: ()=>profil(),
                          child: const Icon(Icons.person,
                          ),
                        )),
                  ],
                ),
                 Row(children: [
                   Container(
                       height: height*0.07,
                       width: width*0.12,
                       decoration: BoxDecoration(
                         color: const Color(0xffd1edbf),
                         borderRadius: BorderRadius.circular(8),
                       ),
                       padding: const EdgeInsets.all(12),
                       child:GestureDetector(
                         onTap: ()=>Tutorial1Page() ,
                         child:
                       const Icon(Icons.question_mark_rounded,
                       ),
                       ),
                   ),
                 ],),
                 Center(
                  child: Image.asset('images/amlem.png',
                  height: height*0.4,
                  ),
                ),
              ],
              ),
               Column(
                children: [
                   Row(
                    children: [
                      SizedBox(width: width*0.013,),
                      Button(Button_purpose: 'İlerleme Takvimi',Sayfa: CalendarApp1(),),
                      SizedBox(width: width*0.15,),
                      Button(Button_purpose: 'Etkinlik Takvimi',Sayfa: CalendarApp(),),
                      SizedBox(width: width*0.013,),
                    ],
                  ),
                  SizedBox(height: height*0.055,),
                  Row(
                    children: [
                      SizedBox(width: width*0.013,),
                      Button(Button_purpose: 'EcoMate Aktifliğim',Sayfa: Badge(),),
                      SizedBox(width: width*0.15,),
                      Button(Button_purpose: 'Geri Dönüşüm Merkezleri',Sayfa:GeriDonus() ,),
                      SizedBox(width: width*0.013,),
                    ],
                  ),
                   SizedBox(height: height*0.055,),
                   Row(
                    children: [
                      SizedBox(width: width*0.013,),
                    Button(Button_purpose: 'Bilgi Köşesi',Sayfa: Bilgi(),),
                      SizedBox(width: width*0.15,),
                      Button(Button_purpose: 'Not Defteri',Sayfa:NotDefteriApp(),),
                      SizedBox(width: width*0.013,),
                    ],
                  ),
                  SizedBox(height: height*0.055,),
                  Row(
                    children: [
                      SizedBox(width: width*0.013,),
                      Button(Button_purpose: 'Sürdürülebilir Markalar',Sayfa: Marka(),),
                      SizedBox(width: width*0.15,),
                      Button2(Button_purpose: 'Karbon Ayak İzi Hesaplayıcı',Sayfa: CarbonFootprintCalculator(),),
                      SizedBox(width: width*0.013,),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(width: width*0.013,),
                      Button2(Button_purpose: 'Test', Sayfa: const startingPage()),
                      SizedBox(width: width*0.15,),
                      Button(Button_purpose: 'Community', Sayfa: SurdurulebilirlikUygulamasi()),
                      SizedBox(width: width*0.013,),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
      ),
      ),
      );
  }
}

class Button extends StatelessWidget {
   // ignore: non_constant_identifier_names
   Button({super.key,required this.Button_purpose,required this.Sayfa });
  // ignore: non_constant_identifier_names
  String Button_purpose;
  // ignore: non_constant_identifier_names
  StatelessWidget Sayfa;


  @override
  Widget build(BuildContext context) {
    return  Expanded(
      child: Container(
          decoration: BoxDecoration(
          color: const Color(0xff58c963),
      borderRadius: BorderRadius.circular(12),
      boxShadow:  [
      BoxShadow(
      offset: const Offset(0,10),
      blurRadius: 100,
      color: const Color(0xffb7d3df).withOpacity(0.23),
      //#E1ECEF
      ),]
      ),
      child: TextButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=> Sayfa));
      },
      child: Expanded(
      child: Text('$Button_purpose',
      style: const TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w400,
      fontSize: 20,
      wordSpacing: 5,
      ),
      ),
      )),),
    );
  }
}
class Button2 extends StatelessWidget {
  // ignore: non_constant_identifier_names
  Button2({super.key,required this.Button_purpose,required this.Sayfa });
  // ignore: non_constant_identifier_names
  String Button_purpose;
  // ignore: non_constant_identifier_names
  StatefulWidget Sayfa;


  @override
  Widget build(BuildContext context) {
    return  Expanded(
      child: Container(
        decoration: BoxDecoration(
            color: const Color(0xff58c963),
            borderRadius: BorderRadius.circular(12),
            boxShadow:  [
              BoxShadow(
                offset: const Offset(0,10),
                blurRadius: 100,
                color: const Color(0xffb7d3df).withOpacity(0.23),
                //#E1ECEF
              ),]
        ),
        child: TextButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=> Sayfa));
        },
            child: Expanded(
              child: Text('$Button_purpose',
                style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                  wordSpacing: 5,
                ),
              ),
            )),),
    );
  }
}