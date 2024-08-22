import 'package:flutter/material.dart';
import 'package:sberlab/assets/colors.dart';
import 'package:sberlab/components/ingredient_widget.dart';
import 'package:sberlab/entity/daily_menu.dart';
import 'package:sberlab/entity/food_value.dart';
import 'package:sberlab/entity/ingredient.dart';
import 'package:sberlab/entity/product.dart';
import 'package:sberlab/entity/recipe.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

import 'block.dart';
import 'food_value_widget.dart';

class MealPanel extends StatelessWidget {
  final Meal meal;
  final MealType type;
  final Function(MealType) updateMeal;
  final Function(int, MealType) updateRecipe;
  final Function(int, MealType) updateProduct;

  MealPanel({
    super.key,
    required this.meal,
    required this.type,
    required this.updateMeal,
    required this.updateRecipe,
    required this.updateProduct,
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
                Text(
                  _title(),
                  style: TextStyle(
                    color: MyColors().darkComponent,
                    fontSize: 30,
                  ),
                ),
                Spacer(),
                IconButton(
                  onPressed: () {
                    updateMeal(type);
                  },
                  icon: Icon(
                    Icons.refresh,
                    size: 30,
                    color: MyColors().darkComponent,
                  ),
                ),
              ],
            ),
            ...meal.recipes.map(
              (recipe) => _RecipePanel(
                recipe: recipe,
                type: type,
                updateRecipe: updateRecipe,
              ),
            ),
            ...meal.products.map(
              (product) => _ProductPanel(
                product: product,
                type: type,
                updateProduct: updateProduct,
              ),
            ),
            if (meal.products.length > 0) Divider(),
            Row(
              children: [
                FoodValueWidget(
                  value: 'Калории',
                  count: '${meal.calories} ккл',
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
      ),
    );
  }
}

class _RecipePanel extends StatelessWidget {
  final Recipe recipe;
  final MealType type;
  final Function(int, MealType) updateRecipe;

  _RecipePanel({
    super.key,
    required this.recipe,
    required this.type,
    required this.updateRecipe,
  });

  IconData _icon() {
    switch (type) {
      case MealType.breakfast:
        return Icons.coffee;
      case MealType.launch:
        return Icons.fastfood_rounded;
      case MealType.dinner:
        return Icons.emoji_food_beverage_rounded;
    }
  }

  int i = 0;

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
                  _icon(),
                  size: 30,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: 500,
                          child: InkWell(
                            child: Text(
                              recipe.name,
                              style: TextStyle(
                                // color: Colors.blue,
                                decoration: TextDecoration.underline,
                                fontSize: 30,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                            onTap: () => launchUrlString('https://talkychef.ru/recipe/${recipe.id}'),
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            updateRecipe(recipe.id, type);
                          },
                          icon: Icon(
                            Icons.refresh,
                            size: 25,
                            color: MyColors().darkComponent,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      'Время приготовления: ${recipe.cookTimeMins} минут',
                      style: TextStyle(
                        // color: MyColors().darkComponent,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: Container(
              child: Column(
                children: [
                  ...recipe.ingredients.map(
                    (ingredient) {
                      return Column(
                          children: [
                            IngredientWidget(ingredient: ingredient),
                            if (i++ != recipe.ingredients.length - 1) const Divider(),
                          ]
                      );
                    }
                  ),
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
  final MealType type;
  final Function(int, MealType) updateProduct;

  const _ProductPanel({
    super.key,
    required this.product,
    required this.type,
    required this.updateProduct,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
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
                child: Container(
                  width: 480,
                  child: Text(
                    product.name,
                    style: TextStyle(fontSize: 20),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  '${product.serving.round()} г',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              IconButton(
                onPressed: () {
                  print(555666);
                  updateProduct(product.id, type);
                },
                icon: Icon(
                  Icons.refresh,
                  size: 25,
                  color: MyColors().darkComponent,
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
