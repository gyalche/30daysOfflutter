import 'package:day_1/cart_page.dart';
import 'package:day_1/form.dart';
import 'package:day_1/home_page.dart';
import 'package:day_1/login_Page.dart';
import 'package:day_1/themes.dart';
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
      
      themeMode: ThemeMode.system,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      // theme: ThemeData(
      //   primaryColor: Colors.blue.shade100,
      //   fontFamily: GoogleFonts.lato().fontFamily,
      //   appBarTheme: AppBarTheme(color: Colors.white,
      //     elevation: 0.0,
      //     iconTheme: IconThemeData(color: Colors.black),
      //     textTheme: Theme.of(context).textTheme,
      //   )
      //   // primaryTextTheme: GoogleFonts.latoTextTheme()
      // ),
      debugShowCheckedModeBanner: false,
      // home: HomePage(),

      //FOR DARK THEME
      // themeMode: ThemeMode.dark,
      // darkTheme: ThemeData(brightness: Brightness.dark),

      //ROUTES
//giving initial route

      initialRoute: MyRoutes.loginRoute,
      routes: {

        // by default it will open open / if onely / 
        "/":(context)=>LoginPage(),
        MyRoutes.homeRoute:(context)=>HomePage(),
        MyRoutes.loginRoute: (context)=>LoginPage(),
        MyRoutes.singUpRoute:(context)=>textForm(),
        MyRoutes.cartRoute:(context)=>CartPage()
      },
    );
  }
}