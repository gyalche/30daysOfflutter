import 'package:day_1/home_page.dart';
import 'package:day_1/loginPage.dart';
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
        primaryColor: Colors.blue.shade100
      ),
      // home: HomePage(),

      //FOR DARK THEME
      // themeMode: ThemeMode.dark,
      // darkTheme: ThemeData(brightness: Brightness.dark),

      //ROUTES
//giving initial route

      initialRoute: "/home",
      routes: {

        // by default it will open open / if onely / 
        "/":(context)=>LoginPage(),
        "/HomePage":(context)=>HomePage(),
        "/LoginPage": (context)=>LoginPage(),
      },
    );
  }
}