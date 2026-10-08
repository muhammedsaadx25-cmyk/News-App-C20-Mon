import 'package:flutter/material.dart';
import 'package:news_abbas/core/resources/colors_manager.dart';
import 'package:news_abbas/models/article_model.dart';

class ArticleItem extends StatelessWidget {
   ArticleItem({super.key, required this.article});
ArticleModel article;
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            border: Border.all(color: ColorsManager.white, width: 2)
        ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(18),
                child: Image.asset(article.imageUrl, width: double.infinity,fit: BoxFit.fitWidth,)),
            SizedBox(height: 10,),
            Text(article.title,style: TextStyle(color: ColorsManager.white, fontWeight: FontWeight.bold, fontSize: 16),),
            SizedBox(height: 10,),
            Row(
              children: [
                Text(article.author, style: TextStyle(color: Colors.green, fontSize: 12,fontWeight: FontWeight.w500 ),),
                Spacer(),
                Text(article.publishedAt, style: TextStyle(color: Colors.green, fontSize: 12,fontWeight: FontWeight.w500 ),),
              ],
            )

          ],
        ),
      ),
    );
  }
}
