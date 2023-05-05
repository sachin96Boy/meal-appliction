import 'package:flutter/material.dart';

class FilterTiles extends StatefulWidget {
  const FilterTiles({super.key});

  @override
  State<FilterTiles> createState() => _FilterTilesState();
}

class _FilterTilesState extends State<FilterTiles> {
  var _glutenFree = false;
  var _vegetarian = false;
  var _vegan = false;
  var _lactoseFree = false;

  Widget _buildSwithListTile(
    String title,
    String subTitle,
    bool value,
    void Function(bool) onChangedFuncion,
  ) {
    return SwitchListTile(
      title: Text(title),
      value: value,
      subtitle: Text(subTitle),
      onChanged: onChangedFuncion,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(20.0),
          child: Text(
            'Adjust your Meal Selection',
            style: Theme.of(context).textTheme.headlineLarge,
          ),
        ),
        Expanded(
            child: ListView(
          children: [
            _buildSwithListTile(
                'Vegetarian', 'only includes Vegetarian meals', _vegetarian,
                (value) {
              setState(
                () {
                  _vegetarian = value;
                },
              );
            }),
            _buildSwithListTile('Vegan', 'only includes Vegan meals', _vegan,
                (value) {
              setState(
                () {
                  _vegan = value;
                },
              );
            }),
            _buildSwithListTile('Lactose-Free',
                'only includes Lactose free meals', _lactoseFree, (value) {
              setState(
                () {
                  _lactoseFree = value;
                },
              );
            }),
            _buildSwithListTile(
                'Glueten-Free', 'only includes Glueten free meals', _glutenFree,
                (value) {
              setState(
                () {
                  _glutenFree = value;
                },
              );
            }),
          ],
        ))
      ],
    );
  }
}
