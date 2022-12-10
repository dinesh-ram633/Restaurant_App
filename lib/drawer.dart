import 'package:flutter/material.dart';
import 'package:resta_table/home.dart';
import 'package:resta_table/login.dart';

class MainDrawerScreen extends StatefulWidget {
  const MainDrawerScreen({ Key? key }) : super(key: key);

  @override
  State<MainDrawerScreen> createState() => _MainDrawerScreenState();
}

class _MainDrawerScreenState extends State<MainDrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          
          UserAccountsDrawerHeader(
            currentAccountPicture: Image.network("http://cdn.onlinewebfonts.com/svg/img_568656.png"),
          accountName:Text("Name") , accountEmail: Text("e-mail")),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("profile"),
              onTap: (){
              },
            ),
             ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: (){
                             Navigator.push(context, MaterialPageRoute(builder: (context) => Home(),));
              },),
               ListTile(
              leading: Icon(Icons.settings),
              title: Text("Settings"),
              onTap: (){
              },),
               ListTile(
              leading: Icon(Icons.logout),
              title: Text("Logout"),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage(),));
              },),
        ],
      ),
    );
  }
}