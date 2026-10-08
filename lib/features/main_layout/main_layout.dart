import 'package:flutter/material.dart';
import 'package:news_abbas/core/resources/colors_manager.dart';
import 'package:news_abbas/features/main_layout/categories/categoriesView.dart';
import 'package:news_abbas/features/main_layout/categories/category_item.dart';
import 'package:news_abbas/features/main_layout/drawer/custom_drawer.dart';
import 'package:news_abbas/features/main_layout/sources_view/sources_view.dart';
import 'package:news_abbas/models/category_model.dart';

class MainLayout extends StatefulWidget {
  const MainLayout({super.key});

  @override
  State<MainLayout> createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> {
 late  Widget selectedWidget ;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    selectedWidget = CategoriesView(onCategoryItemClicked:onCategoryItemClicked ,);

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search, color: ColorsManager.white),
          ),
        ],
      ),
      drawer: CustomDrawer(onGoToHomeClicked:onGoToHomeClicked ,),

      body: selectedWidget,
    );
  }

  void onGoToHomeClicked(){
    selectedWidget = CategoriesView(onCategoryItemClicked: onCategoryItemClicked);
  Navigator.pop(context);
    setState(() {

  });
  }

  void onCategoryItemClicked(){
    selectedWidget = SourcesView();
    setState(() {

    });
  }
}
