import 'package:cre8/components/button.dart';
import 'package:cre8/components/textfield.dart';
import 'package:cre8/utils/pageslider.dart';
import 'package:cre8/widgets/Auth/signup.dart';
import 'package:flutter/material.dart';


class Signin extends StatefulWidget {
 const Signin({super.key});

  @override
  State<Signin> createState() => _SigninState();
 

  
}

class _SigninState extends State<Signin> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(80.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Login", style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),),
             SizedBox(height: 20,),
            InputField(text: "email", controller: emailController, isSecured: false),
             SizedBox(height: 20,),
            InputField(text: "password", controller: passwordController, isSecured: false),
             SizedBox(height: 20,),
             Button(text: "Submit", 
             color: Colors.blue,
                onPressed: () {
                  
                },),
                  SizedBox(height: 20,),
              Text("don't have an account?"),
               SizedBox(height: 10,),
             Button(text: "Create an account", 
                color: Colors.green,
                onPressed: () {
                  Navigator.pushNamed(context, '/');
                },),
                 SizedBox(height: 20,),
              Text("or"),
               SizedBox(height: 10,),
                Button(text: "Sign in with Google", 
                color: Colors.red,
                onPressed: () {
                  Navigator.of(context).push(
              SlidePageRoute(page: Signup()),);
                },),
          ],
        ),
      ),
    );
  }
}