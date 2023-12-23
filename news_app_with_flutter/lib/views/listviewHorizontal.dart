import 'package:flutter/material.dart';
import 'package:news_app_with_flutter/models/categoryModels.dart';
import 'package:news_app_with_flutter/widgets/categoryCard.dart';

class ListViewvHorizontal extends StatelessWidget {
  const ListViewvHorizontal({
    super.key,
    required this.Categories,
  });

  final List<CategoryModels> Categories;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      child: ListView.builder(
        itemBuilder: (context, index) {
          return Category_card(
            categoryMCard: Categories[index],
          );
        },
        itemCount: Categories.length,
        scrollDirection: Axis.horizontal,
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