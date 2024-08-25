 import 'package:flutter/material.dart';
  import 'package:machine_task_ui/view/home_screen/widgets/scrollable_cards.dart';

class HorizontalCardList extends StatelessWidget {
  final List<Map<String, String>> items;

  const HorizontalCardList({
    super.key,
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200, 
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: SlidableCards(
              assetImagePath: item['imageUrl']!,
              title: item['title']!,
              subtitle: item['subtitle']!,
            ),
          );
        },
      ),
    );
  }
}
