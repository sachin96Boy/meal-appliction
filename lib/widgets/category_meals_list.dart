import 'package:flutter/material.dart';

import 'package:meal_app/models/meal.dart';
import 'package:meal_app/widgets/meal_item.dart';

class CategoryMealsList extends StatefulWidget {
  final String id;
  final List<Meal> availableMeals;

  const CategoryMealsList(
      {super.key, required this.id, required this.availableMeals});

  @override
  State<CategoryMealsList> createState() => _CategoryMealsListState();
}

class _CategoryMealsListState extends State<CategoryMealsList> {
  late List<Meal> categoryMeals;
  @override
  void initState() {
    categoryMeals = widget.availableMeals
        .where((meal) => meal.categories.contains(widget.id))
        .toList();
    super.initState();
  }

  void _removeItem(String itemId) {
    // removal of food item
    setState(() {
      categoryMeals.removeWhere((element) => element.id == itemId);
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) => MealItem(
        id: categoryMeals[index].id,
        title: categoryMeals[index].title,
        duration: categoryMeals[index].duration,
        imageUrl: categoryMeals[index].imageUrl,
        affordibility: categoryMeals[index].affordibility,
        complexity: categoryMeals[index].complexity,
        removeItem: _removeItem,
      ),
      itemCount: categoryMeals.length,
    );
  }
}
