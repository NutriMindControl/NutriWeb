import 'dart:html';
import 'dart:typed_data';

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rive/rive.dart';
import 'package:sberlab/assets/sizes.dart';
import 'package:sberlab/components/block.dart';
import 'package:sberlab/components/chart.dart';
import 'package:sberlab/components/drop_button.dart';
import 'package:sberlab/components/food_value_widget.dart';
import 'package:sberlab/components/ingredient_widget.dart';
import 'package:sberlab/components/my_toggle_buttons.dart';
import 'package:sberlab/components/progress_line.dart';
import 'package:sberlab/components/meal_panel.dart';
import 'package:sberlab/dto/daily_menu_dto.dart';
import 'package:sberlab/dto/diagnosis_dto.dart';
import 'package:sberlab/dto/total_params_dto.dart';
import 'package:sberlab/entity/daily_menu.dart';
import 'package:sberlab/entity/diagnosis.dart';
import 'package:sberlab/entity/food_value.dart';
import 'package:sberlab/entity/ingredient.dart';
import 'package:sberlab/entity/product.dart';
import 'package:sberlab/entity/recipe.dart';
import 'package:sberlab/entity/total_params.dart';
import 'package:sberlab/mappers/daily_menu_mapper.dart';
import 'package:sberlab/mappers/diagnosis_mapper.dart';
import 'package:sberlab/mappers/total_params_mapper.dart';
import 'package:sberlab/service/daily_menu_service.dart';
import 'package:sberlab/service/mock_daily_menu_service.dart';

import '../assets/colors.dart';
import 'dart:html' as html;

