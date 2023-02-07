import 'package:flutter/material.dart';
import 'package:pocket_morty/app/constants.dart';

class SettingsPage extends StatelessWidget {
  static const String navigationPath = '/settings';
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppStyle.appBarColor,

        title: Text('Settings'),
      ),
      body: Center(
        child: Text('todo'),
      ),
    );
  }
}
