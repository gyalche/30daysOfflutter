import 'package:day_1/utils/drawer.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);
  final int days=25;
  final String name="Dawa";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.white,
        // elevation: 0.0,
        // iconTheme: IconThemeData(color: Colors.black;),
        title: Text("catalog app", style: TextStyle(color:Colors.black),),
        // leading: Positioned(
        //   left: 300,
        //   // child: IconButton(onPressed: (){
        //   //   Navigator.of(context).pop();
        //   // }, 
        //   // icon: Icon(Icons.arrow_back, color: Colors.white,)),
        // ),
      ),
      drawer: MyDrawer(),
      body: Center(
        child: Container(
        child: Text("Welcome to $days days of $name youtube class ")
        
        ,),
      ),
      
    );
  }
}