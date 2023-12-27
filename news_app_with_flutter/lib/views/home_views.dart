import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app_with_flutter/models/article_model.dart';
import 'package:news_app_with_flutter/models/categoryModels.dart';
import 'package:news_app_with_flutter/services/news_service.dart';
import 'package:news_app_with_flutter/views/listViewsVerical.dart';
import 'package:news_app_with_flutter/views/listviewHorizontal.dart';
import 'package:news_app_with_flutter/widgets/News_listViewBuilder.dart';

class HomeViews extends StatefulWidget {
  const HomeViews({super.key});

  @override
  State<HomeViews> createState() => _HomeViewsState();
}

class _HomeViewsState extends State<HomeViews> {
  List<CategoryModels> categoriesList = const [
    CategoryModels(
      nameCategory: "Sport",
      image: "assets/sportnews.webp",
    ),
    CategoryModels(
      nameCategory: "Health",
      image: "assets/health.avif",
    ),
    CategoryModels(
      nameCategory: "Science",
      image: "assets/science.avif",
    ),
    CategoryModels(
      nameCategory: "Thecnology",
      image: "assets/technology.jpeg",
    ),
    CategoryModels(
      nameCategory: "Entertaiment",
      image: "assets/entertaiment.avif",
    ),
    CategoryModels(
      nameCategory: "General",
      image: "assets/generalnews.png",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "News",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                " Cloud",
                style: TextStyle(color: Color.fromARGB(255, 240, 200, 80)),
              ),
              Text(' by salim boughanmi')
            ],
          ),
        ),
        body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: CustomScrollView(
              // scroll pour tout le ui (avec le vertical scroll) ,donc CustomScrollView additonner 2  list view
              physics:
                  const BouncingScrollPhysics(), // le scroll pour les deux , vertical + horizontal
              slivers: [
                SliverToBoxAdapter(
                  //le type de CustomScrollView additonner SliverToBoxAdapter
                  child: ListViewvHorizontal(Categories: categoriesList),
                ),
                const SliverToBoxAdapter(
                  child: SizedBox(
                    height: 13,
                  ),
                ),
                /*  const SliverToBoxAdapter(
/*                    child: Expanded (  // CustomScrollView n'accepte pas Expanded
 */
                  child: listViewsVertical(),
                ), */
                /* ), */
//autre exemple avec SliverList pour le scroll --> plus performance
// donc nous avons remplacer SliverToBoxAdapter de code precedent par Silver List
// il remplace ListView.builder de ListViewsVertical easyyy :)
//cette methode SliverList return les list de newstile de mm facons de .builder de list view
// je prendre cette methode SliverList et le replacer dans listview vertical dans la place de return ListView.builder
// je mis l'encien code dans un commaintaire ;)
                /* SliverList(
                  delegate: SliverChildBuilderDelegate(childCount: 2,
                      (context, index) {
                    return const NewsTile();
                  }),   
                ), */

                NewsListViewVerticalBuilder(),
              ],
            )));
  }
}
