/* import 'package:flutter/material.dart';
import 'package:news_app_with_flutter/widgets/news_tile.dart';

class listViewsVertical extends StatelessWidget {
  const listViewsVertical({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        // physics:BouncingScrollPhysics(),// quand nous aons scroller il y a un bouncing in the end of screen
        physics:
            NeverScrollableScrollPhysics(), //NeverScrollableScrollPhysics() ne fait pas un scroll
        itemCount: 5,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.only(top: 8.0),
            child: NewsTile(),
          );
        });
  }
} */

import 'package:flutter/material.dart';
import 'package:news_app_with_flutter/widgets/news_tile.dart';

class listViewsVertical extends StatelessWidget {
  const listViewsVertical({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(childCount: 2, (context, index) {
        return Padding(
          padding: EdgeInsets.only(bottom: 20),
          child: NewsTile(),
        );
      }),
    );
  }
}
