import 'package:ecomate/quiz/quiz2.dart';
import 'package:flutter/material.dart';
import 'MainPage.dart';
import 'Kayitol.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(
          color: Colors.green,
      ),
      ),
      body: SafeArea(
        child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
      children:  [
        const SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(
           horizontal: 18,
          ),
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.8,
            child: const Text(
             "Tekrar Hoşgeldiniz!",
             style: TextStyle(
               fontSize: 30,
               fontWeight: FontWeight.w800,
              ),
            ),
          ),
        ),
        const SizedBox(height: 40),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: Container(
            decoration: BoxDecoration(
                 color: const Color(0xFFF7F8F9),
              border: Border.all(
                color: const Color(0xFF4AC06B),
              ),
              borderRadius: BorderRadius.circular(8),
              ),
            child: Padding(
              padding: const EdgeInsets.only(
                left: 10,
                right: 10,
              ),
              child: TextFormField(
                decoration: const InputDecoration(
                  border: InputBorder.none,
                   hintText: 'E-postanızı giriniz',
                  hintStyle: TextStyle(
                    color: Color(0xFF8391A1),
                  ),
                  ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: Container(
            decoration: BoxDecoration(
              color: const Color(0xFFF7F8F9),
              border: Border.all(
                color: const Color(0xFF4AC06B),
              ),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                left: 10,
                right: 10,
              ),
              child: TextFormField(
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Şifrenizi giriniz',
                  hintStyle: TextStyle(
                    color: Color(0xFF8391A1),
                  ),
                  suffixIcon: Icon(
                    Icons.remove_red_eye,
                    color: Color(0xFF4AC06B),
                  ),
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 10,
          ),
          child: Align(
            alignment: Alignment.centerRight,
            child: GestureDetector(
              onTap: () {},
              child: const Text("Şifreni mi unuttun?",style: TextStyle(
                color: Color(0xFF4AC06B),
              ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 25),
        // giriş butonu
        Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 5,
            ),
            child: Row(
              children: [
                Expanded(
                  child:  MaterialButton(
                    color: const Color(0xFF4AC06B), //figmadan renk kodu alındı
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context)=> const LoginScreen()));

                    },
                    child: TextButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> const MainPage()));
                      },
                      child: const Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Text(
                          "Giriş Yap",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )
        ),
        const SizedBox(height: 20),
        const Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 10,
          ),
          child: Row(
            children: [
              Expanded(
                  child: Divider(
                    color: Color(0xFF4AC06B),
                    thickness: 1,
                  ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 10,
                ),
                child: Text("Veya Giriş Yap"),
              ),
              Expanded(
                  child: Divider(
                    color: Color(0xFF4AC06B),
                    thickness: 1,
                  ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 30,
          ),
          child: Row(
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                       color: const Color(0xFFE8ECF4),
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Image.asset(
                      "assets/google.png",
                      height: 35,
                    ),
                  ),
                ),
              ),
             const SizedBox(width: 10),
            ],
          ),
        ),
        const Spacer(),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
                "Hesabınız yok mu? ",
                 style: TextStyle(
                   fontSize: 18,
                   fontWeight: FontWeight.w500,
                 ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> const Registerup()));
              },
              child: const Text(
                  "Kayıt Ol",
                style: TextStyle(
                  color: Color(0xFF35C2C1),
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ],
        ),
        GestureDetector(
          onTap: ()=>QuizPage2(),
          child: Text("Girmeden kullanabileceğiniz özellikler",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),),
        ),
      ],
        ),
       ),
        );
  }

}

