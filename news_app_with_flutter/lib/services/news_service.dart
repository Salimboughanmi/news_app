import 'package:dio/dio.dart';

class NewsService {
  final Dio dio;
  NewsService(this.dio);
  Future getNews() async {
    final Response response = await dio.get(
        'https://newsapi.org/v2/top-headlines?country=fr&apiKey=2c549ab7bb8b412a8d49fe00a602a402&category=sports');

    Map<String, dynamic> jsonData = response.data;
    //print(jsonData);

//    Map<String, int> ArticleData = jsonData['totalResults'];
    print(jsonData['totalResults']);
  }
}
