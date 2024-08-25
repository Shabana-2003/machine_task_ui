import 'package:flutter/material.dart';

class CustomHeading extends StatelessWidget {
  final String title;
  final String subtitle;
  final String imageUrl;

  const CustomHeading({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          // Title and Subtitle
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w200,color: Colors.grey,),
                ),
                const SizedBox(height: 4),
                Text(
                  subtitle,
                  style: TextStyle(fontSize: 16, color: const Color.fromARGB(255, 0, 0, 0),fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                width: 45,
                height: 45,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                    image: AssetImage(imageUrl),
                    fit: BoxFit.cover,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3), // Shadow color
                      spreadRadius: 1, // Spread radius
                      blurRadius: 6, // Blur radius
                      offset: Offset(0, 5), // Offset of the shadow
                    ),
                  ],
                ),
              ),
              // Green circle with white circle inside
              Positioned(
                top: -5,
                right: -5,
                child: Container(
                  width: 18,
                  height: 18,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: Container(
                      width: 10,
                      height: 10,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(width: 5,)
        ],
      ),
    );
  }
}

