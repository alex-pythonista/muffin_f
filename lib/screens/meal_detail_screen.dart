import 'package:flutter/material.dart';

class MealsDetailScreen extends StatelessWidget {
  static const routeName = '/meal-detail';
  const MealsDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final mealId =
        ModalRoute.of(context)?.settings.arguments as Map<String, String>;
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text(
          "Meal ID: ${mealId['id']}",
        ),
      ),
    );
  }
}