import '../components/text_field_widget.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> heights = [];
  List<String> weights = [];
  List<String> ages = [];
  List<String> activitylevels = [];

  List<String> diagnosisValues = ['диабет', 'рпп', 'гастрит', 'шизофрения'];
  List<FoodValue> foodValues = [
    FoodValue(value: 'Калории', count: 375, unit: 'ккл'),
    FoodValue(value: 'Жиры', count: 13, unit: 'г'),
    FoodValue(value: 'Углеводы', count: 41, unit: 'г'),
    FoodValue(value: 'Белки', count: 23, unit: 'г'),
    FoodValue(value: 'Клетчатка', count: 4, unit: 'г'),
  ];
  List<Diagnosis> diagnosis = [];

  String? currentAge;
  String? currentPhysicalActivityLevel;
  String? currentDiagnose;

  String hintHeight = 'Рост';
  String hintWeight = 'Вес';
  String hintAge = 'Возраст';
  String hintPhysicalActivityLevel = 'Физическая активность';
  String hintDiagnose = 'Диагноз';

  final List<bool> selected = <bool>[false, true];
  bool infoExist = false;
  bool isLoading = true;

  DailyMenu dailyMenu =
      DailyMenuMapper().fromDto(DailyMenuDTO.fromJson(jsonMenu));

  // final dailyMenu = dailyMenuInfo;

  void _getLevels() {
    DailyMenuService().getActivitylevel().then((value) {
      setState(() => activitylevels = value);
    });
  }

  void _getDiagnosis() {
    DailyMenuService().getDiagnosis().then((value) {
      setState(() {
        diagnosis = value;
        diagnosisValues =
            diagnosis.map((e) => e.diagnosisDescription as String).toList();
      });
    });
  }

  Future<void> _getDailyMenu() async {
    int id = 0;
    for (var d in diagnosis) {
      if (d.diagnosisDescription == currentDiagnose) {
        id = d.id;
        break;
      }
    }
    print(454545);
    print(id);
    final height = heightController.text;
    final weight = weightController.text;
    final age = currentAge!.split(' ');
    await DailyMenuService()
        .getDailyMenu(height, weight, age[0], selected[0] == true, currentPhysicalActivityLevel!, id)
        .then((value) {
      setState(() {
        dailyMenu = value;
        isLoading = false;
      });
    });
  }

  @override
  void initState() {
    _getLevels();
    _getDiagnosis();


    // DailyMenuService().getDailyMenu(150, 50, 17, true, "Умеренная", 1);
    for (int i = 100; i < 210; i++) {
      heights.add('$i см');
    }

    for (int i = 40; i < 150; i++) {
      weights.add('$i кг');
    }

    for (int i = 6; i < 100; i++) {
      var val = i.toString();
      if (9 < i && i < 20) {
        val += ' лет';
      } else if (i % 10 == 1) {
        val += ' год';
      } else if (1 < i % 10 && i % 10 < 5) {
        val += ' года';
      } else
        val += ' лет';
      ages.add(val);
    }
    super.initState();
  }

  void onChangedAge(String? age) {
    setState(() => currentAge = age ?? currentAge);
  }

  void onChangedPhysicalActivityLevel(String? physicalActivityLeve) {
    setState(() => currentPhysicalActivityLevel =
        physicalActivityLeve ?? currentPhysicalActivityLevel);
  }

  void onChangedDiagnose(String? diagnose) {
    setState(() => currentDiagnose = diagnose ?? currentDiagnose);
  }

  void onChangedGender(int index) {
    setState(() {
      for (int i = 0; i < selected.length; i++) {
        selected[i] = i == index;
      }
    });
  }

  void updateMeal(MealType type) async {
    final newDailyMenu =
        await DailyMenuService().updateMeal(type.name, 1, dailyMenu);
    setState(() {
      dailyMenu = newDailyMenu;
    });
  }

  void updateRecipe(int id, MealType type) async {
    final newDailyMenu =
        await DailyMenuService().updateRecipe(id, type, 1, dailyMenu);
    setState(() {
      dailyMenu = newDailyMenu;
    });
  }

  void updateProduct(int id, MealType type) async {
    final newDailyMenu =
        await DailyMenuService().updateProduct(id, type, 1, dailyMenu);
    setState(() {
      dailyMenu = newDailyMenu;
    });
  }

  final TextEditingController heightController = TextEditingController();
  final TextEditingController weightController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors().main,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.015),
          child: Column(
            children: [
              Block(
                width: MediaQuery.of(context).size.width * 0.955,
                height: MediaQuery.of(context).size.height * 0.1,
                padding: MediaQuery.of(context).size.width * 0.01,
                child: Row(
                  children: [
                    TextFieldWidget(
                      title: hintHeight,
                      controller: heightController,
                    ),
                    TextFieldWidget(
                      title: hintWeight,
                      controller: weightController,
                    ),
                    TopDropButton(
                      dropdownValue: currentAge,
                      list: ages,
                      onChanged: onChangedAge,
                      hint: hintAge,
                      width: 100,
                    ),
                    // age
                    MyToggleButtons(
                      selected: selected,
                      onChanged: onChangedGender,
                    ),
                    TopDropButton(
                      dropdownValue: currentPhysicalActivityLevel,
                      list: activitylevels,
                      onChanged: onChangedPhysicalActivityLevel,
                      hint: hintPhysicalActivityLevel,
                      width: 200,
                    ),
                    //physicalActivityLevel
                    TopDropButton(
                      dropdownValue: currentDiagnose,
                      list: diagnosisValues,
                      onChanged: onChangedDiagnose,
                      hint: hintDiagnose,
                      width: 270,
                    ),
                    //diagnoseId
                    if (!infoExist) TextButton(
                      onPressed: () async {
                        setState(() async {
                          if (weightController.text.isNotEmpty
                              && currentAge != null
                              && currentDiagnose != null
                              && currentPhysicalActivityLevel != null
                              && heightController.text.isNotEmpty) {
                              infoExist = true;
                              await _getDailyMenu();
                            }
                          });
                      },
                      child: Text(
                        'Найти рецепты',
                        style: TextStyle(
                          color: MyColors().darkComponent,
                          fontSize: 20,
                          decoration: TextDecoration.underline,
                          decorationColor: MyColors().darkComponent,
                        ),
                      ),
                    ),
                    if (infoExist && !isLoading) Spacer(),
                    if (infoExist && !isLoading)
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: IconButton(
                            onPressed: () async {
                              Uint8List pdfInBytes = await DailyMenuService().getPDF(dailyMenu);
                              final blob = html.Blob([pdfInBytes], 'application/pdf');
                              final url = html.Url.createObjectUrlFromBlob(blob);
                              final anchor = html.document.createElement('a') as html.AnchorElement
                                ..href = url
                                ..style.display = 'none'
                                ..download = 'pdf.pdf';
                              html.document.body?.children.add(anchor);
                              anchor.click();
                            },
                            icon: Icon(
                                Icons.download,
                              size: 30,
                              color: MyColors().darkComponent,
                            ),
                          ),
                        ),

                  ],
                ),
              ),
              infoExist
                  ? (isLoading ? _loading() : _filledBody())
                  : _emptyBody(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _loading() {
    return const Center(
      child: Column(
        children: [
          SizedBox(
            height: 100,
          ),
          SizedBox(
            width: 300,
            height: 200,
            child: RiveAnimation.asset('loading_animation.riv'),
          ),
        ],
      ),
    );
  }

  Widget _emptyBody() {
    return Center(
      child: Column(
        children: [
          SizedBox(
            height: 100,
          ),
          Container(
            width: 300,
            height: 200,
            child: const RiveAnimation.asset('404_cat.riv'),
          ),
          Text(
            "Введите свои данные!",
            style: TextStyle(
              fontSize: 30,
              color: MyColors().darkComponent,
            ),
          ),
        ],
      ),
    );
  }

  double _handleDouble(double num) {
    num *= 100;
    num = num.roundToDouble();
    num /= 100;
    return num;
  }

  List<int> createValues(int fats, int carbohydrates, int proteins) {
    final total = fats + carbohydrates + proteins;
    return [
      fats * 100 ~/ total,
      carbohydrates * 100 ~/ total,
      100 - (fats * 100 ~/ total) - carbohydrates * 100 ~/ total,
    ];
  }

  Widget _filledBody() {
    List<int> breakfastValues = createValues(
      dailyMenu.breakfastMeals.fats,
      dailyMenu.breakfastMeals.carbohydrates,
      dailyMenu.breakfastMeals.proteins,
    );
    List<int> launchValues = createValues(
      dailyMenu.launchMeals.fats,
      dailyMenu.launchMeals.carbohydrates,
      dailyMenu.launchMeals.proteins,
    );
    List<int> dinnerValues = createValues(
      dailyMenu.dinnerMeals.fats,
      dailyMenu.dinnerMeals.carbohydrates,
      dailyMenu.dinnerMeals.proteins,
    );
    List<Color> colors = [
      MyColors().darkComponent,
      MyColors().orange,
      MyColors().green,
    ];
    int i = 0;
    double imt = dailyMenu.params.imt;
    List<PieChartSectionData> breakfastSections = breakfastValues.map((value) {
      return PieChartSectionData(
        color: colors[i++],
        value: value.toDouble(),
        title: '${value}%',
        radius: 40,
      );
    }).toList();
    i = 0;
    List<PieChartSectionData> launchSections = launchValues.map((value) {
      return PieChartSectionData(
        color: colors[i++],
        value: value.toDouble(),
        title: '${value}%',
        radius: 40,
      );
    }).toList();
    i = 0;
    List<PieChartSectionData> dinnerSections = dinnerValues.map((value) {
      return PieChartSectionData(
        color: colors[i++],
        value: value.toDouble(),
        title: '${value}%',
        radius: 40,
      );
    }).toList();
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          children: [
            MealPanel(
              updateMeal: updateMeal,
              updateRecipe: updateRecipe,
              updateProduct: updateProduct,
              type: MealType.breakfast,
              meal: dailyMenu.breakfastMeals,
            ),
            MealPanel(
              updateMeal: updateMeal,
              updateRecipe: updateRecipe,
              updateProduct: updateProduct,
              type: MealType.launch,
              meal: dailyMenu.launchMeals,
            ),
            MealPanel(
              updateMeal: updateMeal,
              updateRecipe: updateRecipe,
              updateProduct: updateProduct,
              type: MealType.dinner,
              meal: dailyMenu.dinnerMeals,
            ),
          ],
        ),
        Column(
          children: [
            Block(
              width: MediaQuery.of(context).size.width * 0.37,
              padding: MediaQuery.of(context).size.width * 0.01,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 50.0),
                      child: Row(
                        children: [
                          Text(
                            "ИМТ: ",
                            style: TextStyle(
                              fontSize: 25,
                              color: MyColors().darkComponent,
                            ),
                          ),
                          Text(
                            "${_handleDouble(imt)}",
                            style: TextStyle(fontSize: 25),
                          ),
                        ],
                      ),
                    ),
                    ProgressLine(
                      color: MyColors().darkComponent,
                      value: 'Жиры',
                      currentCount: dailyMenu.params.totalFats,
                      totalCount: dailyMenu.params.dailyFatNeeds,
                    ),
                    ProgressLine(
                      color: MyColors().orange,
                      value: 'Углеводы',
                      currentCount: dailyMenu.params.totalCarbohydrate,
                      totalCount: dailyMenu.params.dailyCarbohydrateNeeds,
                    ),
                    ProgressLine(
                      color: MyColors().green,
                      value: 'Белки',
                      currentCount: dailyMenu.params.totalProteins,
                      totalCount: dailyMenu.params.dailyProteinNeeds,
                    ),
                    ProgressLine(
                      color: MyColors().red,
                      value: 'Калории',
                      currentCount: dailyMenu.params.totalCalories,
                      totalCount: dailyMenu.params.requiredCaloties,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 50.0, vertical: 20),
                      child: Row(
                        children: [
                          Chart(sections: breakfastSections, title: "Завтрак"),
                          Chart(sections: launchSections, title: "Обед"),
                          Chart(sections: dinnerSections, title: "Ужин"),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
