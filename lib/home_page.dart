import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);
  final int days=25;
  final String name="Dawa";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("catalog app"),
      ),
      drawer: Drawer(),
      body: Center(
        child: Container(
        child: Text("Welcome to $days days of $name youtube class ")
        
        ,),
      ),
      
    );
  }
}