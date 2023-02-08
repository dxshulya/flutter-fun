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
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SafeArea(
              child: Stack(
                children: [
                  Positioned.fill(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                              const BorderRadius.all(Radius.circular(16)),
                              border: Border.all(
                                width: 1.0,
                                color: Theme.of(context)
                                    .primaryColor
                                    .withOpacity(0.1),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  BottomNavigationBar(
                    elevation: 0,
                    backgroundColor: Colors.transparent,
                    items: widget._tabsSource.tabs
                        .map((t) => t.toBottomNavigationBarItem())
                        .toList(),
                    currentIndex: _selectedIndex,
                    onTap: _onItemTapped,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}