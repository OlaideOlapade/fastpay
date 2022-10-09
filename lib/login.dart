import 'package:fastpay/bnb.dart';
import 'package:fastpay/dashboard.dart';
import 'package:fastpay/forgotpassword.dart';
import 'package:fastpay/signup.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Login extends StatefulWidget {
  const Login({ Key? key }) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  var email = '';
  var password = '';
  
  bool hidePassword = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration:  const BoxDecoration(
          color: Colors.white,
         // borderRadius: BorderRadius.all(Radius.circular(40))
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
                child: Image.asset('images/forLogin.png', 
                width: MediaQuery.of(context).size.width, 
                height: 200,)
                ),
               const SizedBox(height: 5),
               Text('Login' ,
               textAlign: TextAlign.left,
                style: GoogleFonts.sourceSansPro(
                 color: const Color(0xff0351EF),
                 fontSize: 25,
                 fontWeight: FontWeight.bold
               ),),
              // Text('Login', textAlign: TextAlign.left,
              //  style: GoogleFonts.sourceSansPro(color: const Color(0xff0351EF), 
              //  fontSize: 25,
              //   fontWeight: FontWeight.bold),),
                 Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                    child: TextFormField(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      validator: (val){
                        if (val != null && val.length < 7) {
                          return 'name too short';
                        }else if (val == null || val.isEmpty) {
                          return 'field required';
                        }else if (val.isEmpty || !val.contains('@')) {
                          return '@ is required';
                        }
                        else {
                          return null;
                        }
                      },
                      onChanged: (val){
                        setState(() {
                          email = val;
                        });
                      },
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.attach_email_outlined, color: Color(0xff0351EF),),
                        hintText: 'Email', 
                        hintStyle: TextStyle(fontSize: 13),
                        // border: UnderlineInputBorder(
                        //   borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), topRight: Radius.circular(10),)
                        // )
                      ),
                    ),
                  ),
                  Padding(
                  padding:  const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                  child: TextFormField(
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
                        password = val ;
                      });
                    },
                    obscureText: !hidePassword,
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.lock, color: Color(0xff0351EF),),
                      suffixIcon: IconButton(onPressed: (){
                        setState(() {
                          hidePassword = !hidePassword;
                        });
                      }, icon: Icon(hidePassword ? Icons.visibility_off : Icons.visibility, color: const Color(0xff0351EF),)),
                      hintText: 'Password', hintStyle: const TextStyle(fontSize: 13),
                      // border: const UnderlineInputBorder(
                      //   borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), topRight: Radius.circular(10),)
                      // )
                    ),
                  ),
                ),
                Padding(padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 2),
                  child: TextButton(onPressed: (){
                     Navigator.push(context,
                           MaterialPageRoute(builder: (context) => const ForgotPassword()),);
                  }, 
                  child:  Align(
                    alignment: Alignment.centerRight,
                    child: Text('Forgot Password?', 
                    style: GoogleFonts.sourceSansPro(
                     fontSize: 11,
                      color: const Color(0xff0351EF), 
                      fontWeight: FontWeight.bold),),
                  )),
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
                    child: TextButton(onPressed: (){
                      setState(() {
                        if(email.isEmpty || password.isEmpty){
                       
                        }
                      });
                    }, 
                    child: const Text('Login', style: TextStyle(color: Colors.white),)),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 8, horizontal: 0),
                  child: Text('OR', textAlign: TextAlign.center, style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold, color: Color(0xff0351EF)),)),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 15),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(Radius.circular(8)),
                        color: Colors.grey.shade300
                      ),
                      child: Row(mainAxisAlignment: MainAxisAlignment.center,
                        children:  [
                          Image.asset('images/googleicon.png', height: 25,),
                           TextButton(
                             onPressed: (){},
                             child: Text('Login with Google', style: GoogleFonts.sourceSansPro(
                               color: const Color(0xff0351EF)
                             ),))
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:  [
                        const Text('New to Banking?', style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 10),),
                        const SizedBox(width: 3,),
                        TextButton(onPressed: (){
                          Navigator.push(context,
                           MaterialPageRoute(builder: (context) => const SignUp()),);
                        },
                         child: const Text('Register', 
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 10,
                          color: Color(0xff0351EF)),
                          ))
                      ],
                    ),
                  )
            ],
          ),
        ),
      ),
    );
  }
}