import 'package:flutter/material.dart';
import 'package:news_abbas/core/resources/colors_manager.dart';
import 'package:news_abbas/features/main_layout/articles/article_item.dart';
import 'package:news_abbas/models/article_model.dart';
import 'package:news_abbas/models/source_model.dart';

class SourcesView extends StatelessWidget {
  const SourcesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DefaultTabController(
            length: SourceModel.sources.length,
            child: TabBar(

                tabAlignment: TabAlignment.start,
                isScrollable: true,
                tabs: SourceModel.sources.map((source) =>
                    Tab(text: source.name,)).toList())),
        Expanded(
          child: ListView.separated(itemBuilder: (_, index) => ArticleItem(article: ArticleModel.articles[index],),
              separatorBuilder: (_, index) => SizedBox(height: 12,),
              itemCount: 20),
        )

      ],
    );
  }
}
