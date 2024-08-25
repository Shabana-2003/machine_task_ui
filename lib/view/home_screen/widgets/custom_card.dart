import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subtitle;

  const CustomCard({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      margin: const EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            imageUrl,
            fit: BoxFit.cover,
            height: 120,
            width: double.infinity,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              subtitle,
              style: const TextStyle(
                fontSize: 14,
                color: Colors.grey,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class GridViewCards extends StatelessWidget {
  final List<Map<String, String>> cardData;

  const GridViewCards({super.key, required this.cardData});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
      ),
      itemCount: cardData.length,
      itemBuilder: (context, index) {
        final item = cardData[index];
        return CustomCard(
          imageUrl: item['imageUrl']!,
          title: item['title']!,
          subtitle: item['subtitle']!,
        );
      },
    );
  }
}
