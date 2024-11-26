import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  String selectedSize = 'S';
  List<Map<String, dynamic>> chocolateOptions = [
    {'label': 'White Chocolate', 'selected': true},
    {'label': 'Milk Chocolate', 'selected': false},
    {'label': 'Dark Chocolate', 'selected': false},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: const Icon(Icons.arrow_back_ios),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.favorite),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.vertical(
                      top: Radius.circular(30), bottom: Radius.circular(30)),
                  child: Image.asset(
                    'assets/images/Rectangle 19.png',
                    fit: BoxFit.cover,
                    height: 310,
                    width: double.infinity,
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.vertical(
                          top: Radius.circular(30),
                          bottom: Radius.circular(30)),
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          const Color.fromRGBO(84, 63, 46, 0.75),
                          const Color.fromRGBO(84, 63, 46, 0).withOpacity(0.8),
                        ],
                      ),
                    ),
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      child: const Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Espresso',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                  ),
                                ),
                                Text(
                                  'with Chocolate',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 10,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Row(
                            children: [
                              Column(
                                children: [
                                  Icon(
                                    Icons.coffee,
                                    color: Color(0xff967259),
                                  ),
                                  Text(
                                    'Coffee',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Column(
                                children: [
                                  Icon(
                                    Icons.water_drop_rounded,
                                    color: Color(0xff967259),
                                  ),
                                  Text(
                                    'Chocolate',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Description',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Coffee is a beloved beverage enjoyed by millions worldwide for its rich flavor, invigorating aroma, and stimulating properties.',
                    style: TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'Choice of Chocolate',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  SizedBox(
                    height: 50,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: chocolateOptions.length,
                      itemBuilder: (context, index) {
                        final option = chocolateOptions[index];
                        return Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: ChoiceChip(
                            label: Text(
                              option['label'],
                              style: TextStyle(
                                color: option['selected']
                                    ? Colors.white
                                    : Colors.brown,
                              ),
                            ),
                            selected: option['selected'],
                            selectedColor: Colors.brown,
                            backgroundColor: const Color(0xFFEFEFEF),
                            onSelected: (bool selected) {
                              chocolateOptions =
                                  chocolateOptions.map((chocolate) {
                                return {
                                  'label': chocolate['label'],
                                  'selected':
                                      chocolate == option ? selected : false,
                                };
                              }).toList();
                              setState(() {});
                            },
                          ),
                        );
                      },
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'Size',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      ChoiceChip(
                        label: const Text('S'),
                        selected: selectedSize == 'S',
                        selectedColor: Colors.brown,
                        backgroundColor: const Color(0xFFEFEFEF),
                        labelStyle: TextStyle(
                          color:
                              selectedSize == 'S' ? Colors.white : Colors.brown,
                        ),
                        onSelected: (bool selected) {
                          if (selected) {
                            setState(() {
                              selectedSize = 'S';
                            });
                          }
                        },
                      ),
                      const SizedBox(width: 8),
                      ChoiceChip(
                        label: const Text('M'),
                        selected: selectedSize == 'M',
                        selectedColor: Colors.brown,
                        backgroundColor: const Color(0xFFEFEFEF),
                        labelStyle: TextStyle(
                          color:
                              selectedSize == 'M' ? Colors.white : Colors.brown,
                        ),
                        onSelected: (bool selected) {
                          if (selected) {
                            setState(() {
                              selectedSize = 'M';
                            });
                          }
                        },
                      ),
                      const SizedBox(width: 8),
                      ChoiceChip(
                        label: const Text('L'),
                        selected: selectedSize == 'L',
                        selectedColor: Colors.brown,
                        backgroundColor: const Color(0xFFEFEFEF),
                        labelStyle: TextStyle(
                          color:
                              selectedSize == 'L' ? Colors.white : Colors.brown,
                        ),
                        onSelected: (bool selected) {
                          if (selected) {
                            setState(() {
                              selectedSize = 'L';
                            });
                          }
                        },
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        '\$4.20',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.brown,
                          padding: const EdgeInsets.symmetric(
                              vertical: 12, horizontal: 24),
                          textStyle: const TextStyle(
                              fontSize: 18, color: Colors.white),
                        ),
                        child: const Text(
                          'Buy Now',
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                      ),
                    ],
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
