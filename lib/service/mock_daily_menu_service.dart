import 'package:sberlab/entity/daily_menu.dart';
import 'package:sberlab/entity/ingredient.dart';
import 'package:sberlab/entity/product.dart';
import 'package:sberlab/entity/recipe.dart';
import 'package:sberlab/entity/total_params.dart';

Map<String, dynamic> jsonMenu = {
  "date": "2024-07-29",
  "breakfast_meals": {
    "recipes": [
      {
        "calories": 126.31,
        "name": "ПП Хачапури",
        "id": 2905,
        "cook_time_mins": 30,
        "prep_time_mins": null,
        "servings": 4,
        "kilocalories": 126.31,
        "proteins": 8.28,
        "fats": 5.59,
        "carbohydrates": 11.35,
        "ingredients_distributions": [
          {
            "name": "яйцо",
            "measure_unit_name": "штука (шт) ~50гр",
            "count": 1.0,
            "ingredient_id": 21
          },
          {
            "name": "разрыхлитель",
            "measure_unit_name": "штука (шт) ~50гр",
            "count": 3.0,
            "ingredient_id": 28
          },
          {
            "name": "рисовая мука",
            "measure_unit_name": "грамм (гр)",
            "count": 22.0,
            "ingredient_id": 1801
          },
          {
            "name": " г обезжиренного творога ( брикета по г)",
            "measure_unit_name": "миллилитр (мл)",
            "count": 110.0,
            "ingredient_id": 2484
          },
          {
            "name": "сыр лёгкий",
            "measure_unit_name": "грамм (гр)",
            "count": 25.0,
            "ingredient_id": 2902
          }
        ]
      },
      {
        "calories": 245.56,
        "name": "Оладьи",
        "id": 3381,
        "cook_time_mins": 30,
        "prep_time_mins": null,
        "servings": 4,
        "kilocalories": 245.56,
        "proteins": 9.64,
        "fats": 7.89,
        "carbohydrates": 34.76,
        "ingredients_distributions": [
          {
            "name": "яйцо",
            "measure_unit_name": "штука (шт) ~50гр",
            "count": 2.0,
            "ingredient_id": 21
          },
          {
            "name": "сахар",
            "measure_unit_name": "грамм (гр)",
            "count": 10.0,
            "ingredient_id": 25
          },
          {
            "name": "мука",
            "measure_unit_name": "грамм (гр)",
            "count": 170.0,
            "ingredient_id": 26
          },
          {
            "name": "растительное масло",
            "measure_unit_name": "штука (шт) ~50гр",
            "count": 1.0,
            "ingredient_id": 31
          },
          {
            "name": "кефир",
            "measure_unit_name": "миллилитр (мл)",
            "count": 250.0,
            "ingredient_id": 1558
          },
          {
            "name": "сода",
            "measure_unit_name": "столовая ложка (ст.л.)",
            "count": 1.0,
            "ingredient_id": 2004
          }
        ]
      }
    ],
    "products": [
      {
        "proteins": 25.767002379535985,
        "fats": 8.768875155339472,
        "carbohydrates": 0.0,
        "calories": 182.1227916878198,
        "serving": 134.90577162060725,
        "categories": "Рыба. Нерыбные объекты промысла и продукты из них",
        "product_id": 799,
        "product_name": "Сельдь атлантическая нежирная"
      },
      {
        "proteins": 4.043863474122549,
        "fats": 5.054829342653186,
        "carbohydrates": 20.72480030487806,
        "calories": 146.5900509369424,
        "serving": 505.4829342653186,
        "categories": "Овощи, грибы и продукты их переработки",
        "product_id": 58,
        "product_name": "Борщ по 1-110"
      }
    ],
    "fats": 27.30370449799266,
    "carbohydrates": 66.83480030487806,
    "proteins": 47.730865853658536,
    "calories": 700.5828426247622
  },
  "lunch_meals": {
    "recipes": [
      {
        "calories": 70.36,
        "name": "Пикантный салат с помидорами",
        "id": 1833,
        "cook_time_mins": 30,
        "prep_time_mins": null,
        "servings": 4,
        "kilocalories": 70.36,
        "proteins": 2.47,
        "fats": 2.3,
        "carbohydrates": 10.46,
        "ingredients_distributions": [
          {
            "name": "помидоры",
            "measure_unit_name": "грамм (гр)",
            "count": 5.0,
            "ingredient_id": 16
          },
          {
            "name": "растительное масло",
            "measure_unit_name": "штука (шт) ~50гр",
            "count": 5.0,
            "ingredient_id": 31
          },
          {
            "name": "соевый соус",
            "measure_unit_name": "столовая ложка (ст.л.)",
            "count": 3.0,
            "ingredient_id": 37
          },
          {
            "name": "лук",
            "measure_unit_name": "штука (шт) ~200гр",
            "count": 2.0,
            "ingredient_id": 1386
          },
          {
            "name": "лимонный сок",
            "measure_unit_name": "столовая ложка (ст.л.)",
            "count": 1.0,
            "ingredient_id": 1396
          },
          {
            "name": "мед",
            "measure_unit_name": "столовая ложка (ст.л.)",
            "count": 1.0,
            "ingredient_id": 2002
          }
        ]
      },
      {
        "calories": 252.38,
        "name": "Суп с фрикадельками и кабачком",
        "id": 3918,
        "cook_time_mins": 30,
        "prep_time_mins": null,
        "servings": 4,
        "kilocalories": 252.38,
        "proteins": 9.49,
        "fats": 11.08,
        "carbohydrates": 29.23,
        "ingredients_distributions": [
          {
            "name": "морковь",
            "measure_unit_name": "штука (шт) ~200гр",
            "count": 1.0,
            "ingredient_id": 7
          },
          {
            "name": "лук репчатый",
            "measure_unit_name": "штука (шт) ~200гр",
            "count": 1.0,
            "ingredient_id": 17
          },
          {
            "name": "картофеля",
            "measure_unit_name": "штука (шт) ~200гр",
            "count": 1.0,
            "ingredient_id": 1543
          },
          {
            "name": "кабачок",
            "measure_unit_name": "штука (шт) ~200гр",
            "count": 1.0,
            "ingredient_id": 2900
          },
          {
            "name": "фарш любой",
            "measure_unit_name": "грамм (гр)",
            "count": 200.0,
            "ingredient_id": 4193
          },
          {
            "name": "крупа пшеничная",
            "measure_unit_name": "грамм (гр)",
            "count": 50.0,
            "ingredient_id": 12741
          }
        ]
      }
    ],
    "products": [
      {
        "proteins": 20.37808843063224,
        "fats": 3.997615433760391,
        "carbohydrates": 0.0,
        "calories": 117.97840670366033,
        "serving": 97.50281545757052,
        "categories": "Мясо и мясные продукты",
        "product_id": 355,
        "product_name": "Конина 2 кат."
      },
      {
        "proteins": 7.449999999999999,
        "fats": 2.25,
        "carbohydrates": 0.0,
        "calories": 51.74999999999999,
        "serving": 25.0,
        "categories": "Молоко и молочные продукты",
        "product_id": 909,
        "product_name": "Сыр Прибалтийский"
      },
      {
        "proteins": 17.807142282517287,
        "fats": 2.225892785314661,
        "carbohydrates": 37.84017735034924,
        "calories": 289.36606209090587,
        "serving": 2225.8927853146606,
        "categories": "Овощи, грибы и продукты их переработки",
        "product_id": 581,
        "product_name": "Огурцы соленые"
      },
      {
        "proteins": 9.801208311240723,
        "fats": 8.44931750969028,
        "carbohydrates": 13.518908015504447,
        "calories": 179.12553120543393,
        "serving": 337.97270038761116,
        "categories": "Молоко и молочные продукты",
        "product_id": 291,
        "product_name": "Кефир 2,5 % жирности"
      }
    ],
    "fats": 30.302825728765335,
    "carbohydrates": 91.04908536585368,
    "proteins": 67.39643902439025,
    "calories": 960.9600000000002
  },
  "dinner_meals": {
    "recipes": [
      {
        "calories": 203.44,
        "name": "Индейка, запечённая с кабачками и грибами в сливочном соусе",
        "id": 2897,
        "cook_time_mins": 50,
        "prep_time_mins": null,
        "servings": 4,
        "kilocalories": 203.44,
        "proteins": 4.74,
        "fats": 1.81,
        "carbohydrates": 40.8,
        "ingredients_distributions": [
          {
            "name": "сливок%",
            "measure_unit_name": "миллилитр (мл)",
            "count": 500.0,
            "ingredient_id": 297
          },
          {
            "name": "сыра",
            "measure_unit_name": "грамм (гр)",
            "count": 75.0,
            "ingredient_id": 1374
          },
          {
            "name": "кабачка",
            "measure_unit_name": "грамм (гр)",
            "count": 500.0,
            "ingredient_id": 1632
          },
          {
            "name": "филе грудки",
            "measure_unit_name": "грамм (гр)",
            "count": 500.0,
            "ingredient_id": 1797
          },
          {
            "name": "мелких шампиньонов",
            "measure_unit_name": "грамм (гр)",
            "count": 200.0,
            "ingredient_id": 2282
          },
          {
            "name": " ст.л мука",
            "measure_unit_name": "столовая ложка (ст.л.)",
            "count": 1.0,
            "ingredient_id": 3185
          }
        ]
      },
      {
        "calories": 245.55,
        "name": "Мясо по тайски",
        "id": 1545,
        "cook_time_mins": 30,
        "prep_time_mins": null,
        "servings": 4,
        "kilocalories": 245.55,
        "proteins": 20.6,
        "fats": 7.84,
        "carbohydrates": 23.3,
        "ingredients_distributions": [
          {
            "name": "яйцо",
            "measure_unit_name": "столовая ложка (ст.л.)",
            "count": 1.0,
            "ingredient_id": 21
          },
          {
            "name": "лука",
            "measure_unit_name": "штука (шт) ~200гр",
            "count": 2.0,
            "ingredient_id": 449
          },
          {
            "name": "стручковая фасоль",
            "measure_unit_name": "грамм (гр)",
            "count": 200.0,
            "ingredient_id": 2933
          },
          {
            "name": "болгарского перца",
            "measure_unit_name": "штука (шт) ~200гр",
            "count": 2.0,
            "ingredient_id": 3803
          },
          {
            "name": "постной говядины или телятины",
            "measure_unit_name": "грамм (гр)",
            "count": 500.0,
            "ingredient_id": 6522
          }
        ]
      }
    ],
    "products": [
      {
        "proteins": 26.028147770398487,
        "fats": 11.644171370967742,
        "carbohydrates": 10.730903028146743,
        "calories": 237.44976913345988,
        "serving": 114.15854285262493,
        "categories": "Мясо и мясные продукты",
        "product_id": 639,
        "product_name": "Печень жареная по 1-420"
      }
    ],
    "fats": 21.294171370967742,
    "carbohydrates": 74.83090302814674,
    "proteins": 51.368147770398494,
    "calories": 686.4397691334599
  },
  "total_params": {
    "total_calories": 2347.9826117582224,
    "total_fats": 78.90070159772574,
    "total_proteins": 166.49545264844727,
    "total_carbohydrates": 232.71478869887846,
    "required_calories": 2288.0,
    "daily_protein_needs": 167.41463414634148,
    "daily_fat_needs": 73.80645161290322,
    "daily_carbohydrate_needs": 223.21951219512198,
    "imt": 22.10028959000152
  }
};

