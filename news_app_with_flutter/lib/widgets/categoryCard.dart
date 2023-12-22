import 'package:flutter/material.dart';
import 'package:news_app_with_flutter/models/categoryModels.dart';

class Category_card extends StatelessWidget {
  const Category_card({super.key, required this.categoryMCard});
  final CategoryModels categoryMCard;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Container(
        width: 180,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
              image: AssetImage(categoryMCard.image), fit: BoxFit.fill),
        ),
        child: Center(
          child: Text(
            categoryMCard.nameCategory,
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Colors.white, fontSize: 30),
          ),
        ),
      ),
    );
  }
}
