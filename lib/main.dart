import 'package:flutter/material.dart';
import 'package:project_flutter/views/home.dart';
import 'package:project_flutter/views/search.dart';
import 'package:project_flutter/widgets/botton_navigation_bar.dart';

void main() => runApp(const NavigationBarApp());

class NavigationBarApp extends StatelessWidget {
  const NavigationBarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Colors.black,
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
            backgroundColor: Colors.black,
            selectedItemColor: Colors.green,
            unselectedItemColor: Colors.white),
      ),
      home: const NavigationExample(),
    );
  }
}

class NavigationExample extends StatefulWidget {
  const NavigationExample({super.key});

  @override
  State<NavigationExample> createState() => _NavigationExampleState();
}

class _NavigationExampleState extends State<NavigationExample> {
  int currentPageIndex = 0;

  // Vistas disponibles: Home y Buscar (Search)
  final List<Widget> _pages = const [
    HomeView(),
    NotificationsView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBarWidget(
        currentPageIndex: currentPageIndex,
        onTabSelected: (index) => setState(() => currentPageIndex = index),
      ),
      body: _pages[currentPageIndex],
    );
  }
}
