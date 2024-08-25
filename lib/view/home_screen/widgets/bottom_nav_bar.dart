import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:machine_task_ui/view/chat_screen.dart';
import 'package:machine_task_ui/view/favorites_screen.dart';
import 'package:machine_task_ui/view/home_screen/home_screen.dart';
import 'package:machine_task_ui/view/mic_screen.dart';
import 'package:machine_task_ui/view/search_screen.dart';
import 'package:machine_task_ui/view/search_sreen/user_view.dart';



class BottomNavBarScreen extends StatefulWidget {
  const BottomNavBarScreen({super.key});

  @override
  State<BottomNavBarScreen> createState() => _BottomNavBarScreenState();
}

class _BottomNavBarScreenState extends State<BottomNavBarScreen> {
  int _selectedIndex = 2; 

  final List<Widget> _pages = [
    const MicScreen(),
    const ChatScreen(),
   HomeScreen(),
    const FavoritesScreen(),
    UserView()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: _pages[_selectedIndex],
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        color: Colors.black,
        items: const [
          Icon(Icons.mic_none_outlined, color: Color.fromARGB(255, 184, 184, 184)),
          Icon(Icons.chat_outlined, color: Color.fromARGB(255, 184, 184, 184)),
          Icon(Icons.home_filled, color: Colors.white),
          Icon(Icons.favorite_outline, color: Color.fromARGB(255, 184, 184, 184)),
          Icon(Icons.search_outlined, color:Color.fromARGB(255, 184, 184, 184)),
        ],
        onTap: _onItemTapped,
      ),
    );
  }
}