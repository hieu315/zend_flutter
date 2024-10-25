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
      body: Column(
        children: [
          AspectRatio(
            aspectRatio: 2 / 1,
            child: Padding(
                padding: const EdgeInsets.all(20),
                child: Container(
                  color: Colors.blueGrey,
                )),
          )
        ],
      ),
    );
  }
}
