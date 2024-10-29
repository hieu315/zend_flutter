import 'package:flutter/material.dart';

class B04Bt05 extends StatelessWidget {
  const B04Bt05({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: RichText(
          text: const TextSpan(
            children: [
              TextSpan(
                  text: 'Hello, ',
                  style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0), fontSize: 20)),
              TextSpan(
                text: 'ZendVN',
                style: TextStyle(color: Colors.blue, fontSize: 30),
              ),
            ],
          ),
        ),
        actions: [
          Container(
            width: 50,
            height: 50,
            margin: const EdgeInsets.only(right: 20),
            decoration:
                const BoxDecoration(color: Colors.blue, shape: BoxShape.circle),
          )
        ],
      ),
      body: Column(
        children: [
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: SizedBox(
              height: 100,
              width: double.infinity,
              child: AspectRatio(
                aspectRatio: 1 / 1,
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return AspectRatio(
                        aspectRatio: 1 / 1,
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
            ),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: Container(
              color: const Color.fromARGB(255, 243, 236, 236),
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  const SizedBox(
                    height: 25,
                  ),
                  const Row(
                    children: [
                      Text("List of article"),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Expanded(
                    child: ListView.separated(
                        itemBuilder: (context, index) {
                          return Row(
                            children: [
                              const Text("8:00 AM"),
                              const SizedBox(width: 10),
                              Expanded(
                                child: Container(
                                  height: 50,
                                  decoration: const BoxDecoration(
                                    color: Colors.blue,
                                  ),
                                ),
                              ),
                            ],
                          );
                        },
                        separatorBuilder: (context, index) {
                          return const SizedBox(height: 10);
                        },
                        itemCount: 20),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
