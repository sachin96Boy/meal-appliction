import 'package:flutter/material.dart';
import 'package:meal_app/widgets/filter_tiles.dart';
import 'package:meal_app/widgets/main_drawer.dart';

class FilterScreen extends StatelessWidget {
  static const routeName = '/filters';
  const FilterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Fitered Section"),
      ),
      drawer: const MainDrawer(),
      body: const Center(
        child: FilterTiles(),
      ),
    );
  }
}
