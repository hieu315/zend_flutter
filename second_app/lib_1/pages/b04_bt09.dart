import 'package:flutter/material.dart';

class B04Bt09 extends StatelessWidget {
  const B04Bt09({super.key});

  final List<Map<String, dynamic>> donuts = const [
    {
      "title": "Chocolate",
      "image":
          "assets/images/fresh-tasty-donuts-with-chocolate-glaze-removebg-preview 1.png",
      "price": "\$5",
      "brand": "Dunkin's",
      "rating": 4.9
    },
    {
      "title": "Filled",
      "image":
          "assets/images/donut-isolated-with-clipping-path_75891-1135-removebg-preview 1.png",
      "price": "\$5",
      "brand": "Dunkin's",
      "rating": 4.9
    },
    {
      "title": "Careemy",
      "image": "assets/images/19038825-removebg-preview 1.png",
      "price": "\$5",
      "brand": "Dunkin's",
      "rating": 4.9
    },
    {
      "title": "Decadent",
      "image":
          "assets/images/donut-with-chocolate-isolated-with-clipping-path_75891-1134-removebg-preview 1 (1).png",
      "price": "\$5",
      "brand": "Dunkin's",
      "rating": 4.9
    },
    {
      "title": "Careemy",
      "image": "assets/images/19038825-removebg-preview 1.png",
      "price": "\$5",
      "brand": "Dunkin's",
      "rating": 4.9
    },
    {
      "title": "Decadent",
      "image":
          "assets/images/donut-with-chocolate-isolated-with-clipping-path_75891-1134-removebg-preview 1 (1).png",
      "price": "\$5",
      "brand": "Dunkin's",
      "rating": 4.9
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 20,
            crossAxisSpacing: 20,
            childAspectRatio: 0.7,
          ),
          itemCount: donuts.length,
          itemBuilder: (context, index) {
            final donut = donuts[index];

            return Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 8,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Stack(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 10),
                        width: double.infinity,
                        height: 120,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          image: DecorationImage(
                            image: AssetImage(donut["image"]),
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 0,
                        right: 0,
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 25),
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 255, 232, 227)
                                .withOpacity(0.9),
                            borderRadius: const BorderRadius.only(
                                bottomLeft: Radius.circular(20)),
                          ),
                          child: Text(
                            donut["price"],
                            style: const TextStyle(
                              color: Color(0xff564146),
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          donut["title"],
                          style: const TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          donut["brand"],
                          style: TextStyle(
                            color: Colors.grey[600],
                            fontSize: 12,
                          ),
                        ),
                        const SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Icon(
                              Icons.favorite_border,
                              color: Colors.black54,
                              size: 20,
                            ),
                            Row(
                              children: [
                                Text(
                                  donut["rating"].toString(),
                                  style: const TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
