import 'package:dio/dio.dart';
import 'package:news_app_with_flutter/models/article_model.dart';

class NewsService {
  final Dio dio;
  NewsService(this.dio);
  Future getNews() async {
    final Response response = await dio.get(
        'https://newsapi.org/v2/top-headlines?country=us&apiKey=2c549ab7bb8b412a8d49fe00a602a402&category=sports');

    Map<String, dynamic> jsonData = response.data;

    List<dynamic> Articles = jsonData['articles']; // acces l'article

    List<ArticleModel> articaList = []; // cree new list of articalmodel

    for (var art in Articles) {
      ArticleModel articlModel = ArticleModel(
          //make map object in arttical model
          image: art['urlToImage'],
          title: art['title'],
          subTitle: art['description']);

      articaList.add(articlModel);
    }
    print(articaList);
  }
}
