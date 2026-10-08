import 'package:news_abbas/core/resources/assets_manager.dart';

class CategoryModel{
  String id;
  String name;
  String imageURL;
  CategoryModel({required this.id, required this.name, required this.imageURL});
  static List<CategoryModel> categories = [
    CategoryModel(id: "general", name: "General", imageURL: ImageAssets.general),
    CategoryModel(id: "business", name: "Business", imageURL: ImageAssets.general),
    CategoryModel(id: "sports", name: "Sports", imageURL: ImageAssets.general),
    CategoryModel(id: "technology", name: "Technology", imageURL: ImageAssets.general),
    CategoryModel(id: "entertainment", name: "Entertainment", imageURL: ImageAssets.general),
    CategoryModel(id: "health", name: "Health", imageURL: ImageAssets.general),
    CategoryModel(id: "science", name: "Science", imageURL: ImageAssets.general),
  ];
}