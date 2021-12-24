import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme{
 static ThemeData lightTheme (BuildContext context)=>

 ThemeData(
        primaryColor: Colors.blue.shade100,
        fontFamily: GoogleFonts.poppins().fontFamily,
        appBarTheme: AppBarTheme(
          color: Colors.white,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.black),
          textTheme: Theme.of(context).textTheme,
        )
        // primaryTextTheme: GoogleFonts.latoTextTheme()
);

  static Color creamColor=Color(0xfff5f5f5);
static Color darkBluishColor=Color(0xff403b58);
}


//FOR DARK  THEME
class DarkTheme{
 static ThemeData darkTheme(BuildContext context)=>

 ThemeData(
   brightness: Brightness.dark
        // primaryColor: Colors.blue.shade100,
        // fontFamily: GoogleFonts.lato().fontFamily,
        // appBarTheme: AppBarTheme(color: Colors.white,
        //   elevation: 0.0,
        //   iconTheme: IconThemeData(color: Colors.black),
        //   textTheme: Theme.of(context).textTheme,
        );
        // primaryTextTheme: GoogleFonts.latoTextTheme()
// );

//COLOR

  
}