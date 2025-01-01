import 'package:flutter/material.dart';
import 'package:news_app/apps/routers/router_name.dart';
import 'package:news_app/pages/widgets/shimmer.dart';
import 'package:provider/provider.dart';
import 'package:news_app/providers/home_provider.dart';
import 'package:news_app/providers/setting_provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
              ),
              child: const Text(
                'News App',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Home'),
              onTap: () {
                Navigator.pushNamed(
                  context,
                  RouterName.homePage,
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.login),
              title: const Text('Login'),
              onTap: () {
                Navigator.pushNamed(
                  context,
                  RouterName.loginPage,
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Settings'),
              onTap: () {
                Navigator.pushNamed(
                  context,
                  RouterName.settingPage,
                );
              },
            ),
          ],
        ),
      ),
      body: Consumer<SettingProvider>(builder: (context, pro, _) {
        return FutureBuilder<Map<int, List>>(
          future: context
              .read<HomeProvider>()
              .fetchArticlesForCategories(pro.listId.cast()),
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
                              Navigator.pushNamed(
                                context,
                                RouterName.articlePage,
                                arguments: {
                                  'id': categoryId,
                                  'name': categoryName
                                },
                              );
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
        );
      }),
    );
  }
}
