
import 'dart:ui';

import 'package:fastpay/data.dart';
import 'package:fastpay/login.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SignUp extends StatefulWidget {
  const SignUp({ Key? key }) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  @override
  void initState() {
    super.initState();
    
    UserDetails.registerUser(firstName: firstName, lastName: lastName, email: email, phoneNumber: phoneNumber, password: password, confirmedPassword: confirmPassword);
  }

  saveData(){

  }
  

 bool isPassword = false ;
 bool isConfirmPassword = false;

 var firstName = '';
 var lastName = '';
 var email = '';
 var phoneNumber = '';
 var password = '';
 var confirmPassword = '';

// final formKey = GlobalKey<FormState>();
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
         // borderRadius: BorderRadius.all(Radius.circular(30)),
          color: Colors.white,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                  child: ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                    child: Image.asset('images/signup.png', height: 200, width: 320,)),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 220, 0),
                  child: Text('Sign Up', style: GoogleFonts.sourceSansPro(color: const Color(0xff0351EF), fontSize: 25, fontWeight: FontWeight.bold),)),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                    child: TextFormField(
                     // key: formKey,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      validator: (val){
                        if (val != null && val.length < 7) {
                          return 'name too short';
                        }else if (val == null || val.isEmpty) {
                          return 'field required';
                        }else {
                          return null;
                        }
                      },
                      onChanged: (val){
                        setState(() {
                          firstName = val;
                        });
                      },
                      decoration: const InputDecoration(
                        // prefix: Icon(Icons.verified_user_rounded),
                        prefixIcon: Icon(Icons.verified_user, color: Color(0xff0351EF),),
                        hintText: 'First name', hintStyle: TextStyle(fontSize: 13),
                        border: UnderlineInputBorder(
                          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), topRight: Radius.circular(10),)
                        )
                      ),
                    ),
                  ),
                    Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                    child: TextFormField(
                   //   key: formKey,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                        validator: (val){
                        if (val != null && val.length < 7) {
                          return 'name too short';
                        }else if (val == null || val.isEmpty) {
                          return 'field required';
                        }else{
                          return null;
                        }
                      },
                      onChanged: (val){
                        setState(() {
                          lastName = val ;
                        });
                      },
                      decoration: const InputDecoration(
                        // prefix: Icon(Icons.verified_user_rounded),
                        prefixIcon: Icon(Icons.verified_user, color: Color(0xff0351EF),),
                        hintText: 'Last name', hintStyle: TextStyle(fontSize: 13),
                        border: UnderlineInputBorder(
                          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), topRight: Radius.circular(10),)
                        )
                      ),
                    ),
                  ),
                    Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                    child: TextFormField(
                     // key: formKey,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                        validator: (val){
                        if (val != null && val.length < 15) {
                          return 'mail too short';
                        }else if (val == null || val.isEmpty) {
                          return 'field required';
                        }else{
                          return null;
                        }
                      },
                      onChanged: (val){
                        setState(() {
                          email = val;
                        });
                      },
                      decoration: const InputDecoration(
                        // prefix: Icon(Icons.verified_user_rounded),
                        prefixIcon: Icon(Icons.attach_email_outlined, color: Color(0xff0351EF),),
                        hintText: 'Preffered email', hintStyle: TextStyle(fontSize: 13),
                        border: UnderlineInputBorder(
                          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), topRight: Radius.circular(10),)
                        )
                      ),
                    ),
                  ),
                    Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                    child: TextFormField(
                   //   key: formKey,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      validator: (val){
                        if (val != null && val.length < 11) {
                          return 'enter a valid number';
                        }else if (val == null || val.isEmpty) {
                          return 'field required';
                        }else {
                          return null;
                        }
                      },
                      onChanged: (val){
                        setState(() {
                          phoneNumber = val;
                        });
                      },
                      decoration: const InputDecoration(
                        // prefix: Icon(Icons.verified_user_rounded),
                        prefixIcon: Icon(Icons.phone_android, color: Color(0xff0351EF),),
                        hintText: 'Mobile number', hintStyle: TextStyle(fontSize: 13),
                        border: UnderlineInputBorder(
                          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), topRight: Radius.circular(10),)
                        )
                      ),
                    ),
                  ),
                    Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                    child: TextFormField(
                  //    key: formKey,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                       validator: (val){
                        if (val != null && val.length < 8) {
                          return 'Enter min. of 8 characters' ;
                        }else if (val == null || val.isEmpty) {
                          return 'field required';
                        }
                        else {
                          return null ;
                        }
                      },
                      onChanged: (val){
                        setState(() {
                         password = val;
                        });
                      },
                      obscureText: !isPassword,
                      decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.lock, color: Color(0xff0351EF),),
                         suffixIcon: IconButton(onPressed: (){
                        setState(() {
                          isPassword = !isPassword;
                        });
                      }, icon: Icon(isPassword ? Icons.visibility_off : Icons.visibility, color: const Color(0xff0351EF),)),
                        hintText: 'Password', hintStyle: const TextStyle(fontSize: 13),
                        border: const UnderlineInputBorder(
                          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), topRight: Radius.circular(10),)
                        )
                      ),
                     
                    ),
                  ),
                     Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                    child: TextFormField(
                  //    key: formKey,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      onChanged: (val){
                        setState(() {
                          confirmPassword = val;
                        });
                      },
                      obscureText: !isConfirmPassword,
                      decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.lock, color: Color(0xff0351EF),),
                         suffixIcon: IconButton(onPressed: (){
                        setState(() {
                          isConfirmPassword = !isConfirmPassword;
                        });
                      }, icon: Icon(isConfirmPassword ? Icons.visibility_off : Icons.visibility, color: const Color(0xff0351EF),)),
                        hintText: 'Confirm password', hintStyle: const TextStyle(fontSize: 13),
                        border: const UnderlineInputBorder(
                          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), topRight: Radius.circular(10),)
                        )
                      ),
                      validator: (val){
                        if (val != null && val.length< 8) {
                          return 'Enter min. of 8 characters';
                        }else if (val == null || val.isEmpty) {
                          return 'field required';
                        }else {
                          return null;
                        }
                      },
                    ),
                  ),
                    Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 30,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        color: Color(0xff0351EF)
                      ),
                      child: TextButton(onPressed: (){
                        setState(() {
                          
                        });
                      }, 
                      child: const Text('SignUp', style: TextStyle(color: Colors.white),)),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('Joined us before?',style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 10,
                          ),),
                      TextButton(onPressed: (){
                        Navigator.push(context,
                         MaterialPageRoute(builder: (context) => const Login()),);
                      }, child:  const Text('Login',style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 10,
                          color: Color(0xff0351EF)),))
                    ],
                  )
            ],
          ),
        ),
      ),
    );
  }
}