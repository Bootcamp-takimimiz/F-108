import 'package:flutter/material.dart';
import 'MainPage.dart';

class Registerup extends StatefulWidget {
  const Registerup({super.key});

  @override
  State<Registerup> createState() => _RegisterupState();
}

class _RegisterupState extends State<Registerup> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      decoration: const BoxDecoration(gradient:
      LinearGradient(
          colors:
          [Color(0xfffdf7e4),
          Color(0xffffffff),
            Color(0xfffdf7e4),
          ])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
          body: Stack(
            children: [
              Container(
                height: height*0.15,
              ),
              Container(
                margin: EdgeInsets.only(top: height*0.15),
                height: height*0.85,
                decoration:const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),),),
                child: ListView(
                  children: [
                    Text('Üye Ol'.toUpperCase(),
                    style:const TextStyle(fontSize: 40,fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: height*0.01,),
                    Center(child: Container(
                      height: 1,
                      width: width*0.8,
                      color:Colors.grey.shade700
                    ),),
                    SizedBox(height: height*0.05,),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal:width*0.05),
                      child: TextField(
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          hintText: 'İsim',
                          hintStyle:
                         const TextStyle(fontWeight: FontWeight.bold,
                              letterSpacing: 1.8,),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                            borderSide:const BorderSide(
                              width: 1,
                              style: BorderStyle.solid,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: height*0.04,),
                    Container(margin: EdgeInsets.symmetric(horizontal: width * 0.05),
                    child: TextField(
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        hintText: 'Email',
                        hintStyle:const TextStyle(fontWeight: FontWeight.bold,
                        letterSpacing: 1.8,
                        ),
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20),
                        borderSide:const BorderSide(
                          width: 1,
                          style: BorderStyle.solid,
                          color:Colors.grey,
                        ) ,
                        ),),
                    ),
                    ),
                    SizedBox(height: height*0.04,),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: width*0.05),
                      child: TextField(
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          hintText: 'Şifre',
                          hintStyle:const TextStyle(
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1.8),
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20),
                          borderSide:const BorderSide(
                            width: 1,
                            style: BorderStyle.solid,
                            color: Colors.grey,
                          ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: height*0.2,),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: width*0.05),
                      child: TextButton(
                        onPressed:(){
                          setState(() {
                            return ;
                          });
                        },
                        child: TextButton(
                          onPressed: () {  Navigator.push(context, MaterialPageRoute(builder: (context)=> const MainPage()));},
                          child: const Text('Kayıt Ol',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1.8,
                              color: Colors.black
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ),
            ],
          ),
      ),
    );
  }
}
