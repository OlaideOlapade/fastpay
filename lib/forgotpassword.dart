import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({ Key? key }) : super(key: key);

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
                child: Image.asset('images/password2.png', 
                width: MediaQuery.of(context).size.width, 
                height: 200,),
              ),
               const SizedBox(height: 8),
               Text('Forgot Password?' ,
               textAlign: TextAlign.left,
                style: GoogleFonts.sourceSansPro(
                 color: const Color(0xff0351EF),
                 fontSize: 33,
                 fontWeight: FontWeight.bold
               ),),
               Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                 child: TextFormField(
                   validator: (val){
                   },
                   onChanged: (val){},
                   decoration: const InputDecoration(
                     prefixIcon: Icon(Icons.attach_email_outlined, color: Color(0xff0351EF),),
                     hintText: 'Email ID / Mobile Number',
                     hintStyle: TextStyle(fontSize: 13),
                   ),
                 ),
               ),
               Padding(
                  padding: const EdgeInsets.fromLTRB(15, 12, 15, 12),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 30,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      color: Color(0xff0351EF)
                    ),
                    child: TextButton(onPressed: (){}, 
                    child: const Text('Submit', style: TextStyle(color: Colors.white),)),
                  ),
                ),
               
              
          
            ],
          ),
        ),
      ),
    );
  }
}