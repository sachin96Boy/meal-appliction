import 'package:flutter/material.dart';
import 'package:meal_app/widgets/category_meals_list.dart';

class CategoryMealsScreen extends StatelessWidget {
  static const routeName = '/category-meal';
  // final String id;
  // final String title;

  const CategoryMealsScreen({
    super.key,
    // required this.id,
    // required this.title,
  });

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context)?.settings.arguments as Map<String, String>;
    final categoryTitle = routeArgs['title'];
    final categoryId = routeArgs['id'];
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle!),
      ),
      body: CategoryMealsList(id: categoryId as String),
    );
  }
}
