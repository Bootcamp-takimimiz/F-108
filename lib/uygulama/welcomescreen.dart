import 'package:flutter/material.dart';
import 'MainPage.dart';
import 'loginscreen.dart';
import 'Kayitol.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children:  [
            Image.asset(
                "assets/ekranss.png",
              height: MediaQuery.of(context).size.height * 0.45,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
            ),
            Image.asset(
              "assets/logoeco1.png",
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 25),
            // giriş butonu
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 40,
                vertical: 10,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: MaterialButton(
                      color: const Color(0xFF4AC06B),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const LoginScreen()));
                      },
                      child: const Padding(
                        padding: EdgeInsets.all(15.0),
                        child:  Text(
                          "Giriş Yap",
                          style: TextStyle(
                          color: Colors.white,
                            fontSize: 16,
                        ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            //kayıt butonu
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 40,
                vertical: 10,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: MaterialButton(
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(
                          color: Color(0xFF4AC06B),
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> const Registerup()));
                      },
                      child: const Padding(
                        padding: EdgeInsets.all(15.0),
                        child:  Text(
                          "Kayıt Ol",
                          style: TextStyle(
                            color: Color(0xFF4AC06B),
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(),
            GestureDetector(
              onTap: () { Navigator.push(context, MaterialPageRoute(builder: (context)=> const MainPage()));},
              child: const Text(
                "Misafir Olarak Devam Et",
                style: TextStyle(
                  color: Color(0xFF35C2C1),
                ),
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );



  }


}