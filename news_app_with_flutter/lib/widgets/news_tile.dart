import 'package:flutter/material.dart';
import 'package:news_app_with_flutter/models/article_model.dart';

// cached network image
class NewsTile extends StatelessWidget {
  const NewsTile({super.key, required this.articleModels});

  final ArticleModel articleModels;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ClipRRect(
            // donner des feature pour image
            borderRadius: BorderRadius.circular(6),
            child: Image.network(
              articleModels.image ?? '',
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            )),
        const SizedBox(
          height: 12,
        ),
        Text(
          articleModels.title,
          maxLines: 2,
          overflow: TextOverflow
              .ellipsis, // si n'est pas espace pour image faire trois pts avec ellipsis
          style: const TextStyle(
            color: Colors.black87,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          articleModels.subTitle ?? '',
          maxLines: 2,
          style: const TextStyle(color: Colors.grey, fontSize: 14),
        )
      ],
    );
  }
}
