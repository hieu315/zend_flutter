import 'package:dio/dio.dart';

class ArticlesRepo {
  static Future<List> getArticlesForCategory({
    required int categoryId,
    int limit = 4,
  }) async {
    final dio = Dio();
    final url =
        "https://apiforlearning.zendvn.com/api/categories_news/$categoryId/articles?offset=0&limit=$limit&sort_by=id&sort_dir=desc";
    try {
      final response = await dio.get(url);
      return response.data;
    } catch (e) {
      rethrow;
    }
  }
}
