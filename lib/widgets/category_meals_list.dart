import 'package:flutter/material.dart';
import 'package:meal_app/data/dummy_data.dart';

import 'package:meal_app/widgets/meal_item.dart';

class CategoryMealsList extends StatelessWidget {
  final String id;
  const CategoryMealsList({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    final categoryMeals =
        dummyMeals.where((meal) => meal.categories.contains(id)).toList();
    return ListView.builder(
      itemBuilder: (context, index) => MealItem(
        id: categoryMeals[index].id,
        title: categoryMeals[index].title,
        duration: categoryMeals[index].duration,
        imageUrl: categoryMeals[index].imageUrl,
        affordibility: categoryMeals[index].affordibility,
        complexity: categoryMeals[index].complexity,
      ),
      itemCount: categoryMeals.length,
    );
  }
}
