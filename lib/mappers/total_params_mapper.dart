import 'package:sberlab/dto/total_params_dto.dart';
import 'package:sberlab/entity/total_params.dart';

class TotalParamsMapper{
  @override
  TotalParams fromDto(TotalParamsDTO dto) {
    return TotalParams(
      totalCalories: dto.total_calories,
      totalProteins: dto.total_proteins,
      totalCarbohydrate: dto.total_carbohydrates,
      totalFats: dto.total_fats,
      requiredCaloties: dto.required_calories,
      dailyProteinNeeds: dto.daily_protein_needs,
      dailyFatNeeds: dto.daily_fat_needs,
      dailyCarbohydrateNeeds: dto.daily_carbohydrate_needs,
      imt: dto.imt,
    );
  }

  @override
  TotalParamsDTO toDto(TotalParams entity) {
    return TotalParamsDTO(
      total_calories: entity.totalCalories,
      total_proteins: entity.totalProteins,
      total_carbohydrates: entity.totalCarbohydrate,
      total_fats: entity.totalFats,
      required_calories: entity.requiredCaloties,
      daily_protein_needs: entity.dailyProteinNeeds,
      daily_fat_needs: entity.dailyFatNeeds,
      daily_carbohydrate_needs: entity.dailyCarbohydrateNeeds,
      imt: entity.imt,
    );
  }
}
