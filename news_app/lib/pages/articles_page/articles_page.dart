import 'package:flutter/material.dart';
import 'package:news_app/providers/article_provider.dart';
import 'package:provider/provider.dart';

class ArticlesPage extends StatelessWidget {
  const ArticlesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Articles"),
      ),
      body: FutureBuilder(
        future: context.read<ArticlesProvider>().fetchArticlesForCategory(1),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }
          if (snapshot.hasError) {
            return Center(child: Text("Error: ${snapshot.error}"));
          }
          if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(child: Text("No articles available."));
          }

          final articles = snapshot.data as List;

          return ListView.builder(
            itemCount: articles.length,
            itemBuilder: (context, index) {
              final article = articles[index];
              return Consumer<ArticlesProvider>(
                builder: (context, provider, child) {
                  return ListTile(
                      leading: Image.network(
                        article['thumb'],
                        width: 100,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                      title: Text(
                        article['title'],
                        style: const TextStyle(color: Color(0xffFFBD4A)),
                      ),
                      subtitle: Text(
                        article['description'] ?? '',
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ));
                },
              );
            },
          );
        },
      ),
    );
  }
}
