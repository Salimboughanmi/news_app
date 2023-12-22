import 'package:flutter/material.dart';
import 'package:news_app_with_flutter/models/categoryModels.dart';
import 'package:news_app_with_flutter/widgets/categoryCard.dart';

class HomeViews extends StatefulWidget {
  const HomeViews({super.key});

  @override
  State<HomeViews> createState() => _HomeViewsState();
}

class _HomeViewsState extends State<HomeViews> {
  List<CategoryModels> categories = const [
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
      body: Container(
        height: 200,
        child: ListView.builder(
          itemBuilder: (context, index) {
            return Category_card(
              categoryMCard: categories[index],
            );
          },
          itemCount: categories.length,
          scrollDirection: Axis.horizontal,
        ),
      ),
    );
  }
}
/*  ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Category_card(
              text: "Sport",
              image: "assets/sportnews.webp",
            ),
            Category_card(
              text: "Health",
              image: "assets/health.avif",
            ),
            Category_card(
              text: "Science",
              image: "assets/science.avif",
            ),
            Category_card(
              text: "Thecnology",
              image: "assets/technology.jpeg",
            ),
            Category_card(
              text: "Entertaiment",
              image: "assets/entertaiment.avif",
            ),
            Category_card(
              text: "General",
              image: "assets/generalnews.png",
            ),
          ],
        ), */