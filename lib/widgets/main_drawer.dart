import 'package:flutter/material.dart';
import 'package:meal_app/screens/tabs_screen.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({super.key});

  Widget buildListTile(String title, IconData icon, VoidCallback onTapHandler) {
    return ListTile(
      leading: Icon(
        icon,
        size: 26.0,
      ),
      title: Text(
        title,
        style: const TextStyle(fontSize: 24.0, fontWeight: FontWeight.normal),
      ),
      onTap: onTapHandler,
    );
  }

  void onMealsTap(BuildContext context) {
    Navigator.of(context).pushNamed(TabsScreen.routeName);
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 120.0,
            width: double.infinity,
            padding: const EdgeInsets.all(20.0),
            alignment: Alignment.centerLeft,
            child: Text(
              'Cook Book',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0,
                  color: Theme.of(context).primaryColor),
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          const Divider(),
          buildListTile('Meals', Icons.restaurant, () => onMealsTap(context)),
          buildListTile('Filter', Icons.settings, () {}),
        ],
      ),
    );
  }
}
