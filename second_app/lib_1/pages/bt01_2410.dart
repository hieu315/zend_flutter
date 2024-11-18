import 'package:flutter/material.dart';

class Bt012410 extends StatefulWidget {
  const Bt012410({super.key});

  @override
  State<Bt012410> createState() => _Bt012410State();
}

class _Bt012410State extends State<Bt012410> {
  var color = [Colors.amber, Colors.blue, Colors.deepOrange, Colors.yellow];
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(width: double.infinity, height: 200, color: color[index]),
            ElevatedButton(
                onPressed: () {
                  index += 1;
                  if (index >= color.length) {
                    index = 0;
                  }
                  setState(() {});
                },
                child: const Text("Click"))
          ],
        ),
      ),
    );
  }
}
