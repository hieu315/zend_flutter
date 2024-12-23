import 'dart:async';
import 'package:flutter/material.dart';
import 'package:news_app/repositories/article_repo.dart';

class HomeProvider with ChangeNotifier {
  Map<int, List> categoryArticles = {};
  final StreamController<Map<int, List>> _categoryStreamController =
      StreamController<Map<int, List>>.broadcast();

  // Public getter for stream
  Stream<Map<int, List>> get categoryStream => _categoryStreamController.stream;

  Future<void> fetchArticlesForCategories(List<int> categoryIds) async {
    // Clear previous articles if any
    categoryArticles.clear();

    for (int categoryId in categoryIds) {
      final articles = await ArticlesRepo.getArticlesForCategory(
        categoryId: categoryId,
        limit: 4,
      );
      categoryArticles[categoryId] = articles;
    }
    print('Fetched articles: $categoryArticles');

    _categoryStreamController
        .add(categoryArticles); // Emit updated data to the stream
  }

  @override
  void dispose() {
    _categoryStreamController.close();
    super.dispose();
  }
}
