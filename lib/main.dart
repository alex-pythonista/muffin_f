import 'package:flutter/material.dart';

import './categories_screen.dart';

void main() => runApp(MuffinApp());

class MuffinApp extends StatelessWidget {
  // const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Muffin F',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.pink,
        ).copyWith(secondary: Colors.amber),
        canvasColor: const Color.fromRGBO(255, 254, 229, 1),
        fontFamily: 'Consolas',
        textTheme: const TextTheme(
          headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
          bodyText1: TextStyle(fontSize: 20.0, fontFamily: 'Consolas'),
          // ),
        ),
      ),
      home: const CategoriesScreen(),
    );
  }
}
