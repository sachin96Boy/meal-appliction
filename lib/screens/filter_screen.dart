import 'package:flutter/material.dart';

import '../widgets/filter_tiles.dart';
import '../widgets/main_drawer.dart';

class FilterScreen extends StatelessWidget {
  static const routeName = '/filters';

  final Function setFilters;
  final Map<String, bool> filters;

  const FilterScreen({
    super.key,
    required this.setFilters,
    required this.filters,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Filtered Section"),
        actions: [
          IconButton(
            icon: const Icon(Icons.save),
            onPressed: () {
              setFilters(filters);
            },
          )
        ],
      ),
      drawer: const MainDrawer(),
      body: Center(
        child: FilterTiles(filters: filters),
      ),
    );
  }
}
