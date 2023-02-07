import 'package:flutter/material.dart';
import 'package:pocket_morty/app/constants.dart';
import 'package:pocket_morty/app/presentation/features/characters/pages/characters_page.dart';
import 'package:pocket_morty/app/presentation/features/episodes/pages/episodes_page.dart';
import 'package:pocket_morty/app/presentation/features/favourites/pages/favourites_page.dart';
import 'package:pocket_morty/app/presentation/features/locations/pages/locations_pages.dart';
import 'package:pocket_morty/app/presentation/features/main/models/tab.dart';
import 'package:pocket_morty/app/presentation/features/main/models/tabs_source.dart';
import 'package:pocket_morty/app/presentation/features/main/pages/main_page.dart';
import 'package:pocket_morty/app/presentation/features/not_found/pages/not_found_page.dart';
import 'package:pocket_morty/app/presentation/features/settings/pages/settings_page.dart';

void main() {
  runApp(const MyApp());
}

class _BaseTabsSource implements TabsSource {
  const _BaseTabsSource(this._tabs);

  final List<NavigationTab> _tabs;

  @override
  int get count => _tabs.length;

  @override
  List<NavigationTab> get tabs => _tabs;

  @override
  Widget pageAt(int index) => _tabs.elementAt(index).page;
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const TabsSource _tabsSource = _BaseTabsSource(
    [
      NavigationTab(
        icon: AppStyle.charactersNavigationBarIcon,
        label: 'Characters',
        page: CharactersPage(),
      ),
      NavigationTab(
        icon: AppStyle.locationsNavigationBarIcon,
        label: 'Locations',
        page: LocationsPage(),
      ),
      NavigationTab(
        icon: AppStyle.episodesNavigationBarIcon,
        label: 'Episodes',
        page: EpisodesPage(),
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rick and Morty App',
      theme: ThemeData(
        useMaterial3: true,
        fontFamily: AppStyle.fontFamily,
        colorSchemeSeed: const Color.fromRGBO(220, 103, 23, 0),
      ),
      initialRoute: MainPage.navigationPath,
      onGenerateRoute: (RouteSettings settings) {
        if (settings.name == MainPage.navigationPath) {
          return MaterialPageRoute(
            builder: (context) {
              return const MainPage(_tabsSource);
            },
          );
        }

        if (settings.name == FavouritesPage.navigationPath) {
          return MaterialPageRoute(
            builder: (context) {
              return const FavouritesPage();
            },
          );
        }

        if (settings.name == SettingsPage.navigationPath) {
          return MaterialPageRoute(
            builder: (context) {
              return const SettingsPage();
            },
          );
        }

        return MaterialPageRoute(
          builder: (_) => const NotFoundPage(),
        );
      },
    );
  }
}
