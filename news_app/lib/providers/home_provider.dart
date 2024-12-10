import 'package:flutter/material.dart';
import 'package:news_app/repositories/categories_repo.dart';
import 'package:news_app/repositories/article_repo.dart';

class HomeProvider with ChangeNotifier {
  List categories = [];
  Map<int, List> categoryArticles = {};

  Future<void> fetchCategoriesAndArticles() async {
    categories = await CategoriesRepo.getAllCategories();

    for (var category in categories) {
      int categoryId = category['id'];
      categoryArticles[categoryId] = await ArticlesRepo.getArticlesForCategory(
        categoryId: categoryId,
        limit: 4,
      );
    }
    notifyListeners();
  }
}
