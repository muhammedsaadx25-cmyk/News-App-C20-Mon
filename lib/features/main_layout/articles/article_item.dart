import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:news_abbas/api_service/articles_response/Article.dart';
import 'package:news_abbas/core/resources/colors_manager.dart';

class ArticleItem extends StatelessWidget {
   ArticleItem({super.key, required this.article});
Article article;
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
                child: CachedNetworkImage(
                  imageUrl:article.urlToImage ?? '',
                  progressIndicatorBuilder: (context, url, downloadProgress) =>
                      CircularProgressIndicator(value: downloadProgress.progress),
                  errorWidget: (context, url, error) => Icon(Icons.error),
                ),),
            SizedBox(height: 10,),
            Text(article.title  ?? '',style: TextStyle(color: ColorsManager.white, fontWeight: FontWeight.bold, fontSize: 16),),
            SizedBox(height: 10,),
            Row(
              children: [
                Expanded(child: Text(article.author ?? ' ',  style: TextStyle(color: Colors.green, fontSize: 12,fontWeight: FontWeight.w500 ),)),

                Expanded(child: Text(article.publishedAt ?? '',textAlign: TextAlign.end ,style: TextStyle(color: Colors.green, fontSize: 12,fontWeight: FontWeight.w500 ),)),
              ],
            )

          ],
        ),
      ),
    );
  }
}
