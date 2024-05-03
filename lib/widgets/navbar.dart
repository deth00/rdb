import 'package:flutter/material.dart';
import 'package:rdb_gro_app/utils/app_colors.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _sectectIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 10, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = [
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
    Text(
      'Index 3: other',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _sectectIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'ບັນຊີ'),
        BottomNavigationBarItem(icon: Icon(Icons.business), label: 'ແຈ້ງການ'),
        BottomNavigationBarItem(icon: Icon(Icons.school), label: 'ຕັ້ງຄ່າ'),
        BottomNavigationBarItem(icon: Icon(Icons.school), label: 'ບໍລີການ'),
      ],
      currentIndex: _sectectIndex,
      selectedItemColor: Colors.black,
      backgroundColor: AppColors.bgColor,
      onTap: _onItemTapped,
    );
  }
}