final dailyMenuInfo = DailyMenu(
  date: DateTime.now(),
  breakfastMeals: Meal(
    recipes: [recipe],
    products: [product1, product2],
    calories: 100,
    proteins: 20,
    fats: 24,
    carbohydrates: 34,
  ),
  launchMeals: Meal(
    recipes: [recipe],
    products: [product1, product2],
    calories: 100,
    proteins: 20,
    fats: 24,
    carbohydrates: 34,
  ),
  dinnerMeals: Meal(
    recipes: [recipe1],
    products: [product1, product2],
    calories: 400,
    proteins: 350,
    fats: 84,
    carbohydrates: 334,
  ),
  params: TotalParams(
    totalCalories: 100,
    totalFats: 150,
    totalProteins: 234,
    totalCarbohydrate: 245,
    requiredCaloties: 364,
    dailyProteinNeeds: 234,
    dailyFatNeeds: 454,
    dailyCarbohydrateNeeds: 245,
    imt: 345,
  ),
);

final recipe = Recipe(
  id: 1,
  name: "Яичница",
  ingredients: [ingredient1, ingredient2, ingredient3, ingredient4],
  servings: 3,
  calories: 100,
  proteins: 20,
  fats: 24,
  carbohydrates: 34,
  cookTimeMins: 30,
);

final recipe1 = Recipe(
  id: 1,
  name: "Блинчики",
  ingredients: [ingredient1, ingredient2],
  servings: 3,
  calories: 500,
  proteins: 50,
  fats: 48,
  carbohydrates: 100,
  cookTimeMins: 30,
);


final ingredient1 = Ingredient(
  id: 1,
  name: "name",
  count: 1,
  unit: "шт",
);

final ingredient2 = Ingredient(
  id: 2,
  name: "name",
  count: 1,
  unit: "шт",
);

final ingredient3 = Ingredient(
  id: 3,
  name: "name",
  count: 1,
  unit: "шт",
);

final ingredient4 = Ingredient(
  id: 4,
  name: "name",
  count: 1,
  unit: "шт",
);

final product1 = Product(
  id: 1,
  name: "name1",
  serving: 1,
  proteins: 67,
  fats: 54,
  carbohydrates: 567,
  calories: 354,
  categories: "",
);

final product2 = Product(
  id: 2,
  name: "name2",
  serving: 1,
  proteins: 67,
  fats: 54,
  carbohydrates: 567,
  calories: 354,
  categories: "",
);
