
import 'dart:ui';

import 'package:fastpay/intro.dart';
import 'package:flutter/material.dart';
import 'package:splash_screen_view/SplashScreenView.dart';
import 'package:google_fonts/google_fonts.dart';

class Splash extends StatefulWidget {
  const Splash({ Key? key }) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        //color: Colors.redAccent,
        decoration:  const BoxDecoration(
          
         // borderRadius: BorderRadius.all(Radius.circular(40)),
          //color: Color.fromARGB(179, 9, 231, 164)
          color: Colors.white,
        
        ),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //  Padding(
            //    padding: const EdgeInsets.fromLTRB(0, 100, 0, 10),
            //    child: Image.asset('assets/images/bulbdollar.png', height: 100, width: 200,)),
             const Text('FASTpay', style: TextStyle(
               fontWeight: FontWeight.bold,
               color: Color(0xff0351EF),
               fontSize: 35),),
               const Text('asap payment...', style: TextStyle(
                 fontStyle: FontStyle.italic,
                 color: Color(0xff0351EF),
                 fontSize: 12,
                 //backgroundColor: Colors.blue,
               ),),
               Padding(
                 padding: const EdgeInsets.fromLTRB(0, 300, 0, 0),
                 child: Container(
                   width: 250,
                   height: 36,
                   decoration: const BoxDecoration(
                     //color: Colors.blue,
                     color: Color(0xff0351EF),
                     borderRadius: BorderRadius.all(Radius.circular(20))
                   ),
                   child: TextButton(onPressed: (){
                    Navigator.push(context,
                     MaterialPageRoute(builder: (context) => const Intro()),);
                   }, 
                   child: const Text('Get Started', style: TextStyle(
                     color: Colors.white),)),
                 ),
               )
          ],
        ),
      ),
    );
  }
}