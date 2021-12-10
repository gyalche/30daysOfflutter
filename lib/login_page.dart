// ignore_for_file: unused_import

import 'package:day_1/home_page.dart';
import 'package:day_1/utils/routes.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({ Key? key }) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name="";
  bool changeButton=false;


  final _formKey=GlobalKey<FormState>();

  moveToHome(BuildContext context) async{
    if(_formKey.currentState!.validate()){
         setState((){
       changeButton=true;
      });
      await Future.delayed(Duration(seconds: 1));
      Navigator.pushNamed(context, MyRoutes.homeRoute);
        setState(() {
        changeButton=false;
    });
    }
    
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      // child: Center(
      //  child: Text("LoginPage", ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              //children takes the list of widgets
              children: [
                Image.asset("assets/unDraw.png", 
                fit: BoxFit.cover,
                height: 200,),
                SizedBox(height: 20,),
                  Text("Welcome ",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20,),
                  
                TextFormField(
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email),
                    border: OutlineInputBorder(borderRadius:BorderRadius.circular(30)),
                    contentPadding: EdgeInsets.all(0),
                    
                    hintText: "enter username",
                    labelText: "username",
                  ),
                  validator: (value){
                    if(value!.isEmpty){
                      return "username cannot be empty";
                    }
                    return null;
                  },

                  // onChanged: (value){
                  //   name=value;
                  //   // now it changes your ui
                  //   setState(() {
                      
                  //   });
                  // },
          
                ),
                SizedBox(height: 30,),
                TextFormField(
                  obscureText: true,
                  
                  decoration: InputDecoration(
                    hintText: "password",
                    labelText: "password",
                    prefixIcon: Icon(Icons.vpn_key),
                    contentPadding: EdgeInsets.all(0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30)
                    ),
                    
                  ),
                  validator: (value){
                    if(value!.isEmpty){
                      return "password cannot be empty";
                    }
                    else if(value.length<6){
                      return "password should not contain less than 6";
                    }
                    return null;
                  },
                  
                ),
                 SizedBox(height: 40,),
                  
                 
                  //  ElevatedButton(
                  //  child: Text("login"),
                  //  style: TextButton.styleFrom(minimumSize: Size(150, 40)),
                  //  onPressed: (){
                     
                  //   //  Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
                  //   // OR YOU CAN USE
                  //   Navigator.pushNamed(context, MyRoutes.singUpRoute);
                  //  },
                  //  ),
          
                Material(
                  color: Colors.deepPurple,
                  borderRadius: BorderRadius.circular(changeButton?80: 8),
                  child: InkWell(
                    splashColor: Colors.white,
                    onTap: () =>moveToHome(context),
                    child: AnimatedContainer(
                      duration: Duration(seconds: 1),
                      height: 50,
                      width: changeButton? 80:120,
                      // color: Colors.deepPurple,
                      alignment: Alignment.center,
                      child: changeButton?Icon(Icons.done, color: Colors.white,): 
                      const Text("Login",
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color:Colors.white),
                  
                      ),
          
                      //IF YOU WANT A RIPPLE EFFECT YOU CANT USE DECORATION INSIDE ANIMATEDCONTAINER
                      // INSTED USE INSIDE MATERIAL WHICH YOU USED TO WRAP A INKWELL 
                      
                      // decoration: BoxDecoration(
                      //   color: Colors.deepPurple,
                      //   borderRadius: BorderRadius.circular(changeButton?80: 8),
                
                      //   // OR YOU CAN USE
                      //   // shape: changeButton?BoxShape.circle:BoxShape.rectangle
                        
                      // ),
                    ),
                  ),
                ),
                 
                // RichText(text: TextSpan(
                //   children: [
                //     TextSpan(text: "do you have an ",
                //     style: TextStyle(fontSize: 15, color: Colors.blue)
                //     ),
                //     TextSpan(text: " Account",
                //     style: TextStyle(fontSize: 25, color: Colors.purple)
                //     ),
                //     WidgetSpan(child: Icon(Icons.arrow_forward_rounded, color: Colors.blueAccent,)),
                //     TextSpan(text: "\nclick on to  ",
                //     style: TextStyle(fontSize: 15, color: Colors.blue)
                //     ),
                //     TextSpan(
                //       text: "Signup", style: TextStyle(fontSize: 20, color: Colors.red,
                      
                //       )
                      
                //     ),
                    
                //   ]
                // ),)
                  
                 
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
        ),
      ),
      );
    
  }
}
