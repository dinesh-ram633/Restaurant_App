import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:resta_table/home.dart';
import 'package:resta_table/reservation.dart';

class TablePage extends StatefulWidget {
  const TablePage({super.key});

  @override
  State<TablePage> createState() => _TablePageState();
}

class _TablePageState extends State<TablePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(title: Text("Select Table",style:TextStyle(color: Colors.blue,fontSize: 22,fontWeight: FontWeight.bold)),
      centerTitle: true,
      backgroundColor: Colors.black,
      
      ),
      
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Text("Couple's Table",style:TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold)),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child:GestureDetector (
                onTap: (() {
                  Navigator.push(context,MaterialPageRoute(builder: (context) => ReservationPage(),));
                }),
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage("assets/couple.jpg"),
                    fit: BoxFit.cover),
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10)
                    
                  ),
                  
                  height: 250,
                  width: 380,
                ),
              ),
            ),
             Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Text("Family Table",style:TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold)),
            ),
            Padding(
             padding: const EdgeInsets.all(10),
              child:GestureDetector (
                onTap: (() {
                  Navigator.push(context,MaterialPageRoute(builder: (context) => ReservationPage(),));
                }),
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage("assets/family.jpg"),
                    fit: BoxFit.cover),
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10)
                    
                  ),
                  
                  height: 250,
                  width: 380,
                ),
              ),
            ),
             Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Text("Buffet Table",style:TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold)),
          ),
          Padding(
           padding: const EdgeInsets.all(10),
            child:GestureDetector (
              onTap: (() {
                Navigator.push(context,MaterialPageRoute(builder: (context) => ReservationPage(),));
              }),
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage("assets/buffet.jpg"),
                  fit: BoxFit.cover),
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(10)
                  
                ),
                
                height: 250,
                width: 380,
              ),
            ),
          ),
           Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Text("Silver Service Table",style:TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold)),
          ),
          Padding(
           padding: const EdgeInsets.all(10),
            child:GestureDetector (
              onTap: (() {
                Navigator.push(context,MaterialPageRoute(builder: (context) => ReservationPage(),));
              }),
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage("assets/silver.jpg"),
                  fit: BoxFit.cover),
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(10)
                  
                ),
                
                height: 250,
                width: 380,
              ),
            ),
          )
            
          ],
        ),
      ),

    );
  }
}