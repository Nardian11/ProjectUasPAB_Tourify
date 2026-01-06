import 'package:flutter/material.dart';
import 'package:tourify/screens/discover_screen.dart';
import 'package:tourify/screens/favorite_screen.dart';
import 'package:tourify/screens/home_screen.dart';
import 'package:tourify/screens/profile_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    const HomeScreen(), //0
    const DiscoverScreen(), //1
    const FavoriteScreen(), //2
    const ProfileScreen(), //3
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true, 
      body: _screens[_selectedIndex],

      floatingActionButton: Container(
        height: 60,
        width: 60,
        margin: const EdgeInsets.only(top: 10),
        child: FloatingActionButton(
          onPressed: () {
            _onItemTapped(0); 
          },
          backgroundColor: Colors.white,
          elevation: 4, 
          shape: const CircleBorder(), 
          child: Padding(
            padding: const EdgeInsets.all(8.0), 
            child: ClipOval(
              child: Image.asset(
                'assets/images/logo.jpg', 
                fit: BoxFit.cover,
                width: 50,
                height: 50,
                errorBuilder: (context, error, stackTrace) {
                  return const Icon(Icons.airplanemode_active, color: Colors.black);
                },
              ),
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      bottomNavigationBar: Container(
        height: 70, 
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20), 
            topRight: Radius.circular(20),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.08), 
              blurRadius: 10,
              offset: const Offset(0, -3),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround, 
          children: [
            _buildNavItem(
              icon: Icons.home_filled, 
              index: 0
            ),
            
            _buildNavItem(
              icon: Icons.search, 
              index: 1
            ),

            const SizedBox(width: 50), 

            _buildNavItem(
              icon: Icons.favorite, 
              index: 2, 
              isFavoriteIcon: true 
            ),
            
            _buildNavItem(
              icon: Icons.person_outline, 
              index: 3
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildNavItem({required IconData icon, required int index, bool isFavoriteIcon = false}) {
    bool isSelected = _selectedIndex == index;
    
    Color iconColor;
    if (isSelected) {
      iconColor = isFavoriteIcon ? Colors.red : const Color(0xFF1E293B);
    } else {
      iconColor = Colors.grey.shade400; 
    }

    IconData displayIcon = icon;
    if (isFavoriteIcon) {
      displayIcon = isSelected ? Icons.favorite : Icons.favorite_border;
    }

    return IconButton(
      icon: Icon(displayIcon, color: iconColor, size: 26), 
      onPressed: () => _onItemTapped(index),
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
    );
  }
}