import 'package:flutter/material.dart';
import 'package:meal_app/widgets/category_meals_list.dart';

class CategoryMealsScreen extends StatefulWidget {
  static const routeName = '/category-meal';

  const CategoryMealsScreen({
    super.key,
  });

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
      body: CategoryMealsList(id: categoryId as String),
    );
  }
}
