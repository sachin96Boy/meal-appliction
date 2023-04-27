import 'package:flutter/material.dart';

import 'package:meal_app/models/meal.dart';
import 'package:meal_app/widgets/meal_item_cust_icon.dart';

class MealItem extends StatelessWidget {
  final String title;
  final String imageUrl;
  final int duration;
  final Complexity complexity;
  final Affordibility affordibility;

  const MealItem(
      {super.key,
      required this.title,
      required this.imageUrl,
      required this.duration,
      required this.complexity,
      required this.affordibility});

  void selectMeal() {}

  String get complexityText {
    switch (complexity) {
      case Complexity.simple:
        return 'simple';
      case Complexity.challenging:
        return 'challenging';
      case Complexity.hard:
        return 'hard';
      default:
        return 'unknown';
    }
  }

  String get affordibilityText {
    switch (affordibility) {
      case Affordibility.affordable:
        return 'affordable';
      case Affordibility.pricey:
        return 'pricey';
      case Affordibility.luxurious:
        return 'luxurious';
      default:
        return 'unknown';
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: selectMeal,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        elevation: 4.0,
        margin: const EdgeInsets.all(10.0),
        child: Column(children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(15.0),
                  topRight: Radius.circular(15.0),
                ),
                child: Image.network(
                  imageUrl,
                  height: 250.0,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                bottom: 20.0,
                right: 10.0,
                child: Container(
                  width: 220,
                  color: Colors.black45,
                  padding: const EdgeInsets.symmetric(
                      vertical: 5.0, horizontal: 20.0),
                  child: Text(
                    title,
                    style: const TextStyle(fontSize: 26.0, color: Colors.white),
                    softWrap: true,
                    overflow: TextOverflow.fade,
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                MealItemCustomIcon(
                    iconData: Icons.schedule, details: '$duration min'),
                MealItemCustomIcon(
                    iconData: Icons.work, details: complexityText),
                MealItemCustomIcon(
                    iconData: Icons.attach_money, details: affordibilityText)
              ],
            ),
          )
        ]),
      ),
    );
  }
}
