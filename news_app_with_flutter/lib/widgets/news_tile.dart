import 'package:flutter/material.dart';

// cached network image
class NewsTile extends StatelessWidget {
  const NewsTile({
    super.key,
    /*  required this.articleModel */
  });

  //final ArticleModel articleModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ClipRRect(
            // donner des feature pour image
            borderRadius: BorderRadius.circular(6),
            child: Image.network(
              "https://as2.ftcdn.net/v2/jpg/03/58/64/81/1000_F_358648159_g5EiHqpnkipQJCXBTTzZlFiymLpMlYDH.jpg",
              //articleModel.image!,
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            )),
        const SizedBox(
          height: 12,
        ),
        Text(
          "hahahahahahhahahahahahahhahahahahahah",
          //articleModel.title,
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
          "0dsdsqdqfdqfdsqfsdfsdf",
          //articleModel.subTitle ?? '',
          maxLines: 2,
          style: const TextStyle(color: Colors.grey, fontSize: 14),
        )
      ],
    );
  }
}
