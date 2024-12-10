import 'package:flutter/material.dart';
import 'package:news_app/repositories/categories_repo.dart';

class SettingProvider with ChangeNotifier {
  List listData = [];
  List listId = [];

  void checkBox(int id) {
    if (listId.contains(id)) {
      listId.remove(id);
    } else {
      listId.add(id);
    }
    print(listId);
    notifyListeners();
  }

  Future<List> getAllCategories() async {
    listData = await CategoriesRepo.getAllCategories();
    return listData;
  }
}
