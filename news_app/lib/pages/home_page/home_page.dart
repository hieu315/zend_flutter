import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:news_app/providers/home_provider.dart';
import 'package:news_app/providers/setting_provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final selectedCategoryIds =
        context.watch<SettingProvider>().listId.cast<int>();

    // Only call fetchArticlesForCategories if it's not already done
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context
          .read<HomeProvider>()
          .fetchArticlesForCategories(selectedCategoryIds);
    });
    print(selectedCategoryIds);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: StreamBuilder<Map<int, List>>(
        stream: context.watch<HomeProvider>().categoryStream,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }

          if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          }

          final categoryArticles = snapshot.data ?? {};

          if (categoryArticles.isEmpty) {
            return const Center(child: Text("No articles available."));
          }

          return ListView.builder(
            itemCount: categoryArticles.keys.length,
            itemBuilder: (context, index) {
              final categoryId = categoryArticles.keys.elementAt(index);
              final articles = categoryArticles[categoryId] ?? [];
              final category =
                  articles.isNotEmpty ? articles[0]['category'] : {};
              final categoryName = category['name'] ?? 'Unknown Category';

              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          categoryName,
                          style: const TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        TextButton(
                          onPressed: () {
                            // Navigate to "View All" page
                          },
                          child: const Text("View All"),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 250,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: articles.length,
                      itemBuilder: (context, articleIndex) {
                        final article = articles[articleIndex];

                        return SizedBox(
                          width: 200,
                          child: Card(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.network(
                                  article['thumb'],
                                  height: 120,
                                  width: 200,
                                  fit: BoxFit.cover,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    article['title'],
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8.0),
                                  child: Text(
                                    article['publish_date'],
                                    style: const TextStyle(
                                        fontSize: 12, color: Colors.grey),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              );
            },
          );
        },
      ),
    );
  }
}
