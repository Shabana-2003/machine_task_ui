import 'package:flutter/material.dart';

class SlidableCards extends StatelessWidget {
  final String assetImagePath;
  final String title;
  final String subtitle;

  const SlidableCards({
    Key? key,
    required this.assetImagePath,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 150,
      child: Stack(
        children: [
         
          ClipRRect(
            borderRadius: BorderRadius.circular(30.0),
            child: Image.asset(
              assetImagePath,
              height: double.infinity,
              width: double.infinity,
              fit: BoxFit.cover, // Ensures the image covers the entire container
            ),
          ),
          // Text at the bottom of the image
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center, // Aligns text to the bottom
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 255, 255, 255), // White color to contrast with the image
                  ),
                ),
                const SizedBox(height: 4.0),
                Text(
                  subtitle,
                  style: const TextStyle(
                    fontSize: 10.0,
                    color: Color.fromARGB(179, 255, 255, 255), // Slightly dimmed white for the subtitle
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
