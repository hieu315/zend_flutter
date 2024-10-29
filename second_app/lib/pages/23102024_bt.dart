import 'package:flutter/material.dart';

class Bt2310 extends StatelessWidget {
  const Bt2310({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "ZendVN",
              style: TextStyle(color: Colors.blue),
            ),
            Text("Study Flutter"),
          ],
        ),
        actions: const [Icon(Icons.menu), SizedBox(width: 20)],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 2 / 1,
              child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.blueGrey),
                  )),
            ),
            Container(
              color: const Color.fromARGB(255, 243, 236, 236),
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  const SizedBox(
                    height: 25,
                  ),
                  const Row(
                    children: [
                      Expanded(child: Text("Categories")),
                      Text("More..."),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  AspectRatio(
                    aspectRatio: 2 / 1,
                    child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return AspectRatio(
                            aspectRatio: 1 / 2,
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(15)),
                            ),
                          );
                        },
                        separatorBuilder: (context, index) {
                          return const SizedBox(width: 10);
                        },
                        itemCount: 10),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  const Row(
                    children: [
                      Expanded(child: Text("News")),
                      Text("More..."),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  AspectRatio(
                    aspectRatio: 2 / 1,
                    child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return AspectRatio(
                            aspectRatio: 1 / 2,
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(15)),
                            ),
                          );
                        },
                        separatorBuilder: (context, index) {
                          return const SizedBox(width: 10);
                        },
                        itemCount: 10),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
