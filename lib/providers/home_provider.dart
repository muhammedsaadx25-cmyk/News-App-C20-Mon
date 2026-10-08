import 'package:flutter/material.dart';
import 'package:news_abbas/features/main_layout/categories/categoriesView.dart';
import 'package:news_abbas/features/main_layout/sources_view/sources_view.dart';

class HomeProvider extends ChangeNotifier{

  Widget selectedWidget = CategoriesView();

  void goToCategories(){
    selectedWidget = CategoriesView();
    notifyListeners();
  }
  void goToSources(){
    selectedWidget = SourcesView();
    notifyListeners();
  }

}