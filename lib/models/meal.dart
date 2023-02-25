enum Complexity {
  Simple,
  Challenging,
  Hard,
}

enum Affordanility {
  Affordability,
  Pricey,
  Luxurious,
}

class Meal {
  final String id;
  final List<String> categories;
  final String title;
  final String imageUrl;
  final List<String> ingridients;
  final List<String> steps;
  final int duration;
  final Complexity complexity;
  final Affordanility affordanility;
  final bool isGlutenFree;
  final bool isVegan;
  final bool isVegetarian;

  Meal({
    required this.id,
    required this.categories,
    required this.title,
    required this.imageUrl,
    required this.ingridients,
    required this.steps,
    required this.duration,
    required this.complexity,
    required this.affordanility,
    required this.isGlutenFree,
    required this.isVegan,
    required this.isVegetarian,
  });
}
