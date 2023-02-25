import 'package:flutter/material.dart';

import './models/category.dart';

import './models/meal.dart';

List<Meal> DUMMY_MEALS = [
  Meal(
    id: 'm1',
    categories: ['c1'],
    title: 'Spaghetti with Tomato Sauce',
    imageUrl:
        'https://www.giallozafferano.com/images/228-22832/spaghetti-with-tomato-sauce_1200x800.jpg',
    ingridients: ['Spaghetti', 'Tomatoes', 'Salt', 'Olive Oil'],
    steps: [
      'Boil water in a large pot and add salt.',
      'Add spaghetti and cook for 8 to 10 minutes.',
      'Drain the water and set aside the cooked spaghetti.',
      'Heat olive oil in a pan and add tomatoes.',
      'Add salt and cook for 5 minutes.',
      'Add spaghetti to the pan and toss well.',
      'Serve hot.'
    ],
    duration: 20,
    complexity: Complexity.Simple,
    affordanility: Affordanility.Affordability,
    isGlutenFree: false,
    isVegan: true,
    isVegetarian: true,
  ),
  Meal(
    id: 'm2',
    categories: ['c5', 'c8'],
    title: 'Teriyaki Chicken Stir-Fry',
    imageUrl:
        'https://img.taste.com.au/OSlNc3JS/taste/2016/11/teriyaki-chicken-stir-fry-16014-1.jpeg',
    ingridients: [
      'Chicken Breast',
      'Broccoli',
      'Soy Sauce',
      'Teriyaki Sauce',
      'Garlic',
      'Ginger',
      'Cornstarch',
      'Sesame Oil',
    ],
    steps: [
      'Cut chicken breast into bite-sized pieces.',
      'Mix soy sauce, teriyaki sauce, minced garlic, grated ginger, and cornstarch in a bowl.',
      'Heat sesame oil in a pan and add chicken.',
      'Cook until brown and remove from pan.',
      'Add broccoli to the same pan and cook until tender.',
      'Add the sauce mixture to the pan and cook until thickened.',
      'Add chicken back to the pan and toss well.',
      'Serve hot.'
    ],
    duration: 30,
    complexity: Complexity.Challenging,
    affordanility: Affordanility.Pricey,
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
  ),
  Meal(
    id: 'm3',
    categories: ['c2', 'c10'],
    title: 'Butter Chicken',
    imageUrl:
        'https://images.immediate.co.uk/production/volatile/sites/30/2021/02/butter-chicken-ac2ff98.jpg',
    ingridients: [
      'Chicken',
      'Tomatoes',
      'Onion',
      'Garlic',
      'Ginger',
      'Butter',
      'Cream',
      'Spices',
    ],
    steps: [
      'Marinate chicken with spices and set aside for 30 minutes.',
      'Heat butter in a pan and add onions, garlic, and ginger.',
      'Cook until onions are translucent.',
      'Add chicken to the pan and cook until brown.',
      'Add tomatoes and cook until softened.',
      'Add cream and cook for 5 minutes.',
      'Serve hot with rice or naan.'
    ],
    duration: 45,
    complexity: Complexity.Hard,
    affordanility: Affordanility.Luxurious,
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
  ),
  Meal(
    id: 'm4',
    categories: ['c3', 'c4'],
    title: 'Classic Cheeseburger',
    imageUrl:
        'https://leitesculinaria.com/wp-content/uploads/2013/01/classic-cheesburger-fp.jpg',
    ingridients: [
      'Ground Beef',
      'Buns',
      'Cheese',
      'Tomato',
      'Lettuce',
      'Onion',
      'Ketchup',
      'Mustard',
      'Mayonnaise'
    ],
    steps: [
      'Form ground beef into patties and season with salt and pepper.',
      'Grill or cook the patties on a pan until fully cooked.',
      'Toast buns and add cheese to the top of the cooked patties.',
      'Add ketchup, mustard, and mayonnaise to the bottom bun.',
      'Add lettuce, tomato, and onion to the top of the cheese.',
      'Place the cooked patty on top of the vegetables.',
      'Serve hot.'
    ],
    duration: 25,
    complexity: Complexity.Simple,
    affordanility: Affordanility.Affordability,
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
  ),
  Meal(
    id: 'm5',
    categories: ['c2', 'c4'],
    title: 'Margherita Pizza',
    imageUrl:
        'https://www.foodandwine.com/thmb/3kzG4PWOAgZIIfZwMBLKqoTkaGQ=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/margherita-pizza-with-argula-and-prosciutto-FT-RECIPE0721-04368ec288a84d2e997573aca0001d98.jpg',
    ingridients: [
      'Pizza Dough',
      'Tomato Sauce',
      'Mozzarella Cheese',
      'Basil',
      'Olive Oil'
    ],
    steps: [
      'Preheat oven to 450°F (230°C).',
      'Roll out pizza dough and place on a baking sheet or pizza stone.',
      'Spread tomato sauce on top of the pizza dough.',
      'Add mozzarella cheese to the top of the tomato sauce.',
      'Drizzle olive oil over the cheese.',
      'Bake for 12-15 minutes or until the crust is golden brown.',
      'Remove from the oven and top with fresh basil.',
      'Serve hot.'
    ],
    duration: 30,
    complexity: Complexity.Challenging,
    affordanility: Affordanility.Affordability,
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: true,
  ),
  Meal(
    id: 'm7',
    categories: ['c2', 'c4'],
    title: 'Beef Tacos',
    imageUrl:
        'https://img.taste.com.au/Z2m_6zIt/taste/2016/11/beef-tacos-98153-1.jpeg',
    ingridients: [
      'Ground Beef',
      'Taco Shells',
      'Lettuce',
      'Tomato',
      'Cheese',
      'Sour Cream',
      'Taco Seasoning',
      'Onion',
      'Salsa'
    ],
    steps: [
      'Cook ground beef in a pan over medium heat until browned.',
      'Add taco seasoning to the beef and stir to combine.',
      'Warm up taco shells according to package instructions.',
      'Chop lettuce, tomato, and onion into small pieces.',
      'Grate cheese.',
      'Assemble the tacos by adding beef to the bottom of the taco shell.',
      'Add lettuce, tomato, and onion on top of the beef.',
      'Sprinkle cheese on top of the vegetables.',
      'Add a dollop of sour cream and salsa on top of the cheese.',
      'Serve hot.'
    ],
    duration: 20,
    complexity: Complexity.Simple,
    affordanility: Affordanility.Affordability,
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
  ),
  Meal(
    id: 'm8',
    categories: ['c5', 'c7'],
    title: 'Green Curry Chicken',
    imageUrl:
        'https://www.thespruceeats.com/thmb/lRkFd-tG5HDOJQtwQHXM__6GjDw=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/thai-green-curry-recipe-p3-3217442-hero-1-a3fcdfbc551849718c7750fa63ec8c6a.jpg',
    ingridients: [
      'Chicken Breast',
      'Green Curry Paste',
      'Coconut Milk',
      'Bell Pepper',
      'Onion',
      'Fish Sauce',
      'Brown Sugar',
      'Basil'
    ],
    steps: [
      'Heat a tablespoon of oil in a pan over medium heat.',
      'Add green curry paste and stir for 1-2 minutes until fragrant.',
      'Add chicken breast to the pan and cook until browned.',
      'Add coconut milk, fish sauce, and brown sugar to the pan and stir to combine.',
      'Add sliced bell pepper and onion to the pan.',
      'Simmer for 10-15 minutes until the chicken is cooked through and the vegetables are tender.',
      'Garnish with fresh basil.',
      'Serve hot with rice.'
    ],
    duration: 35,
    complexity: Complexity.Challenging,
    affordanility: Affordanility.Pricey,
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: false,
  ),
];

const List<Category> dummyCategories = [
  Category(
    id: 'c1',
    title: 'Italiano',
    color: Colors.green,
  ),
  Category(
    id: 'c2',
    title: 'Indian Cuisine',
    color: Colors.orangeAccent,
  ),
  Category(
    id: 'c3',
    title: 'French Breakfast',
    color: Colors.blueAccent,
  ),
  Category(
    id: 'c4',
    title: 'German',
    color: Colors.black12,
  ),
  Category(
    id: 'c5',
    title: 'Chinese',
    color: Colors.red,
  ),
  Category(
    id: 'c6',
    title: 'Japanese',
    color: Colors.green,
  ),
  Category(
    id: 'c7',
    title: 'Korean',
    color: Colors.orangeAccent,
  ),
  Category(
    id: 'c8',
    title: 'Turkish',
    color: Colors.blueAccent,
  ),
  Category(
    id: 'c9',
    title: 'Fast Food',
    color: Colors.black12,
  ),
  Category(
    id: 'c10',
    title: 'Bengali Special',
    color: Colors.red,
  ),
];
