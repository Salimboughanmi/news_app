/* import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app_with_flutter/models/article_model.dart';
import 'package:news_app_with_flutter/services/news_service.dart';
import 'package:news_app_with_flutter/widgets/news_tile.dart';

class listViewsVertical extends StatefulWidget {
  // convertir to statefullwidget
  const listViewsVertical({
    super.key,
  });

  @override
  State<listViewsVertical> createState() => _listViewsVerticalState();
}

class _listViewsVerticalState extends State<listViewsVertical> {
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
        ? SliverToBoxAdapter(child: Center(child: CircularProgressIndicator()))
        : SliverList(
            // SliverList remplacer listview.buillder
            delegate: SliverChildBuilderDelegate(childCount: myArticals.length,
                (context, index) {
              return Padding(
                padding: EdgeInsets.only(bottom: 20),
                child: NewsTile(
                  articleModels: myArticals[index],
                ),
              );
            }),
          );
  }
}
 */