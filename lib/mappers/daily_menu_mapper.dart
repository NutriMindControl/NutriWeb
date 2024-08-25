import 'package:sberlab/dto/daily_menu_dto.dart';
import 'package:sberlab/dto/total_params_dto.dart';
import 'package:sberlab/entity/daily_menu.dart';
import 'package:sberlab/mappers/meal_dto.dart';
import 'package:sberlab/mappers/total_params_mapper.dart';

class DailyMenuMapper{
  @override
  DailyMenu fromDto(DailyMenuDTO dto) {
    return DailyMenu(
      date: DateTime.parse(dto.date),
      breakfastMeals: MealMapper().fromDto(dto.breakfast_meals),
      launchMeals: MealMapper().fromDto(dto.lunch_meals),
      dinnerMeals: MealMapper().fromDto(dto.dinner_meals),
      params: TotalParamsMapper().fromDto(dto.total_params),
    );
  }

  @override
  DailyMenuDTO toDto(DailyMenu entity) {
    return DailyMenuDTO(
      date: entity.date.toString(),
      breakfast_meals: MealMapper().toDto(entity.breakfastMeals),
      lunch_meals: MealMapper().toDto(entity.launchMeals),
      dinner_meals: MealMapper().toDto(entity.dinnerMeals),
      total_params: TotalParamsMapper().toDto(entity.params),
    );
  }
}
