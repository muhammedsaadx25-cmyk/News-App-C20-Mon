import 'package:flutter/material.dart';
import 'package:news_abbas/features/main_layout/categories/category_item.dart';
import 'package:news_abbas/models/category_model.dart';

class CategoriesView extends StatelessWidget {
   CategoriesView({super.key, required this.onCategoryItemClicked});
void Function(CategoryModel) onCategoryItemClicked;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Good Morning\nHere is Some News For You",
          style: Theme.of(context).textTheme.titleMedium,
        ),
        SizedBox(height: 12,),
        Expanded(
          child: ListView.separated(
            separatorBuilder: (_, index)=> SizedBox(height: 12,),
            itemBuilder: (_, index) =>
                InkWell(
                    onTap: (){
                      onCategoryItemClicked(CategoryModel.categories[index]);
                    },
                    child: CategoryItem(category: CategoryModel.categories[index])),
            itemCount: CategoryModel.categories.length,
          ),
        ),
      ],
    );
  }
}
