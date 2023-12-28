import 'package:flutter/material.dart';
import 'package:news_app_with_flutter/widgets/News_listViewBuilder.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key, required this.categ});
  final String categ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: CustomScrollView(
          slivers: [
            NewsListViewVerticalBuilder(
              category: categ,
            )
          ],
        ),
      ),
    );
  }
}
