import 'package:flutter/material.dart';
import 'package:news_app_with_flutter/widgets/categoryCard.dart';

class HomeViews extends StatefulWidget {
  const HomeViews({super.key});

  @override
  State<HomeViews> createState() => _HomeViewsState();
}

class _HomeViewsState extends State<HomeViews> {
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
        child: ListView(
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
          ],
        ),
      ),
    );
  }
}
