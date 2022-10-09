import 'package:fastpay/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Bnb extends StatefulWidget {
  const Bnb({ Key? key }) : super(key: key);

  @override
  State<Bnb> createState() => _BnbState();
}

class _BnbState extends State<Bnb> {
  
    List <Widget> views = const <Widget>[

   Dashboard(),
    Budgets(),
    Savings(),
    Settings(),
  ];

  int selectedIndex = 0;

  PageController controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // drawer: const Drawer(),
      // appBar: AppBar(
      //   backgroundColor: const Color(0xff0351EF),
      //   title: const Text('Dashboard', style: TextStyle(color: Colors.white),),
      //   centerTitle: true,
      //   actions: [
      //     IconButton(onPressed: (){}, icon: const Icon(Icons.notifications, color: Colors.white,))
      //   ],
      // ),
      body: PageView(
        children: views,
        controller: controller,
        onPageChanged: (index){
          setState(() {
            selectedIndex = index;
          });
        },
      ),
       bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        selectedItemColor:  Colors.green,
        unselectedItemColor: const Color(0xff0351EF),
        selectedFontSize: 18,
        unselectedFontSize: 11,
        showUnselectedLabels: true,
       // onTap: (index)=> setState(() => selectedIndex = index ),  
       onTap: (index){
         setState(() {
           controller.jumpToPage(index);
         });
       },

        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Dashboard', ),
          BottomNavigationBarItem(icon: Icon(Icons.backpack_outlined), label: 'Budget'),
        //  BottomNavigationBarItem(icon: Icon(Icons.credit_card), label: 'Card'),
          BottomNavigationBarItem(icon: Icon(Icons.savings_rounded), label: 'Savings'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings'),
        ]),
    );
  }
}




//BUDGETS CLASS//

class Budgets extends StatefulWidget {
  const Budgets({ Key? key }) : super(key: key);

  @override
  State<Budgets> createState() => _BudgetsState();
}

class _BudgetsState extends State<Budgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       drawer:  Drawer(
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
        toolbarHeight: 40,
        backgroundColor: const Color(0xff0351EF),
        title: const Text('Budgets', style: TextStyle(
          fontSize: 16,
          color: Colors.white),),
        centerTitle: true,
        // actions: [
        //   IconButton(onPressed: (){}, icon: const Icon(Icons.notifications, color: Colors.white,))
        // ],
      ),
    );
  }
}

// class Cards extends StatefulWidget {
//   const Cards({ Key? key }) : super(key: key);

//   @override
//   State<Cards> createState() => _CardsState();
// }

// class _CardsState extends State<Cards> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Colors.green
//     );
//   }
// }


//SAVINGS CLASS//
class Savings extends StatefulWidget {
  const Savings({ Key? key }) : super(key: key);

  @override
  State<Savings> createState() => _SavingsState();
}

class _SavingsState extends State<Savings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer:  Drawer(
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
        toolbarHeight: 40,
        backgroundColor: const Color(0xff0351EF),
        centerTitle: true,
        title:  const Text('Savings', style: TextStyle(
          fontSize: 16,
          color: Colors.white),),
      ),
    );
  }
}



//SETTINGS CLASS//
class Settings extends StatefulWidget {
  const Settings({ Key? key }) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer:  Drawer(
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
         toolbarHeight: 40,
        backgroundColor: const Color(0xff0351EF),
        centerTitle: true,
        title:  const Text('Account Settings', style: TextStyle(
          fontSize: 16,
          color: Colors.white),),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 60,
                  child:  Card(
                    elevation: 10,
                   // margin: const EdgeInsets.all(5),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))
                    ),
                    child: ListTile(
                      leading: const CircleAvatar(
                        radius: 13,
                        backgroundColor: Color(0xff0351EF),
                        child: Icon(Icons.shuffle),
                      ),
                      title: const Text('change mPIN'),
                      trailing: const Icon(Icons.arrow_forward),
                      onTap: (){
                        setState(() {
                        });
                      },
                    ),
                    ),
                       )],
                 ),
          ),
                Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 60,
                child:  Card(
                  elevation: 10,
                 // margin: const EdgeInsets.all(5),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))
                  ),
                  child: ListTile(
                    leading: const CircleAvatar(
                      radius: 13,
                      backgroundColor: Color(0xff0351EF),
                      child: Icon(Icons.share),
                    ),
                    title: const Text('Share This App'),
                    trailing: const Icon(Icons.arrow_forward),
                    onTap: (){
                      setState(() {
                        
                      });
                    },
                  ),
                  ),
                     )
            ],
          ),
           Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 60,
                child:  Card(
                  elevation: 10,
                 // margin: const EdgeInsets.all(5),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))
                  ),
                  child: ListTile(
                    leading: const CircleAvatar(
                      radius: 13,
                      backgroundColor: Color(0xff0351EF),
                      child: Icon(Icons.shuffle),
                    ),
                    title: const Text('Change Transaction Pin'),
                    trailing: const Icon(Icons.arrow_forward),
                    onTap: (){
                      setState(() {
                        
                      });
                    },
                  ),
                  ),
                     )
            ],
          ),
           Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 60,
                child:  Card(
                  elevation: 10,
                 // margin: const EdgeInsets.all(5),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))
                  ),
                  child: ListTile(
                    leading: const CircleAvatar(
                      radius: 13,
                      backgroundColor: Color(0xff0351EF),
                      child: Icon(Icons.change_circle),
                    ),
                    title: const Text('Reset Transaction Pin'),
                    trailing: const Icon(Icons.arrow_forward),
                    onTap: (){
                      setState(() {
                        
                      });
                    },
                  ),
                  ),
                     )
            ],
          ),
           Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 60,
                child:  Card(
                  elevation: 10,
                 // margin: const EdgeInsets.all(5),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))
                  ),
                  child: ListTile(
                    leading: const CircleAvatar(
                      radius: 13,
                      backgroundColor: Color(0xff0351EF),
                      child: Icon(Icons.message),
                    ),
                    title: const Text('Reset Question and Answer'),
                    trailing: const Icon(Icons.arrow_forward),
                    onTap: (){
                      setState(() {
                        
                      });
                    },
                  ),
                  ),
                     )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 60,
                child:  Card(
                  elevation: 10,
                 // margin: const EdgeInsets.all(5),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))
                  ),
                  child: ListTile(
                    leading: const CircleAvatar(
                      radius: 13,
                      backgroundColor: Color(0xff0351EF),
                      child: Icon(Icons.settings),
                    ),
                    title: const Text('Account On & Off Switch'),
                    trailing: const Icon(Icons.arrow_forward),
                    onTap: (){
                      setState(() {
                        
                      });
                    },
                  ),
                  ),
                     )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 60,
                child:  Card(
                  elevation: 10,
                 // margin: const EdgeInsets.all(5),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))
                  ),
                  child: ListTile(
                    leading: const CircleAvatar(
                      radius: 13,
                      backgroundColor: Color(0xff0351EF),
                      child: Icon(Icons.fingerprint),
                    ),
                    title: const Text('Biometrics'),
                    trailing: const Icon(Icons.arrow_forward),
                    onTap: (){
                      setState(() {
                        
                      });
                    },
                  ),
                  ),
                     )
            ],
          ),
          
        ],
      ),
    );
  }
}