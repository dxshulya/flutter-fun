import 'package:flutter/material.dart';
import 'package:pocket_morty/app/constants.dart';

class EpisodesPage extends StatelessWidget {
  const EpisodesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppStyle.appBarColor,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.sort),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {},
          ),
        ],

        title: Text('All episodes'),
      ),
      body: Center(
        child: Text('todo'),
      ),
    );
  }
}
