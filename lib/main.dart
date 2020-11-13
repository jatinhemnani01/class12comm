import 'package:flutter/material.dart';
import 'Accounts.dart';
import 'Economics.dart';
import 'HomePage.dart';
import 'BST.dart';
import 'English.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Commerce Notes',
      home: HomePage(),
      routes: {
        '/eco': (context) => Economics(),
        '/accounts': (context) => Accounts(),
        '/bst': (context) => BST(),
        '/english': (context) => English(),
      },
    );
  }
}

// E3D9488505409863E9F8AFAD5E3578D9
