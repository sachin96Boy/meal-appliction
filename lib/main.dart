import 'package:flutter/material.dart';

import 'package:meal_app/data/dummy_data.dart';
import 'package:meal_app/screens/category_meals_screen.dart';
import 'package:meal_app/screens/filter_screen.dart';
import 'package:meal_app/screens/meal_details_screen.dart';
import 'package:meal_app/screens/tabs_screen.dart';

import 'models/meal.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  Map<String, bool> _filters = {
    'glueten': false,
    'lactose': false,
    'vegan': false,
    'vegetarian': false
  };
  List<Meal> _availableMeals = dummyMeals;
  void _setFilters(Map<String, bool> filterData) {
    // do something
    setState(() {
      _filters = filterData;
      _availableMeals = dummyMeals.where((element) {
        if (_filters['glueten']! && !element.isGlutenFree) {
          return false;
        }
        if (_filters['lactose']! && !element.isLactoseFree) {
          return false;
        }
        if (_filters['vegan']! && !element.isVegan) {
          return false;
        }
        if (_filters['vegetarian']! && !element.isVegetarian) {
          return false;
        }
        return true;
      }).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Meal App',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.teal,
        canvasColor: Colors.blueGrey[200],
        textTheme: const TextTheme(
          titleLarge: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
        ),
        colorScheme: ColorScheme.fromSwatch().copyWith(
          secondary: Colors.green,
        ),
      ),
      routes: {
        CategoryMealsScreen.routeName: (context) =>
            CategoryMealsScreen(availableMeals: _availableMeals),
        MealDetailsScreen.routeName: (context) => const MealDetailsScreen(),
        FilterScreen.routeName: (context) =>
            FilterScreen(filters: _filters, setFilters: _setFilters),
        '/': (context) => const TabsScreen(),
      },
      // this acts as a 404 page standerd in flutter
      onUnknownRoute: (settings) => MaterialPageRoute(
        builder: (context) =>
            CategoryMealsScreen(availableMeals: _availableMeals),
      ),
    );
  }
}
