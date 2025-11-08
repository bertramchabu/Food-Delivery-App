import 'package:flutter/material.dart';
import 'package:food_drop/auth/login_or%20_register.dart';
import 'package:food_drop/pages/login_page.dart';
import 'package:food_drop/themes/theme_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child:  FoodDrop(),
    ),
  );
}
class FoodDrop extends StatelessWidget {
  const FoodDrop({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginOrRegister(),
      theme: Provider.of<ThemeProvider>(context).themeData,
    );
  }
}

