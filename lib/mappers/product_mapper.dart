
import 'package:sberlab/dto/product_dto.dart';
import 'package:sberlab/entity/product.dart';

class ProductMapper{
  @override
  Product fromDto(ProductDTO dto) {
    return Product(
      id: dto.product_id,
      name: dto.product_name,
      serving: dto.serving,
      proteins: dto.proteins,
      fats: dto.fats,
      carbohydrates: dto.carbohydrates,
      calories: dto.calories,
      categories: dto.categories,
    );
  }

  @override
  ProductDTO toDto(Product entity) {
    return ProductDTO(
      product_id: entity.id,
      product_name: entity.name,
      serving: entity.serving,
      proteins: entity.proteins,
      fats: entity.fats,
      carbohydrates: entity.carbohydrates,
      calories: entity.calories,
      categories: entity.categories,
    );
  }
}
