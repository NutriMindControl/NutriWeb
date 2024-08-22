import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_dto.freezed.dart';
part 'product_dto.g.dart';

@freezed
class ProductDTO with _$ProductDTO {
  factory ProductDTO({
    required int product_id,
    required String product_name,
    required double serving,
    required double proteins,
    required double fats,
    required double carbohydrates,
    required double calories,
    required String categories,
  }) = _ProductDTO;

  factory ProductDTO.fromJson(Map<String, Object?> json) =>
      _$ProductDTOFromJson(json);
}
