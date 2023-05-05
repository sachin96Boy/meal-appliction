import 'package:flutter/material.dart';

import 'package:meal_app/screens/categoreies_scren.dart';
import 'package:meal_app/screens/favourites_screen.dart';
import 'package:meal_app/widgets/main_drawer.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({super.key});



  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  int _selectedPageIndex = 0;

  void onPageSelected(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  final List<Widget> _pageOptions = const [
    CategoriesScreen(),
    FavouritesScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Meal App'),
      ),
      drawer: const MainDrawer(),
      body: _pageOptions[_selectedPageIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Theme.of(context).primaryColor,
        selectedItemColor: Colors.amber,
        unselectedItemColor: Colors.white,
        type: BottomNavigationBarType.shifting,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: 'Category',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            label: 'Favourite',
          ),
        ],
        currentIndex: _selectedPageIndex,
        onTap: onPageSelected,
      ),
    );
  }
}
