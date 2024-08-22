class Product {
  final int id;
  final String name;
  final int serving;
  final int? protein;
  final int? fat;
  final int? carbohydrates;
  final int? energyValue;
  final String? categories;

  Product({
    required this.id,
    required this.name,
    required this.serving,
    this.protein,
    this.fat,
    this.carbohydrates,
    this.energyValue,
    this.categories,
  });
}
