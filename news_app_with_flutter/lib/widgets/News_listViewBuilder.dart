import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app_with_flutter/models/article_model.dart';
import 'package:news_app_with_flutter/services/news_service.dart';
import 'package:news_app_with_flutter/views/listViewsVerical.dart';

/* class NewsListViewVerticalBuilder extends StatefulWidget {
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
 */

class NewsListViewVerticalBuilder extends StatefulWidget {
  const NewsListViewVerticalBuilder({super.key});

  @override
  State<NewsListViewVerticalBuilder> createState() =>
      _NewsListViewVerticalBuilderState();
}

class _NewsListViewVerticalBuilderState
    extends State<NewsListViewVerticalBuilder> {
  var future;
  @override
  void initState() {
    future = NewsService(Dio()).getNews();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
      //reabuild widget qui va le retourner selon request sans setstate
      future: future,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return listViewsVertical(myArticals: snapshot.data!);
        } else if (snapshot.hasError) {
          return const SliverToBoxAdapter(
            child: Text("oops there is no data"),
          );
        } else {
          return SliverToBoxAdapter(
            child: Center(child: CircularProgressIndicator()),
          );
        }
      },
    );
    /* return isLoading
        ? const SliverToBoxAdapter(
            child: Center(
              child: CircularProgressIndicator(),
            ),
          )
        : listViewsVertical(
            myArticals: myArticals,
          ); */
  }
}
