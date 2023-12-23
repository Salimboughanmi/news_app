import 'package:flutter/material.dart';
import 'package:news_app_with_flutter/widgets/news_tile.dart';

class listViewsVertical extends StatelessWidget {
  const listViewsVertical({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics:
            BouncingScrollPhysics(), // quand nous aons scroller il y a un bouncing in the end of screen
        itemCount: 5,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.only(top: 8.0),
            child: NewsTile(),
          );
        });
  }
}
