import 'dart:ui';

import 'package:fastpay/bnb.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({ Key? key }) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       drawer: Drawer(
         child: ListView(
           children:  [
             Padding(
               padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
               child: ListTile(
                 selectedTileColor: Colors.amber.shade50,
                 title: const Text('My accounts', style: TextStyle(
                   fontWeight: FontWeight.bold,
                   color: Color(0xff0351EF)),),
                 leading: const Icon(Icons.manage_accounts, color: Color(0xff0351EF),),
                 onTap: (){
                   setState(() {
                      Navigator.push(context,
                             MaterialPageRoute(builder: (context) => const Bnb()),);
                   });
                 },
               ),
             ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                child: ListTile(
                 selectedTileColor: const Color.fromARGB(255, 255, 225, 251),
                 title: const Text('Frequent Transactions', style: TextStyle(
                   fontWeight: FontWeight.bold,
                   color: Color(0xff0351EF)),),
                 leading: const Icon(Icons.refresh, color: Color(0xff0351EF),),
                 onTap: (){
                   setState(() {
                      Navigator.push(context,
                             MaterialPageRoute(builder: (context) => const Dashboard()),);
                   });
                 },
                           ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                child: ListTile(
                 selectedTileColor: Colors.amber.shade50,
                 title: const Text('Pay Bills', style: TextStyle(
                   fontWeight: FontWeight.bold,
                   color: Color(0xff0351EF)),),
                 leading: const Icon(Icons.event_rounded, color: Color(0xff0351EF),),
                 onTap: (){
                   setState(() {
                      Navigator.push(context,
                             MaterialPageRoute(builder: (context) => const Dashboard()),);
                   });
                 },
                           ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                child: ListTile(
                 selectedTileColor: Colors.amber.shade50,
                 title: const Text('Buy Airtime', style: TextStyle(
                   fontWeight: FontWeight.bold,
                   color: Color(0xff0351EF)),),
                 leading: const Icon(Icons.phone_android, color: Color(0xff0351EF),),
                 onTap: (){
                   setState(() {
                      Navigator.push(context,
                             MaterialPageRoute(builder: (context) => const Dashboard()),);
                   });
                 },
                           ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                child: ListTile(
                 selectedTileColor: Colors.amber.shade50,
                 title: const Text('Transfer Money', style: TextStyle(
                   fontWeight: FontWeight.bold,
                   color: Color(0xff0351EF)),),
                 leading: const Icon(Icons.transform_rounded, color: Color(0xff0351EF),),
                 onTap: (){
                   setState(() {
                      Navigator.push(context,
                             MaterialPageRoute(builder: (context) => const Dashboard()),);
                   });
                 },
                           ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                child: ListTile(
                 selectedTileColor: Colors.amber.shade50,
                 title: const Text('Beneficiary Management', style: TextStyle(
                   fontWeight: FontWeight.bold,
                   color: Color(0xff0351EF)),),
                 leading: const Icon(Icons.people, color: Color(0xff0351EF),),
                 onTap: (){
                   setState(() {
                      Navigator.push(context,
                             MaterialPageRoute(builder: (context) => const Dashboard()),);
                   });
                 },
                           ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                child: ListTile(
                 selectedTileColor: Colors.amber.shade50,
                 title: const Text('Card Services', style: TextStyle(
                   fontWeight: FontWeight.bold,
                   color: Color(0xff0351EF)),),
                 leading: const Icon(Icons.add_card, color: Color(0xff0351EF),),
                 onTap: (){
                   setState(() {
                      Navigator.push(context,
                             MaterialPageRoute(builder: (context) => const Dashboard()),);
                   });
                 },
                           ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                child: ListTile(
                 selectedTileColor: Colors.amber.shade50,
                 title: const Text('Self Services', style: TextStyle(
                   fontWeight: FontWeight.bold,
                   color: Color(0xff0351EF)),),
                 leading: const Icon(Icons.sd_card_alert_outlined, color: Color(0xff0351EF),),
                 onTap: (){
                   setState(() {
                      Navigator.push(context,
                             MaterialPageRoute(builder: (context) => const Dashboard()),);
                   });
                 },
                           ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                child: ListTile(
                 selectedTileColor: Colors.amber.shade50,
                 title: const Text('Loans', style: TextStyle(
                   fontWeight: FontWeight.bold,
                   color: Color(0xff0351EF)),),
                 leading: const Icon(Icons.currency_exchange_rounded, color: Color(0xff0351EF),),
                 onTap: (){
                   setState(() {
                      Navigator.push(context,
                             MaterialPageRoute(builder: (context) => const Dashboard()),);
                   });
                 },
                           ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                child: ListTile(
                 selectedTileColor: Colors.amber.shade50,
                 title: const Text('Digital Payment', style: TextStyle(
                   fontWeight: FontWeight.bold,
                   color: Color(0xff0351EF)),),
                 leading: const Icon(Icons.payment, color: Color(0xff0351EF),),
                 onTap: (){
                   setState(() {
                      Navigator.push(context,
                             MaterialPageRoute(builder: (context) => const Dashboard()),);
                   });
                 },
                           ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                child: ListTile(
                 selectedTileColor: Colors.amber.shade50,
                 title: const Text('Lifestyle', style: TextStyle(
                   fontWeight: FontWeight.bold,
                   color: Color(0xff0351EF)),),
                 leading: const Icon(Icons.style_outlined, color: Color(0xff0351EF),),
                 onTap: (){
                   setState(() {
                      Navigator.push(context,
                             MaterialPageRoute(builder: (context) => const Dashboard()),);
                   });
                 },
                           ),
              ),
           ],
         ),
       ),
      appBar: AppBar(
        backgroundColor: const Color(0xff0351EF),
        title: const Text('Dashboard', style: TextStyle(
          fontSize: 16,
          color: Colors.white),),
        centerTitle: true,
        actions: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.notifications, color: Colors.white,))
        ],
      ),
      backgroundColor: Colors.grey,
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          color: Colors.white70
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                     Text('Hi, Olaide',style: GoogleFonts.roboto(
                       fontSize: 15,
                       fontWeight: FontWeight.bold,
                       color: Colors.black
                     ),),
                      // const SizedBox(width: 40,),
                    Container(
                      width: 56,
                      height: 56,
                      decoration:  BoxDecoration(
                        borderRadius: const BorderRadius.all(Radius.circular(28)),
                        border: Border.all(
                          color: const Color(0xff0351EF),
                          width: 3,
                        )
                      ),
                      child: const CircleAvatar(
                        radius: 23,
                        backgroundImage: AssetImage('images/profileimage2.jpg'),
                      ),
                    )
                  ],
                ),
              ),
              Stack(
                children: [
                  Container(
                    width: 250,
                    height: 140,
                    child: const Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(22)),   
                      ),
                      color: Color(0xff0351EF),
                    ),
                    decoration:  BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(22)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 5.0,
                          blurRadius: 4.0,
                          offset: const Offset(-4.0, 6.0),
                        )
                      ],
                    ),
                  ),
                  const Positioned(
                    top: 45,
                    left: 24,
                    child: Text('Total Balance', style: TextStyle(
                      fontSize: 13,
                      color: Colors.white),)),
                      Positioned(
                        top: 35,
                        left: 170,
                        child: Container(
                          width: 70,
                          height: 20,
                          decoration:   const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: Colors.grey,
                          ),
                          child: TextButton(onPressed: (){}, child: const Text('+ New Card', style: TextStyle(
                            fontSize: 10,
                            color: Colors.white),)),
                        ),
                      ),
                   const Positioned(
                    top: 63,
                    left: 24,
                    child: Text('15,300.10', style: TextStyle(
                      fontSize: 20,
                      color: Colors.white),)),
                 const Positioned(
                    top: 110,
                    left: 24,
                    child: Text('5275  ****  ****  ****', style: TextStyle(
                      fontSize: 14,
                      color: Colors.white),)),
                      Positioned(
                        top: 105,
                        left: 195,
                        child: Container(
                          width: 23,
                          height: 23,
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.all(Radius.circular(15)),
                            color: Colors.red.shade600,
                          ),
                        ),
                      ),
                        Positioned(
                        top: 105,
                        left: 210,
                        child: Container(
                          width: 23,
                          height: 23,
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.all(Radius.circular(15)),
                            color: Colors.yellow.shade700,
                          ),
                        ),
                      ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(onPressed: (){}, child: const Text('Payment', style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 11),)),
                    TextButton(onPressed: (){}, child: const Text('View all', style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 11),)),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Stack(
                      children: [
                          Container(
                          width: 130,
                           height: 90,
                          child: Card(
                            color: Colors.blue.shade100,
                             shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(8))
                        ),
                      ),
                    ),
                    Positioned(
                      top: 20,
                      left: 46,
                      child: CircleAvatar(
                        backgroundColor: Colors.blue.shade400,
                        radius: 13,
                        child: IconButton(onPressed: (){}, icon: const Icon(Icons.send), iconSize: 13,color: Colors.white,))),
                      Positioned(
                        top: 45,
                        left: 32,
                        child: TextButton(onPressed: (){}, child: const Text('Send', style: TextStyle(
                          fontWeight: FontWeight.bold
                        ),))),
                      ],
                    ),
                         Stack(
                      children: [
                          Container(
                          width: 130,
                           height: 90,
                          child: Card(
                            color: Colors.green.shade100,
                             shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(8))
                        ),
                      ),
                    ),
                    Positioned(
                      top: 20,
                      left: 46,
                      child: CircleAvatar(
                        backgroundColor: Colors.green.shade400,
                        radius: 13,
                        child: IconButton(onPressed: (){}, icon: const Icon(Icons.send_and_archive_sharp), iconSize: 13,color: Colors.white,))),
                      Positioned(
                        top: 45,
                        left: 30,
                        child: TextButton(onPressed: (){}, child:  Text('Receive', style: TextStyle(
                          color: Colors.green.shade400,
                          fontWeight: FontWeight.bold
                        ),))),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(onPressed: (){}, child: const Text('Transactions', style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 11),)),
                    TextButton(onPressed: (){}, child: const Text('View all', style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 11),)),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const CircleAvatar(
                    radius: 11,
                    backgroundImage: AssetImage('images/profileimage3.jpg',),
                  ),
                  // const SizedBox(width: 7,),
                  Column(
                    children: const [
                      Text('Olaide Olapade', style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 11
                      ),),
                      Text('Jun 1, 3:00pm', style: TextStyle(
                        fontSize: 9,
                        fontWeight: FontWeight.bold
                      ),)
                    ],
                  ),
                  const Text('+15,000', style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.bold,
                        color: Colors.green
                      ),)
                ],
              ),
                  Padding(
                padding: const EdgeInsets.symmetric(vertical: 13,horizontal: 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const CircleAvatar(
                      radius: 11,
                      backgroundColor: Colors.red,
                     // backgroundImage: AssetImage('images/profileimage3.jpg'),
                    ),
                    // const SizedBox(width: 7,),
                    Column(
                      children: const [
                        Text('Airtime Purchase', style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 11
                        ),),
                        Text('May 27, 11:00pm', style: TextStyle(
                          fontSize: 9,
                          fontWeight: FontWeight.bold
                        ),)
                      ],
                    ),
                    const Text('-1,000', style: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.bold,
                          color: Colors.red
                        ),)
                  ],
                ),
              ),
              
            ],
          ),
        ),
      ),

      
      
    );
  }
}



