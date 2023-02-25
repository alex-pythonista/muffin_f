import 'package:flutter/material.dart';
import 'package:muffin_f/screens/meal_detail_screen.dart';
import 'screens/category_meals_screen.dart';

import 'screens/categories_screen.dart';

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
        fontFamily: 'ABeeZee',
        textTheme: const TextTheme(
          headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
          bodyText1: TextStyle(fontSize: 20.0, fontFamily: 'ABeeZee'),
          // ),
        ),
      ),
      // home: const CategoriesScreen(),
      routes: {
        '/': (ctx) => CategoriesScreen(),
        CategoryMealsScreen.routeName: (ctx) => CategoryMealsScreen(),
        MealsDetailScreen.routeName: (context) => MealsDetailScreen(),
      },
    );
  }
}
