@HiveType(typeId: 2)
enum CategoryType{
  @HiveField(0)
  income,
  @HiveField(1)
  expense,
}
@HiveType(typeId:1)
class CategoryModel{
  
  final String id;
  @HiveField(0)
  final String name;
  @HiveField(1)
  final bool isDeleted;
  @HiveField(2)
  final CategoryType type;
 @HiveField(3)
  CategoryModel({
    required this .id,
  required this.name, 
  required this.type,
  this.isDeleted=false});

}

class HiveField {
  const HiveField(int i);
}

class HiveType {
  const HiveType({required int typeId});
}