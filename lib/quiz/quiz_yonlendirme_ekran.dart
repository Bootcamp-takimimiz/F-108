import 'package:ecomate/quiz/quizz.dart';
import 'package:flutter/material.dart';

import '../uygulama/MainPage.dart';

class startingPage extends StatefulWidget {
  const startingPage({super.key});

  @override
  State<startingPage> createState() => _startingPageState();
}

class _startingPageState extends State<startingPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: const Color(0xffa5d5d0),
      body: SafeArea(
        child: Column(
          children:<Widget> [
            Stack(
              alignment:Alignment.topLeft,
              children: [
                Image.asset('images/test.jpeg'),
                Container(
                  decoration:  const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(60),
                      topRight: Radius.circular(60),
                      bottomLeft: Radius.circular(60),
                      bottomRight: Radius.circular(60),
                    ),
                    color: Colors.white70,
                  ),
                  child: TextButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> const MainPage()));
                  },
                    child: const Icon(Icons.keyboard_return,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],),
               Container(
                 decoration:  BoxDecoration(
                   border: Border.all(
                     color: Colors.white,
                     width: 2.2,
                   ),
                   color:Colors.white70,
                 ),
                 child:  const Text('Teste Hosgeldiniz',
              textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                   fontFamily: 'NanumMyeongjo_Regular',
                    fontSize: 40,
                  ),
              ),
               ),
            Padding(
              padding:  const EdgeInsets.only(top: 50.0),
              child: Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(5),
                    topLeft:  Radius.circular(5),
                    bottomRight: Radius.circular(5),
                    bottomLeft: Radius.circular(5),
                    ),
                    color: const Color(0xff58c963),
                    border: Border.all(color: Color.alphaBlend(const Color(0xDB75AB34), const Color(0xDB80B044),),
                      width: 2.2,
                    ),
                    ),
                  child: TextButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> const QuizPage()));
                  },
                      child:
                      const Text('Basla',
                      textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'NanumMyeongjo_Regular',
                          fontSize: 40,
                        ),
                      )),
                  ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
