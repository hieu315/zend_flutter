import 'package:dio/dio.dart';

class CategoriesRepo {
  static Future<List> getAllCategories() async {
    final dio = Dio();
    try {
      final response = await dio
          .get("https://apiforlearning.zendvn.com/api/categories_news");
      List data = response.data;
      print(data);
      return data;
    } catch (e) {
      rethrow;
    }
  }
}
