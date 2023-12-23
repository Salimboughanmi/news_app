import 'package:flutter/material.dart';
import 'package:news_app_with_flutter/models/categoryModels.dart';
import 'package:news_app_with_flutter/views/listViewsVerical.dart';
import 'package:news_app_with_flutter/views/listviewHorizontal.dart';
import 'package:news_app_with_flutter/widgets/news_tile.dart';

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
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: ListViewvHorizontal(Categories: categoriesList),
                ),
                SliverToBoxAdapter(
                  child: SizedBox(
                    height: 13,
                  ),
                ),
                SliverToBoxAdapter(
                  child: Expanded(
                    child: listViewsVertical(),
                  ),
                ),
              ],
            )
            /* Column(
            children: [
              ListViewvHorizontal(Categories: categoriesList),
              SizedBox(
                height: 13,
              ),
              const Expanded(child: listViewsVertical()),
            ],
          ), */
            ));
  }
}
