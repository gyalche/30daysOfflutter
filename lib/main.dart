import 'package:day_1/home_page.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(myApp());
}
class myApp extends StatelessWidget {
  const myApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "day1",
      theme: ThemeData(
        primaryColor: Colors.blueAccent
      ),
      home: HomePage(),
    );
  }
}