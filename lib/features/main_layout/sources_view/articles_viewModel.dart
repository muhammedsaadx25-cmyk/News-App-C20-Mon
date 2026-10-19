import 'package:flutter/material.dart';
import 'package:news_abbas/api_service/api_service.dart';
import 'package:news_abbas/api_service/articles_response/Article.dart';
import 'package:news_abbas/api_service/articles_response/ArticlesResponse.dart';
import 'package:news_abbas/api_service/sources_response/Source.dart';

class ArticlesViewModel extends ChangeNotifier {
  ArticlesState state = ArticlesInitialState();

  void loadArticles(Source source) async {
  state = ArticlesLoadingState();
    notifyListeners();
    ArticlesResponse articlesResponse = await APIService.getArticles(source);
    if(articlesResponse.status == 'error'){

   state = ArticlesErrorState(message: articlesResponse.message ?? '');
   }else{

    state = ArticlesSuccessState(articles: articlesResponse.articles ?? []);
   }
    notifyListeners();
  }
}


sealed class ArticlesState{}
class ArticlesInitialState extends ArticlesState{}
class ArticlesLoadingState extends ArticlesState{
  String? message;
  ArticlesLoadingState({this.message});
}
class ArticlesErrorState extends ArticlesState{
  String message;
  ArticlesErrorState({required this.message});
}
class ArticlesSuccessState extends ArticlesState{
  List<Article> articles;
  ArticlesSuccessState({required this.articles});
}

