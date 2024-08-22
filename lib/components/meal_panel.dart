import 'package:flutter/material.dart';
import 'package:sberlab/assets/colors.dart';
import 'package:sberlab/components/ingredient_widget.dart';
import 'package:sberlab/entity/daily_menu.dart';
import 'package:sberlab/entity/food_value.dart';
import 'package:sberlab/entity/ingredient.dart';
import 'package:sberlab/entity/product.dart';
import 'package:sberlab/entity/recipe.dart';

import 'block.dart';
import 'food_value_widget.dart';

class MealPanel extends StatelessWidget {
  final Meal meal;
  final MealType type;

  MealPanel({
    super.key,
    required this.meal,
    required this.type,
  });

  String _title() {
    switch (type) {
      case MealType.breakfast:
        return 'Завтрак';
      case MealType.launch:
        return 'Обед';
      case MealType.dinner:
        return 'Ужин';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Block(
        width: MediaQuery.of(context).size.width * 0.55,
        // height: MediaQuery.of(context).size.height * 0.8,
        padding: MediaQuery.of(context).size.width * 0.01,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 30),
          child: Column(
            children: [
              Row(
                children: [
                  Text(_title(),
                      style: TextStyle(
                          color: MyColors().darkComponent, fontSize: 30)),
                  Spacer(),
                  Text('8:00',
                      style: TextStyle(
                        color: MyColors().darkComponent,
                        fontSize: 30,
                        decoration: TextDecoration.underline,
                      )),
                ],
              ),
              ...meal.recipes.map((recipe) => _RecipePanel(recipe: recipe)),
              ...meal.products.map((product) => _ProductPanel(product: product)),
              if (meal.products.length > 0) Divider(),
              Row(
                children: [
                  FoodValueWidget(
                    value: 'Калории',
                    count: '${meal.kilocalories} ккл',
                  ),
                  FoodValueWidget(
                    value: 'Жиры',
                    count: '${meal.fats} г',
                  ),
                  FoodValueWidget(
                    value: 'Углеводы',
                    count: '${meal.carbohydrates} г',
                  ),
                  FoodValueWidget(
                    value: 'Белки',
                    count: '${meal.proteins} г',
                  ),
                ],
              )
            ],
          ),
        ));
  }
}

class _RecipePanel extends StatelessWidget {
  final Recipe recipe;

  const _RecipePanel({
    super.key,
    required this.recipe,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                  color: MyColors().lightComponent,
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.coffee,
                  size: 30,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      recipe.name,
                      style: TextStyle(
                        // color: MyColors().darkComponent,
                        fontSize: 30,
                      ),
                    ),
                    Text(
                      'Время приготовления: ${recipe.prepTimeMins} минут',
                      style: TextStyle(
                        // color: MyColors().darkComponent,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: Container(
              child: Column(
                children: [
                  ...recipe.ingredients.map(
                    (ingredient) => Column(
                      children: [
                        IngredientWidget(ingredient: ingredient),
                        const Divider(),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _ProductPanel extends StatelessWidget {
  final Product product;

  const _ProductPanel({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Divider(),
        Padding(
          padding:
          const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
          child: Row(
            children: [
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    color: MyColors().lightComponent,
                    borderRadius: BorderRadius.circular(10)),
                child: Icon(Icons.fastfood_rounded),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  product.name,
                  style: TextStyle(fontSize: 25),
                ),
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  '${product.serving} г',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ],
          ),
        ),
        // Divider(),

      ],
    );
  }
}
