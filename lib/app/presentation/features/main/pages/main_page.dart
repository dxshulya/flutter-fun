import 'package:flutter/material.dart';
import 'package:pocket_morty/app/presentation/features/main/models/tabs_source.dart';

class MainPage extends StatefulWidget {
  final TabsSource _tabsSource;
  static const String navigationPath = '/';

  const MainPage(
    this._tabsSource, {
    Key? key,
  }) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    if (_selectedIndex != index) {
      setState(() {
        _selectedIndex = index;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      resizeToAvoidBottomInset: false,
      body: Scaffold(body: widget._tabsSource.pageAt(_selectedIndex)),
      bottomNavigationBar: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          BottomNavigationBar(
            items: widget._tabsSource.tabs
                .map((t) => t.toBottomNavigationBarItem())
                .toList(),
            currentIndex: _selectedIndex,
            onTap: _onItemTapped,
          ),
        ],
      ),
    );
  }
}
