import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'login.dart';

class Intro extends StatefulWidget {
  const Intro({ Key? key }) : super(key: key);

  @override
  State<Intro> createState() => _IntroState();
}

class _IntroState extends State<Intro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Container(
         width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration:   const BoxDecoration(
         // borderRadius: BorderRadius.all(Radius.circular(40)),
         
           color: Colors.white,
        ),
        child: SingleChildScrollView(
          child: Column(
            children:  [
              const Padding(
                padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
                child: Text('FASTpay', textAlign: TextAlign.center, style: TextStyle(
                  color: Color(0xff0351EF),
                  fontWeight: FontWeight.bold,
                  fontSize: 13,
                ),),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(5, 10, 5, 10),
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(40)),
                  child: Image.asset('images/forintro.png', width: 320, height: 300,))),
                Text('The first bank',style: GoogleFonts.sourceSansPro(
                  fontSize: 32, 
                  color: const Color(0xff0351EF)),),
                  Text('without a bank.',style: GoogleFonts.sourceSansPro(
                  fontSize: 32, 
                  color: const Color(0xff0351EF)),),
                  Text('join the FASTpay experience,', style: GoogleFonts.inknutAntiqua(
                     fontWeight: FontWeight.bold,
                     fontSize: 7,
                    color: const Color(0xff0351EF)
                  ),
                  ),
                   Padding(
                     padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                     child: Text('timeless and asap payment, no jokes.', style: GoogleFonts.inknutAntiqua(
                       fontWeight: FontWeight.bold,
                       fontSize: 7,
                      color: const Color(0xff0351EF)
                                     ),
                                     ),
                   ),
                   Padding(
                     padding: const EdgeInsets.fromLTRB(0, 80, 0, 0),
                     child: Container(    
                       width: 100,
                       height: 37,
                       decoration: const BoxDecoration(
                         color: Color(0xff0351EF),
                         borderRadius: BorderRadius.all(Radius.circular(20))
                       ),
                       child: TextButton(onPressed: (){
                         Navigator.push(context, 
                         MaterialPageRoute(builder: (context) => const Login()),);
                       }, 
                       child:  Text('Proceed', style: GoogleFonts.sourceSansPro(
                         color: Colors.white),)),
                     ),
                   )
            ],
          ),
        ),
      ),
    );
  }
}