import 'package:doctor_appoinment/pages/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int selectedIndex = 0;

  final List pages = [
    HomeScreen(),
    Scaffold(),
    Scaffold(),
    Scaffold(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
          elevation: 0,
          backgroundColor: Colors.white,
          selectedItemColor: Colors.deepPurple,
          unselectedItemColor: Colors.grey,
          type: BottomNavigationBarType.fixed,
          currentIndex: selectedIndex,
          onTap: (value) {
           setState(() {
             selectedIndex = value;
           });
          },
          items: const [
        BottomNavigationBarItem(icon: Icon(Iconsax.home5), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Iconsax.message), label: "Message"),
        BottomNavigationBarItem(
            icon: Icon(Iconsax.calendar), label: "Schedule"),
        BottomNavigationBarItem(icon: Icon(Iconsax.setting), label: "Settings"),
      ]),
      body: pages[selectedIndex],
    );
  }
}
