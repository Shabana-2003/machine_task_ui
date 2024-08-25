import 'package:flutter/material.dart';

class HighlightsProfile extends StatelessWidget {
  final List<String> imageUrls; // List of image asset paths
  final List<String> titles; // List of titles for each image

  const HighlightsProfile({
    Key? key,
    required this.imageUrls,
    required this.titles,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100, // Height of the scrollable area
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: imageUrls.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Container(
                    width: 59,
                    height: 59,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: index == 0
                            ? Colors.transparent
                            : ((index == 2 || index == 6)
                                ? const Color.fromARGB(255, 18, 159, 65)
                                : const Color.fromARGB(255, 171, 171, 171)), // Outline color for all but the first
                        width: 3,
                      ),
                      image: DecorationImage(
                        image: AssetImage(imageUrls[index]),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  titles[index],
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: index == 0 ? FontWeight.w500: FontWeight.normal,
                    color: index == 0 ? Colors.black : const Color.fromARGB(255, 160, 160, 160),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
