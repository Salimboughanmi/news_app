import 'package:flutter/material.dart';

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
    );
  }
}
