import 'package:flutter/material.dart';
import 'package:food_drop/components/my_button.dart';
import 'package:food_drop/components/my_text_field.dart';

class RegisterPage extends StatefulWidget {
  void Function()? onTap;
  RegisterPage({super.key, required this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController _emailController = TextEditingController();

  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Column(
        children: [
          // logo
          Icon(
            Icons.lock_open_rounded,
            size: 100,
            color: Theme.of(context).colorScheme.inversePrimary,
            ),
          
          SizedBox(height: 25,),

          // message, app slogan
          Text(
            "Lets create an account for you",
            style: TextStyle(
              fontSize: 16,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
            ),

          SizedBox(height: 25,),

          // email textfield
          MyTextField(controller: _emailController, hintText: "Email", obscureText: false),


          SizedBox(height: 10,),
          // password textfiled
          MyTextField(controller: _passwordController, hintText: "Password", obscureText: true) ,

          // confirm password
          MyTextField(controller: _confirmPasswordController, hintText: "Confirm Password", obscureText: true) ,


          // sign in button
          MyButton(text: "Sign Up", onTap: (){}),

          // already a member? register
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "already a member",
                style: TextStyle(
                  color: Theme.of(context).colorScheme.inversePrimary),
                ),
              SizedBox(width: 4,),
              GestureDetector(
                onTap: widget.onTap,
                child: Text(
                  'Login now',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary,
                    fontWeight: FontWeight.bold,
                    
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}