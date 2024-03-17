import 'package:hive/hive.dart';

part 'grocesoryModel.g.dart';

@HiveType(typeId: 1)
class GrocesoryModel {
GrocesoryModel({ required this.ingredients, required this.listName , this.id});


  @HiveField(0)
  List<dynamic> ingredients;

  @HiveField(1)
  String listName;

  @HiveField(2)
  int? id;
}
