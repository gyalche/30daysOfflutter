import 'package:day_1/home_page.dart';
import 'package:day_1/loginPage.dart';
import 'package:day_1/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
        primaryColor: Colors.blue.shade100,
        fontFamily: GoogleFonts.lato().fontFamily,
        // primaryTextTheme: GoogleFonts.latoTextTheme()
      ),
      debugShowCheckedModeBanner: false,
      // home: HomePage(),

      //FOR DARK THEME
      // themeMode: ThemeMode.dark,
      // darkTheme: ThemeData(brightness: Brightness.dark),

      //ROUTES
//giving initial route

      initialRoute: "/",
      routes: {

        // by default it will open open / if onely / 
        "/":(context)=>LoginPage(),
        MyRoutes.homeRoute:(context)=>HomePage(),
        MyRoutes.loginRoute: (context)=>LoginPage(),
      },
    );
  }
}