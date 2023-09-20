// ignore_for_file: file_names
import 'package:consultas/pages/HomePage.dart';
import 'package:consultas/pages/ProfilePage.dart';
import 'package:consultas/pages/SchedulingPage.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';



class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int index = 0;
  final screens = [
    const HomePage(),
    const SchedulingPage(),
    const ProfilePage(),

  ];
  @override
  Widget build(BuildContext context) {
    final items = <Widget>[
      const Icon(
        Icons.home,
        size: 30,
      ),
      const Icon(
        Icons.view_agenda,
        size: 30,
      ),
      const Icon(
        Icons.person,
        size: 30,
      ),
    ];
    return Container(
      color: Colors.blue,
      child: SafeArea(
        top: false,
        child: Scaffold(
          extendBody: true,
          backgroundColor: Colors.greenAccent,
          body: screens[index],
          bottomNavigationBar: CurvedNavigationBar(
            backgroundColor: Colors.transparent,
            animationCurve: Curves.easeInOut,
            animationDuration: const Duration(milliseconds: 300),
            height: 60,
            items: items,
            index: index,
            onTap: (index) => setState(() {
              this.index = index;
            }),
          ),
        ),
      ),
    );
  }
}
