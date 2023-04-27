import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MealDetailsScreen extends StatelessWidget {
  static const routeName = '/meal-details';
  const MealDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final mealId =
        ModalRoute.of(context)?.settings.arguments as Map<String, String>;

    return Scaffold(
      appBar: AppBar(
        title: Text(mealId['id'] as String),
      ),
      body: Center(
        child: Text('The meal item - ${mealId['id']}'),
      ),
    );
  }
}
