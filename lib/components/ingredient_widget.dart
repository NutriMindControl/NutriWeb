import 'package:flutter/material.dart';
import 'package:sberlab/assets/colors.dart';
import 'package:sberlab/entity/ingredient.dart';

class IngredientWidget extends StatelessWidget {
  final ingredient;
  const IngredientWidget({super.key, required this.ingredient});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Icon(
              Icons.circle,
              color: MyColors().orange,
            ),
          ),
          Text(
            ingredient.name,
            style: TextStyle(
              // color: MyColors().darkComponent,
              fontSize: 20,
            ),
          ),
          Spacer(),
          Text(
            ingredient.count.toString(),
            style: TextStyle(
              // color: MyColors().darkComponent,
              fontSize: 20,
            ),
          ),
        ],
      ),
    );
  }
}
