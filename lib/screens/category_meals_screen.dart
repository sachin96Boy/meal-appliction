import 'package:flutter/material.dart';

import '../models/meal.dart';
import '../widgets/category_meals_list.dart';

class CategoryMealsScreen extends StatefulWidget {
  static const routeName = '/category-meal';

  final List<Meal> availableMeals;

  const CategoryMealsScreen({super.key, required this.availableMeals});

  @override
  State<CategoryMealsScreen> createState() => _CategoryMealsScreenState();
}

class _CategoryMealsScreenState extends State<CategoryMealsScreen> {
  String? categoryTitle;
  String? categoryId;
  @override
  void didChangeDependencies() {
    final routeArgs =
        ModalRoute.of(context)?.settings.arguments as Map<String, String>;
    categoryTitle = routeArgs['title'];
    categoryId = routeArgs['id'];
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle!),
      ),
      body: CategoryMealsList(
        id: categoryId as String,
        availableMeals: widget.availableMeals,
      ),
    );
  }
}
