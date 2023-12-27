import 'package:flutter/material.dart';
import 'package:news_app_with_flutter/views/home_views.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeViews(),
    );
  }
}
