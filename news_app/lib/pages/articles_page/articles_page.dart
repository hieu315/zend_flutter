import 'package:flutter/material.dart';
import 'package:news_app/providers/article_provider.dart';
import 'package:provider/provider.dart';
import '../widgets/shimmer.dart';

class ArticlesPage extends StatelessWidget {
  const ArticlesPage({super.key});

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)?.settings.arguments as Map?;
    final categoryId = arguments?['id'] ?? 1;
    final categoryName = arguments?['name'] ?? "Error";
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xffFFBA4B),
        title: Text(
          "$categoryName",
          style: const TextStyle(color: Colors.white),
        ),
      ),
      body: FutureBuilder(
        future: context
            .read<ArticlesProvider>()
            .fetchArticlesForCategory(categoryId),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) {
                return const ShimmerListItem();
              },
            );
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

              return ListTile(
                leading: Image.network(
                  article['thumb'],
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                  errorBuilder: (context, _, __) {
                    return const SizedBox(
                      width: 100,
                      height: 100,
                      child: Icon(Icons.image, color: Colors.grey),
                    );
                  },
                ),
                title: Text(
                  article['title'],
                  style: const TextStyle(color: Color(0xffFFBD4A)),
                ),
                subtitle: Text(
                  article['description'] ?? '',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              );
            },
          );
        },
      ),
    );
  }
}
