import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app_with_flutter/models/article_model.dart';
import 'package:news_app_with_flutter/services/news_service.dart';
import 'package:news_app_with_flutter/views/listViewsVerical.dart';

class NewsListViewVerticalBuilder extends StatefulWidget {
  const NewsListViewVerticalBuilder({
    super.key,
  });

  @override
  State<NewsListViewVerticalBuilder> createState() =>
      _NewsListViewVerticalBuilderState();
}

class _NewsListViewVerticalBuilderState
    extends State<NewsListViewVerticalBuilder> {
  List<ArticleModel> myArticals = [];
  bool isLoading = true;
  @override
  void initState() {
    // on ne peut pas mettre async avec initstate

    super.initState();
    getGeneralNews();
  }

  Future<void> getGeneralNews() async {
    myArticals = await NewsService(Dio()).getNews();
    isLoading = false;

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? const SliverToBoxAdapter(
            child: Center(child: CircularProgressIndicator()))
        : listViewsVertical(
            myArticals: myArticals,
          );
  }
}
