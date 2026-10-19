import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:news_abbas/api_service/articles_response/ArticlesResponse.dart';
import 'package:news_abbas/api_service/sources_response/Source.dart';
import 'package:news_abbas/api_service/sources_response/SourcesResponse.dart';
import 'package:news_abbas/models/category_model.dart';


class APIService {
  static const String baseURL = "newsapi.org";
  static const String sourcesEndPoint = "/v2/top-headlines/sources";
  static const String articlesEndPoint = "/v2/everything";
  static const String APIKEY = "811d8ca53d0d4ff281843e66552efcee";

  static Future<SourcesResponse>getSources(CategoryModel category)async {

    Uri url = Uri.https(baseURL, sourcesEndPoint, {
      "apiKey": APIKEY,
      "category": category.id,

    });
    
    
    http.Response serverResponse = await http.get(url);
  Map<String, dynamic> json =   jsonDecode(serverResponse.body);
  SourcesResponse sourcesResponse = SourcesResponse.fromJson(json);
  print(sourcesResponse.sources?.length);
  return sourcesResponse;
  }


  static Future<ArticlesResponse>getArticles(Source source)async{
    Uri url = Uri.https(baseURL,articlesEndPoint,{
      "apiKey":APIKEY,
      "sources":source.id,
    });
    http.Response serverResponse = await http.get(url);
   var json = jsonDecode (serverResponse.body);
   ArticlesResponse articlesResponse = ArticlesResponse.fromJson(json);
   return articlesResponse;
  }
}
