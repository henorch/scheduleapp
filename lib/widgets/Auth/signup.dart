import 'package:cre8/components/textfield.dart';
import 'package:flutter/material.dart';


class Signup extends StatefulWidget {
 Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
 

  
}

class _SignupState extends State<Signup> {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Register", style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),),
          SizedBox(height: 20,),
          InputField(text: "username", controller: usernameController, isSecured: false),
        ],
      ),
    );
  }
}