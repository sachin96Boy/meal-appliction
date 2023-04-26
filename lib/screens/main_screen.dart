import 'package:flutter/material.dart';

import 'package:meal_app/screens/categoreies_scren.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Meal App"),
      ),
      body: const CategoriesScreen(),
    );
  }
}
