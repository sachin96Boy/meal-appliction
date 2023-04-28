import 'package:flutter/material.dart';

import 'package:meal_app/screens/categoreies_scren.dart';
import 'package:meal_app/screens/favourites_screen.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({super.key});

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('My Meal App'),
          bottom: TabBar(
            indicator: BoxDecoration(
                color: Colors.greenAccent,
                borderRadius: BorderRadius.circular(15.0)),
            tabs: const [
              Tab(
                icon: Icon(Icons.category),
                text: 'Category',
              ),
              Tab(
                icon: Icon(Icons.star),
                text: 'Favourites',
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [CategoriesScreen(), FavouritesScreen()],
        ),
      ),
    );
  }
}
