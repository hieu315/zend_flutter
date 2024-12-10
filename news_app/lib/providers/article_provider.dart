import 'package:flutter/material.dart';
import 'package:news_app/repositories/article_repo.dart';

class ArticlesProvider with ChangeNotifier {
  List articles = [];

  Future<List> fetchArticlesForCategory(int categoryId) async {
    articles = await ArticlesRepo.getArticlesForCategory(
      categoryId: categoryId,
      limit: 4,
    );
    return articles;
  }
}
