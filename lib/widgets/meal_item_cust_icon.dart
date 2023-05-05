import 'package:flutter/material.dart';

class MealItemCustomIcon extends StatelessWidget {
  final IconData iconData;
  final String details;
  const MealItemCustomIcon(
      {super.key, required this.iconData, required this.details});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(iconData),
        const SizedBox(
          width: 6.0,
        ),
        Text(details),
      ],
    );
  }
}
