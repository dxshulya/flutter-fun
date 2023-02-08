import 'package:flutter/material.dart';
import 'package:pocket_morty/app/constants.dart';
import 'package:pocket_morty/app/presentation/features/characters/widgets/character_card.dart';

class CharactersPage extends StatelessWidget {
  const CharactersPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppStyle.appBarColor,
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.favorite),
            onPressed: () {
              Navigator.pushNamed(
                context,
                '/favourites',
              );
            },
          ),
          IconButton(
            icon: const Icon(Icons.sort),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              Navigator.pushNamed(
                context,
                '/settings',
              );
            },
          ),
        ],
        title: const Text(AppStyle.cTitle),
      ),
      body: ListView(
        children: const [
          CharacterCard(),
          CharacterCard(),
          CharacterCard(),
          CharacterCard(),
          CharacterCard(),
        ],
      ),
    );
  }
}
