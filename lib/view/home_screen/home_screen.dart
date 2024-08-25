import 'package:flutter/material.dart';
import 'package:machine_task_ui/view/home_screen/widgets/cards/custom_gridview.dart';
import 'package:machine_task_ui/view/home_screen/widgets/cards/horizondal_card_list.dart';
import 'package:machine_task_ui/view/home_screen/widgets/custom_heading.dart';
import 'package:machine_task_ui/view/home_screen/widgets/custom_text.dart';
import 'package:machine_task_ui/view/home_screen/widgets/highlights_profiles.dart';
import 'package:machine_task_ui/view/home_screen/widgets/scrollable_cards.dart';
import 'package:machine_task_ui/view/home_screen/widgets/underline_text_widget.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

 

  final List<GridItem> gridItems = [
    GridItem(
      imageUrl: 'assets/images/game1.jpeg',
      title: 'Road Fight',
      subtitle: 'Shooting Cars',
    ),
    GridItem(
      imageUrl: 'assets/images/game3.jpeg',
      title: 'Vikings',
      subtitle: 'Sons of Ragnar',
    ),
    GridItem(
      imageUrl: 'assets/images/game2.jpeg',
      title: 'Vikings',
      subtitle: 'Power Games',
    ),
    GridItem(
      imageUrl: 'assets/images/game4.jpeg',
      title: 'Red Cars',
      subtitle: 'Fast Game',
    ),
  ];

  @override
  Widget build(BuildContext context) {
     final List<Map<String, String>> items = [
      {
        'imageUrl': 'assets/images/card3.png',
        'title': 'Jetpack Joi',
        'subtitle': 'Action Packed Game',
      },
      {
        'imageUrl': 'assets/images/card2.png',
        'title': 'X Fighter',
        'subtitle': 'Cartoon Game',
      },
      {
        'imageUrl': 'assets/images/card1.png',
        'title': 'Green',
        'subtitle': 'Green Full Game',
      },
      
    ];
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
          const  CustomHeading(
              title: 'Hi Nevil,',
              subtitle: 'Welcome Back!',
              imageUrl: 'assets/images/profile.jpeg',
            ),
           const SizedBox(height: 5),
           const HighlightsProfile(
              imageUrls: [
                'assets/images/profile1.jpeg',
                'assets/images/profile2.jpeg',
                'assets/images/profile3.jpeg',
                'assets/images/profile4.jpeg',
                'assets/images/profile5.jpeg',
                'assets/images/profile2.jpeg',
                'assets/images/profile3.jpeg',
                'assets/images/profile4.jpeg',
                'assets/images/profile2.jpeg',
                'assets/images/profile3.jpeg',
              ],
              titles: [
                'Invite',
                'Jane',
                'Annie',
                'John',
                'Gwana',
                'Sharon',
                'Nehyan',
                'Shaana',
                'Jose',
                'Rosa'
              ],
            ),
             SizedBox(height: 4,),
            Column(
              children: [
                const Row(
                  children: [
                    SizedBox(width: 20),
                    CustomText(
                        name: 'recently released ',
                        size: 10,
                        color: Colors.grey,
                        fontWeight: FontWeight.w200),
                  ],
                ),
                Row(
                  children: [
                    const SizedBox(width: 20),
                    const Align(
                        alignment: Alignment.topLeft,
                        child: CustomText(
                            name: 'Popular Games',
                            size: 15,
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontWeight: FontWeight.bold)),
                  const  SizedBox(
                      width: 160,
                    ),
                    UnderlinedTextButton(
                        text: 'View All',
                        fontSize: 10,
                        textColor: const Color.fromARGB(255, 118, 118, 118),
                        underlineColor: const Color.fromARGB(255, 140, 140, 140),
                        fontWeight: FontWeight.w200,
                        onPressed: () {})
                  ],
                ),
              ],
            ),
            SizedBox(height: 4,),
            HorizontalCardList(items: items),
            Row(
              children: [
                const SizedBox(width: 20),
                const Align(
                    alignment: Alignment.topLeft,
                    child: CustomText(
                        name: 'Recommended Games',
                        size: 15,
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontWeight: FontWeight.bold)),
                SizedBox(
                  width: 94,
                ),
                UnderlinedTextButton(
                    text: 'View All',
                    fontSize: 10,
                    textColor: const Color.fromARGB(255, 118, 118, 118),
                    underlineColor: const Color.fromARGB(255, 140, 140, 140),
                    fontWeight: FontWeight.w200,
                    onPressed: () {})
              ],
            ),
            SizedBox(height: 7,),
            Padding(
              padding: const EdgeInsets.only(left: 10,right: 10),
              child: CustomGridView(items: gridItems),
            ),
          ],
        ),
      ),
    );
  }
}
