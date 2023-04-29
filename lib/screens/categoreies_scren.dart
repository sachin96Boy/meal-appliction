import 'package:flutter/material.dart';

import 'package:meal_app/data/dummy_data.dart';
import 'package:meal_app/widgets/category_item.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      padding: const EdgeInsets.all(10.0),
      crossAxisCount: 2,
      crossAxisSpacing: 4.0,
      mainAxisSpacing: 8.0,
      // gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
      //   maxCrossAxisExtent: double.infinity,
      // ),
      children: List.generate(
        dummyCategories.length,
        (index) => CategoryItem(
          // key: LocalKey(index),
          id: dummyCategories[index].id,
          color: dummyCategories[index].color,
          title: dummyCategories[index].title,
        ),
      ),
    );
  }
}
