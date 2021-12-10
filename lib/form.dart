import 'package:day_1/utils/routes.dart';
import 'package:flutter/material.dart';

class textForm extends StatefulWidget {
  const textForm({ Key? key }) : super(key: key);

  @override
  _textFormState createState() => _textFormState();
}

class _textFormState extends State<textForm> {
  //form 
  final _formKey=GlobalKey<FormState>();

  //controller

  final TextEditingController usernameController=new TextEditingController();
  final TextEditingController emailController=new TextEditingController();
  final TextEditingController passwordController=new TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    final username=TextFormField(
      autofocus: false,
      controller: usernameController,
      keyboardType: TextInputType.text,
      onSaved: (value){
        usernameController.text=value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.person),
        contentPadding: EdgeInsets.all(20),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20)
        ),
        hintText: "enter username",
        // fillColor: Colors.blue,
        // filled: true
      ),

    );
    
    final email=TextFormField(
      autofocus: false,
      controller: emailController,
      keyboardType: TextInputType.text,
      onSaved: (value){
        emailController.text=value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.email),
        contentPadding: EdgeInsets.all(20),
        hintText: "email",
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
      ),
    );
    final password=TextFormField(
      autofocus: false,
      controller: passwordController,
      keyboardType: TextInputType.text,
      onSaved: (value){
        passwordController.text=value!;
      },
      textInputAction: TextInputAction.done,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.vpn_key),
        contentPadding: EdgeInsets.all(20),
        hintText: "password",
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))
      ),
    );
    
    final Buttom=Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(20),
      color: Colors.blue,
      child: MaterialButton(
        padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        minWidth: MediaQuery.of(context).size.width,
        onPressed: (){
          Navigator.pushNamed(context, MyRoutes.loginRoute);
        },
        child: Text("SignUp", style: TextStyle(fontSize: 20, color: Colors.white),),
      ),
    );



    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        
        child: SingleChildScrollView(
          child: Container(
            //form
            key: _formKey,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset("assets/tfield.png",
                  fit: BoxFit.contain,
                  height: 200,),
                  // SizedBox(
                  //   height: 200,
                  //   child: Image.asset("/assets/tfield.png",
                  //   fit: BoxFit.contain,
                  //   ),
                    
                  // ),
                  SizedBox(height:30),
                  username,
                   SizedBox(height:30),
                  email,
                   SizedBox(height:30),
                  password,
                   SizedBox(height:30),
                   Buttom,
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}