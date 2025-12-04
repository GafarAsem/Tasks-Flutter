import 'package:flutter/material.dart';
import 'home_page.dart';
import 'search_page.dart';
import 'settings_page.dart';
import 'profile_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bottom Navigation Bar',
      theme: ThemeData(primaryColor: Colors.blue),
      home: const MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;
  final List<Widget> _pages = [
    const HomePage(),
    const SearchPage(),
    const SettingsPage(),
    const ProfilePage(),
  ];
  String getTitle(int index) {
    switch (index) {
      case 0:
        return 'الرئيسية';
      case 1:
        return 'البحث';
      case 2:
        return 'الإعدادات';
      case 3:
        return 'الحساب';
      default:
        return '';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(getTitle(_currentIndex))),
      body: IndexedStack(index: _currentIndex, children: _pages),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.blue),
            label: 'الرئيسية',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search, color: Colors.blue),
            label: 'البحث',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings, color: Colors.blue),
            label: 'الإعدادات',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, color: Colors.blue),
            label: 'الحساب',
          ),
        ],
      ),
    );
  }
}
