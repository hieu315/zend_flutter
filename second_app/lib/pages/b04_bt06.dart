import 'package:flutter/material.dart';

class B04Bt06 extends StatelessWidget {
  const B04Bt06({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const RotatedBox(
                  quarterTurns: -1,
                  child: SizedBox(
                    height: 100,
                    child: Center(
                      child: Text(
                        'Welcome ZendVN',
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Container(
                    height: 350,
                    decoration: const BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(50),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Iste autem atque ea ratione ut ex omnis non.',
                    style: TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 16),
                  Container(
                    height: 40,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'Consequuntur qui ea dolores voluptas pariatur. Aperiam natus soluta eum nam.',
                    style: TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Iure aut qui et. Ipsa animi voluptas distinctio officiis eum exercitationem suscipit reiciendis. Quisquam deserunt rerum sapiente. Et porro officiis consequuntur hic aliquam. Molestiae aut qui quia voluptatem. Voluptates placeat distinctio sunt aut.',
                    style: TextStyle(fontSize: 14, color: Colors.grey[700]),
                  ),
                  const SizedBox(height: 24),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      Text('Aut aut debitis'),
                      Text('Aut aut debitis'),
                      SizedBox(
                        width: 20,
                      ),
                    ],
                  ),
                  const SizedBox(height: 24),
                  Container(
                    height: 120,
                    decoration: const BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(60),
                          bottomLeft: Radius.circular(60)),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
