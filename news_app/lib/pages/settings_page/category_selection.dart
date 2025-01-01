import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:news_app/providers/setting_provider.dart';
import 'package:news_app/apps/routers/router_name.dart';

class CategorySelectionPage extends StatelessWidget {
  const CategorySelectionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          'Select Your Categories',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: FutureBuilder<List>(
          future: context.read<SettingProvider>().getAllCategories(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            }

            if (snapshot.hasError) {
              return Center(
                child: Text(
                  'Error: ${snapshot.error}',
                  style: const TextStyle(color: Colors.red),
                ),
              );
            }

            final categories = snapshot.data ?? [];

            if (categories.isEmpty) {
              return const Center(
                child: Text(
                  'No categories available.',
                  style: TextStyle(fontSize: 16),
                ),
              );
            }

            return Consumer<SettingProvider>(
              builder: (context, provider, child) {
                return Column(
                  children: [
                    Expanded(
                      child: ListView.builder(
                        itemCount: categories.length,
                        itemBuilder: (context, index) {
                          final category = categories[index];
                          final categoryId = category['id'];
                          final categoryName = category['name'];
                          final isSelected =
                              provider.listId.contains(categoryId);

                          return Card(
                            margin: const EdgeInsets.symmetric(
                                vertical: 8.0, horizontal: 4.0),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            child: ListTile(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              tileColor: isSelected
                                  ? Theme.of(context)
                                      .primaryColor
                                      .withOpacity(0.1)
                                  : Colors.white,
                              title: Text(
                                categoryName,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: isSelected
                                      ? Theme.of(context).primaryColor
                                      : Colors.black,
                                ),
                              ),
                              trailing: isSelected
                                  ? Icon(Icons.check,
                                      color: Theme.of(context).primaryColor)
                                  : null,
                              onTap: () {
                                provider.checkBox(categoryId);
                              },
                            ),
                          );
                        },
                      ),
                    ),
                    if (provider.listId.isNotEmpty)
                      FloatingActionButton.extended(
                        onPressed: () {
                          Navigator.pushReplacementNamed(
                              context, RouterName.homePage);
                        },
                        label: const Text(
                          'Continue',
                          style: TextStyle(fontSize: 16),
                        ),
                        icon: const Icon(Icons.arrow_forward),
                        backgroundColor: Theme.of(context).primaryColor,
                      ),
                  ],
                );
              },
            );
          },
        ),
      ),
    );
  }
}
