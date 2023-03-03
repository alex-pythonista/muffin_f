import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:muffin_f/data.dart';

class MealsDetailScreen extends StatelessWidget {
  static const routeName = '/meal-detail';

  // function to return a widget
  Widget buildSectionTitle(BuildContext context, String text) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Text(
        'Ingredients',
        style: GoogleFonts.robotoCondensed(fontSize: 23),
      ),
    );
  }

  Widget buildContainer(Widget child) {
    return Container(
      height: 200,
      width: 300,
      decoration: BoxDecoration(
        color: Colors.white24,
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.circular(10),
      ),
      margin: const EdgeInsets.all(5),
      padding: const EdgeInsets.all(10),
      // child: Text('data'),
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context)?.settings.arguments as Map<String, String>;
    final mealId = routeArgs['id'];
    final selectedMeal = DUMMY_MEALS.firstWhere(
      (meal) => meal.id == mealId,
    );
    return Scaffold(
      appBar: AppBar(
        title: Text(selectedMeal.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 300,
              width: double.infinity,
              child: Image.network(
                selectedMeal.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            buildSectionTitle(context, 'Ingredients'),
            buildContainer(
              ListView.builder(
                itemBuilder: (context, index) => Card(
                  color: Colors.amberAccent,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 5,
                      horizontal: 10,
                    ),
                    child: Text(selectedMeal.ingridients[index]),
                  ),
                ),
                itemCount: selectedMeal.ingridients.length,
              ),
            ),
            buildSectionTitle(context, 'Steps'),
            buildContainer(
              ListView.builder(
                itemBuilder: (context, index) => Column(
                  children: [
                    ListTile(
                      leading: CircleAvatar(
                        child: Text(
                          '# ${index + 1}',
                        ),
                      ),
                      title: Text(
                        selectedMeal.steps[index],
                      ),
                    ),
                    Divider(
                      color: Colors.grey[900],
                    ),
                  ],
                ),
                itemCount: selectedMeal.steps.length,
              ),
            )
          ],
        ),
      ),
    );
  }
}
