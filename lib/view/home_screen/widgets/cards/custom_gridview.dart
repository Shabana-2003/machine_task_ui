import 'package:flutter/material.dart';

class CustomGridView extends StatelessWidget {
  final List<GridItem> items;

  const CustomGridView({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 8.0,
        mainAxisSpacing: 8.0,
        childAspectRatio: 1.0,
      ),
      itemCount: items.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(10.0),
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(items[index].imageUrl),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
              Positioned(
                top: 9,
                left: 10,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      items[index].title,
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 14.0,
                      ),
                    ),
                    Text(
                      items[index].subtitle,
                      style: const TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontSize: 10.0,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class GridItem {
  final String imageUrl;
  final String title;
  final String subtitle;

  GridItem(
      {required this.imageUrl, required this.title, required this.subtitle});
}
