import 'package:flutter/material.dart';
import 'package:news_abbas/api_service/api_service.dart';
import 'package:news_abbas/api_service/articles_response/Article.dart';
import 'package:news_abbas/api_service/articles_response/ArticlesResponse.dart';
import 'package:news_abbas/api_service/sources_response/Source.dart';
import 'package:news_abbas/api_service/sources_response/SourcesResponse.dart';
import 'package:news_abbas/models/category_model.dart';

class SourcesViewModel extends ChangeNotifier {


 SourcesState state  =  SourcesInitialState();

  Future<void> loadSources(CategoryModel category) async {
  state = SourcesLoadingState();
    notifyListeners();
    SourcesResponse sourcesResponse = await APIService.getSources(category);

    if(sourcesResponse.status == 'error'){
    state = SourcesErrorState(message: sourcesResponse.message ?? '');
    }else{

   state = SourcesSuccessState(sources: sourcesResponse.sources ?? []);
    }
    notifyListeners();
  }


}

sealed class SourcesState{}

class SourcesInitialState extends SourcesState{}
class SourcesSuccessState extends SourcesState{
  List<Source> sources;
  SourcesSuccessState({required this.sources});
}

class SourcesLoadingState extends SourcesState{
  String? message;
  SourcesLoadingState({this.message});
}

class SourcesErrorState extends SourcesState{
  String message;
  SourcesErrorState({required this.message});
}





