import 'package:flutter/material.dart';

class B04Bt07 extends StatefulWidget {
  const B04Bt07({super.key});

  @override
  State<B04Bt07> createState() => _B04Bt07State();
}

class _B04Bt07State extends State<B04Bt07> {
  Color containerColor = Colors.amber;
  void _changeContainerColor() {
    setState(() {
      containerColor =
          containerColor == Colors.amber ? Colors.blue : Colors.amber;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Training",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Vel et voluptatibus.'),
                  Row(
                    children: [
                      Text('Detail', style: TextStyle(color: Colors.grey)),
                      Icon(Icons.arrow_forward, size: 16, color: Colors.grey),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Container(
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 241, 178, 83),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: SizedBox(
                    height: 150,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'debitis-ipsa-ut',
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                        const SizedBox(height: 8),
                        const Text(
                          'Lure est quibusdam rem fugiat modi et magnam hic suscipit.',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                        const Spacer(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Row(
                              children: [
                                Icon(Icons.account_circle, color: Colors.white),
                                SizedBox(width: 8),
                                Text('ZendVn',
                                    style: TextStyle(color: Colors.white)),
                              ],
                            ),
                            IconButton(
                              icon: const Icon(Icons.settings,
                                  color: Colors.white),
                              onPressed:
                                  _changeContainerColor, // Change color on press
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                height: 100,
                decoration: BoxDecoration(
                    color: containerColor,
                    borderRadius: BorderRadius.circular(20)),
              ),
              const Text('Quia voluptatem culpa'),
              const SizedBox(height: 10),
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 15,
                    crossAxisSpacing: 15),
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          blurRadius: 10,
                          offset: const Offset(0, 1),
                          spreadRadius: 2,
                          blurStyle: BlurStyle.outer,
                        ),
                      ],
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 35,
                          width: 35,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: Colors.amber),
                        ),
                        const SizedBox(
                          width: double.infinity,
                          child: Text(
                              textAlign: TextAlign.center,
                              "Assumenda vilit voluptates exercitationem animi omnis expedita."),
                        )
                      ],
                    ),
                  );
                },
                itemCount: 10,
              )
            ],
          ),
        ),
      ),
    );
  }
}
