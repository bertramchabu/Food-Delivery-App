import 'package:flutter/material.dart';

void main() {
  runApp(FoodDrop());
}

class FoodDrop extends StatelessWidget {
  const FoodDrop({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage() ,
    );
  }
}