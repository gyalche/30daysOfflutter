import 'package:day_1/home_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      // child: Center(
      //  child: Text("LoginPage", ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          //children takes the list of widgets
          children: [
            Image.asset("assets/unDraw.png", 
            fit: BoxFit.cover,),
            SizedBox(height: 20,),
            Text("Day 4 of the bracnh",
            
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20,),

            TextFormField(
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.email),
                border: OutlineInputBorder(borderRadius:BorderRadius.circular(30)),
                contentPadding: EdgeInsets.all(0),
                
                hintText: "enter username",
              ),
            ),
            SizedBox(height: 30,),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: "password",
                prefixIcon: Icon(Icons.vpn_key),
                contentPadding: EdgeInsets.all(0),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30)
                )
              ),
            ),
             SizedBox(height: 20,),

             Padding(
               padding: const EdgeInsets.all(15.0),
               child: ElevatedButton(
              
               child: Text("login"),
               style: ButtonStyle( ),
               onPressed: (){
                 print("click sucess");
               },
               ),
             ),
             
            //  buttom=Material(
            //    elevation: 5,
            //    borderRadius: BorderRadius.circular(20),
            //    color: Colors.blueAccent,
            //    child: MaterialButton(
            //      Padding:EdgeInsets.all(20),
            //      minWidth: MediaQuery.of(context).size.width,
            //      onPressed: (){
            //        navigator.push()
            //      },
            //    ),
            //  )
            // ActionChip(label: Text("click", style: TextStyle(color: Colors.blue),), onPressed: (){
            //   Navigator.push(context, MaterialPageRoute(Builder:(context)=> HomePage()))
            // },
            
          ],
          
        ),
      ),
      );
    
  }
}
